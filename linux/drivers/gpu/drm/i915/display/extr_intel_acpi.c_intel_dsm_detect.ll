; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_acpi.c_intel_dsm_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_acpi.c_intel_dsm_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8* }
%struct.pci_dev = type { i32 }

@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@ACPI_FULL_PATHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"vga_switcheroo: detected DSM switching method %s handle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_dsm_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dsm_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [255 x i8], align 16
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %7 = bitcast [255 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 255, i1 false)
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  store i32 255, i32* %8, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  %10 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  store i8* %10, i8** %9, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %27, %0
  %12 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %13 = shl i32 %12, 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = call %struct.pci_dev* @pci_get_class(i32 %13, %struct.pci_dev* %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = icmp ne %struct.pci_dev* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i64 @intel_dsm_pci_probe(%struct.pci_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = inttoptr i64 %21 to i32*
  br label %27

25:                                               ; preds = %17
  %26 = load i32*, i32** %2, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32* [ %24, %23 ], [ %26, %25 ]
  store i32* %28, i32** %2, align 8
  br label %11

29:                                               ; preds = %11
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32*, i32** %2, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @ACPI_FULL_PATHNAME, align 4
  %38 = call i32 @acpi_get_name(i32* %36, i32 %37, %struct.acpi_buffer* %4)
  %39 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %40 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 1, i32* %1, align 4
  br label %42

41:                                               ; preds = %32, %29
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pci_dev* @pci_get_class(i32, %struct.pci_dev*) #2

declare dso_local i64 @intel_dsm_pci_probe(%struct.pci_dev*) #2

declare dso_local i32 @acpi_get_name(i32*, i32, %struct.acpi_buffer*) #2

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
