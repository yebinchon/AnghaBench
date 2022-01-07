; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_clk_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_clk_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shmob_drm_device*)* @shmob_drm_clk_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmob_drm_clk_on(%struct.shmob_drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shmob_drm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.shmob_drm_device* %0, %struct.shmob_drm_device** %3, align 8
  %5 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %6 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @clk_prepare_enable(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @clk_prepare_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
