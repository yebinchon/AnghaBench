; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_hw_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_hw_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_drm_private = type { i8*, i8*, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Cannot map mmio region\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot map framebuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hibmc_drm_private*)* @hibmc_hw_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hibmc_hw_map(%struct.hibmc_drm_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hibmc_drm_private*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.hibmc_drm_private* %0, %struct.hibmc_drm_private** %3, align 8
  %10 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %11 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %10, i32 0, i32 4
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = call i8* @pci_resource_start(%struct.pci_dev* %16, i32 1)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i8* @pci_resource_len(%struct.pci_dev* %18, i32 1)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @devm_ioremap_nocache(i32 %22, i8* %23, i8* %24)
  %26 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %27 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %29 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %1
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %64

36:                                               ; preds = %1
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = call i8* @pci_resource_start(%struct.pci_dev* %37, i32 0)
  store i8* %38, i8** %6, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = call i8* @pci_resource_len(%struct.pci_dev* %39, i32 0)
  store i8* %40, i8** %7, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @devm_ioremap(i32 %43, i8* %44, i8* %45)
  %47 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %48 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %50 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %36
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %36
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %60 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %63 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %53, %32
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @devm_ioremap_nocache(i32, i8*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @devm_ioremap(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
