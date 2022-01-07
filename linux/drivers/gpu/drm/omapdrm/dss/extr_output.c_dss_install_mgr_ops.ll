; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_output.c_dss_install_mgr_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_output.c_dss_install_mgr_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { %struct.omap_drm_private*, %struct.dss_mgr_ops* }
%struct.dss_mgr_ops = type { i32 }
%struct.omap_drm_private = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_install_mgr_ops(%struct.dss_device* %0, %struct.dss_mgr_ops* %1, %struct.omap_drm_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dss_device*, align 8
  %6 = alloca %struct.dss_mgr_ops*, align 8
  %7 = alloca %struct.omap_drm_private*, align 8
  store %struct.dss_device* %0, %struct.dss_device** %5, align 8
  store %struct.dss_mgr_ops* %1, %struct.dss_mgr_ops** %6, align 8
  store %struct.omap_drm_private* %2, %struct.omap_drm_private** %7, align 8
  %8 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %9 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %8, i32 0, i32 1
  %10 = load %struct.dss_mgr_ops*, %struct.dss_mgr_ops** %9, align 8
  %11 = icmp ne %struct.dss_mgr_ops* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.dss_mgr_ops*, %struct.dss_mgr_ops** %6, align 8
  %17 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %18 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %17, i32 0, i32 1
  store %struct.dss_mgr_ops* %16, %struct.dss_mgr_ops** %18, align 8
  %19 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %20 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %21 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %20, i32 0, i32 0
  store %struct.omap_drm_private* %19, %struct.omap_drm_private** %21, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
