; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_crtc_or_fake_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_crtc_or_fake_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_commit = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_crtc_commit* }
%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_crtc_commit* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc_commit* (%struct.drm_atomic_state*, %struct.drm_crtc*)* @crtc_or_fake_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc_commit* @crtc_or_fake_commit(%struct.drm_atomic_state* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_crtc_commit*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %8 = icmp ne %struct.drm_crtc* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %12 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %10, %struct.drm_crtc* %11)
  store %struct.drm_crtc_state* %12, %struct.drm_crtc_state** %6, align 8
  %13 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %14 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %13, i32 0, i32 0
  %15 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %14, align 8
  store %struct.drm_crtc_commit* %15, %struct.drm_crtc_commit** %3, align 8
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %17, i32 0, i32 0
  %19 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %18, align 8
  %20 = icmp ne %struct.drm_crtc_commit* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.drm_crtc_commit* @kzalloc(i32 4, i32 %22)
  %24 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %25 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %24, i32 0, i32 0
  store %struct.drm_crtc_commit* %23, %struct.drm_crtc_commit** %25, align 8
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %27 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %26, i32 0, i32 0
  %28 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %27, align 8
  %29 = icmp ne %struct.drm_crtc_commit* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store %struct.drm_crtc_commit* null, %struct.drm_crtc_commit** %3, align 8
  br label %40

31:                                               ; preds = %21
  %32 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %33 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %32, i32 0, i32 0
  %34 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %33, align 8
  %35 = call i32 @init_commit(%struct.drm_crtc_commit* %34, i32* null)
  br label %36

36:                                               ; preds = %31, %16
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %38 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %37, i32 0, i32 0
  %39 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %38, align 8
  store %struct.drm_crtc_commit* %39, %struct.drm_crtc_commit** %3, align 8
  br label %40

40:                                               ; preds = %36, %30, %9
  %41 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %3, align 8
  ret %struct.drm_crtc_commit* %41
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local %struct.drm_crtc_commit* @kzalloc(i32, i32) #1

declare dso_local i32 @init_commit(%struct.drm_crtc_commit*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
