; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"dev=%p, crtc=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @msm_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_disable_vblank(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.msm_kms*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  store %struct.msm_drm_private* %9, %struct.msm_drm_private** %5, align 8
  %10 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %11 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %10, i32 0, i32 0
  %12 = load %struct.msm_kms*, %struct.msm_kms** %11, align 8
  store %struct.msm_kms* %12, %struct.msm_kms** %6, align 8
  %13 = load %struct.msm_kms*, %struct.msm_kms** %6, align 8
  %14 = icmp ne %struct.msm_kms* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %17, i32 %18)
  %20 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @vblank_ctrl_queue_work(%struct.msm_drm_private* %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @DBG(i8*, %struct.drm_device*, i32) #1

declare dso_local i32 @vblank_ctrl_queue_work(%struct.msm_drm_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
