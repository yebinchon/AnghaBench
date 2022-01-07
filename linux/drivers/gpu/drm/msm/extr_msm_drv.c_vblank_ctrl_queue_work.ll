; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_vblank_ctrl_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_vblank_ctrl_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_drm_private = type { i32 }
%struct.msm_vblank_work = type { i32, i32, i32, %struct.msm_drm_private* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vblank_ctrl_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_drm_private*, i32, i32)* @vblank_ctrl_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vblank_ctrl_queue_work(%struct.msm_drm_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_vblank_work*, align 8
  store %struct.msm_drm_private* %0, %struct.msm_drm_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.msm_vblank_work* @kzalloc(i32 24, i32 %9)
  store %struct.msm_vblank_work* %10, %struct.msm_vblank_work** %8, align 8
  %11 = load %struct.msm_vblank_work*, %struct.msm_vblank_work** %8, align 8
  %12 = icmp ne %struct.msm_vblank_work* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.msm_vblank_work*, %struct.msm_vblank_work** %8, align 8
  %18 = getelementptr inbounds %struct.msm_vblank_work, %struct.msm_vblank_work* %17, i32 0, i32 2
  %19 = load i32, i32* @vblank_ctrl_worker, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.msm_vblank_work*, %struct.msm_vblank_work** %8, align 8
  %23 = getelementptr inbounds %struct.msm_vblank_work, %struct.msm_vblank_work* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.msm_vblank_work*, %struct.msm_vblank_work** %8, align 8
  %26 = getelementptr inbounds %struct.msm_vblank_work, %struct.msm_vblank_work* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %28 = load %struct.msm_vblank_work*, %struct.msm_vblank_work** %8, align 8
  %29 = getelementptr inbounds %struct.msm_vblank_work, %struct.msm_vblank_work* %28, i32 0, i32 3
  store %struct.msm_drm_private* %27, %struct.msm_drm_private** %29, align 8
  %30 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %31 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.msm_vblank_work*, %struct.msm_vblank_work** %8, align 8
  %34 = getelementptr inbounds %struct.msm_vblank_work, %struct.msm_vblank_work* %33, i32 0, i32 2
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %16, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.msm_vblank_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
