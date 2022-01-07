; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.hibmc_drm_private*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hibmc_drm_private = type { i32, %struct.drm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"no memory to allocate for hibmc_drm_private\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to initialize vblank: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"enabling MSI failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"install irq failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to initialize fbdev: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to initialize drm driver: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @hibmc_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hibmc_load(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.hibmc_drm_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hibmc_drm_private* @devm_kzalloc(i32 %8, i32 16, i32 %9)
  store %struct.hibmc_drm_private* %10, %struct.hibmc_drm_private** %4, align 8
  %11 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %12 = icmp ne %struct.hibmc_drm_private* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %98

17:                                               ; preds = %1
  %18 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 2
  store %struct.hibmc_drm_private* %18, %struct.hibmc_drm_private** %20, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %23 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %22, i32 0, i32 1
  store %struct.drm_device* %21, %struct.drm_device** %23, align 8
  %24 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %25 = call i32 @hibmc_hw_init(%struct.hibmc_drm_private* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %92

29:                                               ; preds = %17
  %30 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %31 = call i32 @hibmc_mm_init(%struct.hibmc_drm_private* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %92

35:                                               ; preds = %29
  %36 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %37 = call i32 @hibmc_kms_init(%struct.hibmc_drm_private* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %92

41:                                               ; preds = %35
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @drm_vblank_init(%struct.drm_device* %42, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %92

53:                                               ; preds = %41
  %54 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %55 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @pci_enable_msi(%struct.TYPE_4__* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @DRM_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %81

65:                                               ; preds = %53
  %66 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %67 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @drm_irq_install(%struct.drm_device* %68, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @DRM_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %65
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %83 = call i32 @drm_mode_config_reset(%struct.drm_device* %82)
  %84 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %4, align 8
  %85 = call i32 @hibmc_fbdev_init(%struct.hibmc_drm_private* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %92

91:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %98

92:                                               ; preds = %88, %50, %40, %34, %28
  %93 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %94 = call i32 @hibmc_unload(%struct.drm_device* %93)
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %91, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.hibmc_drm_private* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @hibmc_hw_init(%struct.hibmc_drm_private*) #1

declare dso_local i32 @hibmc_mm_init(%struct.hibmc_drm_private*) #1

declare dso_local i32 @hibmc_kms_init(%struct.hibmc_drm_private*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_4__*) #1

declare dso_local i32 @DRM_WARN(i8*, i32) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @hibmc_fbdev_init(%struct.hibmc_drm_private*) #1

declare dso_local i32 @hibmc_unload(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
