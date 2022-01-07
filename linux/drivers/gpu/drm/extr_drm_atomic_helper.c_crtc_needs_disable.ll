; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_crtc_needs_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_crtc_needs_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc_state*, %struct.drm_crtc_state*)* @crtc_needs_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crtc_needs_disable(%struct.drm_crtc_state* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_crtc_state* %0, %struct.drm_crtc_state** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %6 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %7 = icmp ne %struct.drm_crtc_state* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %10 = call i32 @drm_atomic_crtc_effectively_active(%struct.drm_crtc_state* %9)
  store i32 %10, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  %12 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %16
  %27 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %28 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %21, %11
  %32 = phi i1 [ true, %21 ], [ true, %11 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @drm_atomic_crtc_effectively_active(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
