; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_wait_one_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_wait_one_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"vblank not available on crtc %i, ret=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"vblank wait timed out on crtc %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_wait_one_vblank(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_vblank_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %10, i64 %12
  store %struct.drm_vblank_crtc* %13, %struct.drm_vblank_crtc** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @drm_vblank_get(%struct.drm_device* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 (i32, i8*, i32, ...) @WARN(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %56

33:                                               ; preds = %23
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @drm_vblank_count(%struct.drm_device* %34, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @drm_vblank_count(%struct.drm_device* %41, i32 %42)
  %44 = icmp ne i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @msecs_to_jiffies(i32 100)
  %47 = call i32 @wait_event_timeout(i32 %39, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = call i64 (i32, i8*, i32, ...) @WARN(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @drm_vblank_put(%struct.drm_device* %53, i32 %54)
  br label %56

56:                                               ; preds = %33, %32, %22
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_vblank_get(%struct.drm_device*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, ...) #1

declare dso_local i64 @drm_vblank_count(%struct.drm_device*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @drm_vblank_put(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
