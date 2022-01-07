; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_pm_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_pm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.drm_device = type { i32 }
%struct.vmw_private = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to freeze modesetting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't hibernate while 3D resources are active.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vmw_pm_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_pm_freeze(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(%struct.device* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %12)
  store %struct.vmw_private* %13, %struct.vmw_private** %6, align 8
  %14 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 4
  %16 = call i32 @ttm_suspend_unlock(i32* %15)
  %17 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %18 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vmw_kms_suspend(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 4
  %26 = call i32 @ttm_suspend_lock(i32* %25)
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %107

29:                                               ; preds = %1
  %30 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %31 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %36 = call i32 @vmw_fb_off(%struct.vmw_private* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %39 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %38, i32 0, i32 4
  %40 = call i32 @ttm_suspend_lock(i32* %39)
  %41 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %42 = call i32 @vmw_execbuf_release_pinned_bo(%struct.vmw_private* %41)
  %43 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %44 = call i32 @vmw_resource_evict_all(%struct.vmw_private* %43)
  %45 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %46 = call i32 @vmw_release_device_early(%struct.vmw_private* %45)
  %47 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %48 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %47, i32 0, i32 6
  %49 = call i32 @ttm_bo_swapout_all(i32* %48)
  %50 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %56 = call i32 @vmw_fifo_resource_dec(%struct.vmw_private* %55)
  br label %57

57:                                               ; preds = %54, %37
  %58 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %59 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %58, i32 0, i32 5
  %60 = call i64 @atomic_read(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %57
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %65 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %70 = call i32 @vmw_fifo_resource_inc(%struct.vmw_private* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %73 = call i32 @vmw_request_device_late(%struct.vmw_private* %72)
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %76 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %78 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %77, i32 0, i32 4
  %79 = call i32 @ttm_suspend_unlock(i32* %78)
  %80 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %81 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = call i32 @vmw_kms_resume(%struct.drm_device* %85)
  br label %87

87:                                               ; preds = %84, %71
  %88 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %89 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %94 = call i32 @vmw_fb_on(%struct.vmw_private* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* @EBUSY, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %107

98:                                               ; preds = %57
  %99 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %100 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @vmw_fence_fifo_down(i32 %101)
  %103 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %104 = call i32 @__vmw_svga_disable(%struct.vmw_private* %103)
  %105 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %106 = call i32 @vmw_release_device_late(%struct.vmw_private* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %98, %95, %23
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i32 @ttm_suspend_unlock(i32*) #1

declare dso_local i32 @vmw_kms_suspend(i32) #1

declare dso_local i32 @ttm_suspend_lock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_fb_off(%struct.vmw_private*) #1

declare dso_local i32 @vmw_execbuf_release_pinned_bo(%struct.vmw_private*) #1

declare dso_local i32 @vmw_resource_evict_all(%struct.vmw_private*) #1

declare dso_local i32 @vmw_release_device_early(%struct.vmw_private*) #1

declare dso_local i32 @ttm_bo_swapout_all(i32*) #1

declare dso_local i32 @vmw_fifo_resource_dec(%struct.vmw_private*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @vmw_fifo_resource_inc(%struct.vmw_private*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vmw_request_device_late(%struct.vmw_private*) #1

declare dso_local i32 @vmw_kms_resume(%struct.drm_device*) #1

declare dso_local i32 @vmw_fb_on(%struct.vmw_private*) #1

declare dso_local i32 @vmw_fence_fifo_down(i32) #1

declare dso_local i32 @__vmw_svga_disable(%struct.vmw_private*) #1

declare dso_local i32 @vmw_release_device_late(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
