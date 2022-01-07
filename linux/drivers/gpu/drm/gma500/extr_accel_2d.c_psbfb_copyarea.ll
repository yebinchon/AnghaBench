; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psbfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psbfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32 }
%struct.fb_copyarea = type { i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psbfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %16 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %19, %14
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  call void @drm_fb_helper_cfb_copyarea(%struct.fb_info* %32, %struct.fb_copyarea* %33)
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %37 = call i32 @psbfb_copyarea_accel(%struct.fb_info* %35, %struct.fb_copyarea* %36)
  br label %38

38:                                               ; preds = %34, %31, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local void @drm_fb_helper_cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @psbfb_copyarea_accel(%struct.fb_info*, %struct.fb_copyarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
