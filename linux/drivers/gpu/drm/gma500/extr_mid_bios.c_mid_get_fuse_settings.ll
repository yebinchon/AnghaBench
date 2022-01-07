; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mid_bios.c_mid_get_fuse_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mid_bios.c_mid_get_fuse_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__*, %struct.drm_psb_private* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_psb_private = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"internal display is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LVDS display\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"MIPI display\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SKU values is 0x%x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Invalid SKU values, SKU value = 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"LNC core clk is %dMHz.\0A\00", align 1
@FB_MIPI_DISABLE = common dso_local global i32 0, align 4
@FB_REG06 = common dso_local global i32 0, align 4
@FB_REG09 = common dso_local global i32 0, align 4
@FB_SKU_MASK = common dso_local global i32 0, align 4
@FB_SKU_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @mid_get_fuse_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mid_get_fuse_settings(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 2
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_domain_nr(i32 %14)
  %16 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %15, i32 0, i32 0)
  store %struct.pci_dev* %16, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = icmp eq %struct.pci_dev* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @WARN_ON(i32 1)
  br label %103

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_write_config_dword(%struct.pci_dev* %22, i32 208, i32 -796850688)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i32 212, i32* %5)
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i64 @IS_MRST(%struct.drm_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 2048
  %32 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %33 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %48 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %50 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  br label %56

51:                                               ; preds = %34
  %52 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %53 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  %54 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32 @pci_write_config_dword(%struct.pci_dev* %60, i32 208, i32 -796849920)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @pci_read_config_dword(%struct.pci_dev* %62, i32 212, i32* %5)
  %64 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 28672
  %71 = ashr i32 %70, 12
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %74 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  switch i32 %75, label %85 [
    i32 0, label %76
    i32 1, label %79
    i32 2, label %82
  ]

76:                                               ; preds = %56
  %77 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %78 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %77, i32 0, i32 5
  store i32 200, i32* %78, align 4
  br label %93

79:                                               ; preds = %56
  %80 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %81 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %80, i32 0, i32 5
  store i32 100, i32* %81, align 4
  br label %93

82:                                               ; preds = %56
  %83 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %84 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %83, i32 0, i32 5
  store i32 166, i32* %84, align 4
  br label %93

85:                                               ; preds = %56
  %86 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dev_warn(i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %92 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %91, i32 0, i32 5
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %85, %82, %79, %76
  %94 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %98 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = call i32 @pci_dev_put(%struct.pci_dev* %101)
  br label %103

103:                                              ; preds = %93, %19
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @IS_MRST(%struct.drm_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
