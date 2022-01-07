; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atpx_handler.c_radeon_atpx_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atpx_handler.c_radeon_atpx_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_buffer = type { i32, i8* }
%struct.pci_dev = type { i64 }

@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@PCI_CLASS_DISPLAY_OTHER = common dso_local global i32 0, align 4
@radeon_atpx_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ACPI_FULL_PATHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"vga_switcheroo: detected switching method %s handle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @radeon_atpx_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atpx_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [255 x i8], align 16
  %3 = alloca %struct.acpi_buffer, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = bitcast [255 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 255, i1 false)
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 0
  store i32 255, i32* %10, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 1
  %12 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  store i8* %12, i8** %11, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %37, %0
  %14 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %15 = shl i32 %14, 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call %struct.pci_dev* @pci_get_class(i32 %15, %struct.pci_dev* %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %4, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @radeon_atpx_pci_probe_handle(%struct.pci_dev* %22)
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %28)
  store %struct.pci_dev* %29, %struct.pci_dev** %8, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = icmp ne %struct.pci_dev* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %19
  %38 = phi i1 [ false, %19 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %13

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %67, %42
  %44 = load i32, i32* @PCI_CLASS_DISPLAY_OTHER, align 4
  %45 = shl i32 %44, 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call %struct.pci_dev* @pci_get_class(i32 %45, %struct.pci_dev* %46)
  store %struct.pci_dev* %47, %struct.pci_dev** %4, align 8
  %48 = icmp ne %struct.pci_dev* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @radeon_atpx_pci_probe_handle(%struct.pci_dev* %52)
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %58)
  store %struct.pci_dev* %59, %struct.pci_dev** %8, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %61 = icmp ne %struct.pci_dev* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %62, %49
  %68 = phi i1 [ false, %49 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %43

72:                                               ; preds = %43
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @radeon_atpx_priv, i32 0, i32 2, i32 0), align 4
  %80 = load i32, i32* @ACPI_FULL_PATHNAME, align 4
  %81 = call i32 @acpi_get_name(i32 %79, i32 %80, %struct.acpi_buffer* %3)
  %82 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %82)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @radeon_atpx_priv, i32 0, i32 0), align 4
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @radeon_atpx_priv, i32 0, i32 1), align 4
  %85 = call i32 (...) @radeon_atpx_init()
  store i32 1, i32* %1, align 4
  br label %87

86:                                               ; preds = %75, %72
  store i32 0, i32* %1, align 4
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pci_dev* @pci_get_class(i32, %struct.pci_dev*) #2

declare dso_local i32 @radeon_atpx_pci_probe_handle(%struct.pci_dev*) #2

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #2

declare dso_local i32 @acpi_get_name(i32, i32, %struct.acpi_buffer*) #2

declare dso_local i32 @pr_info(i8*, i8*) #2

declare dso_local i32 @radeon_atpx_init(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
