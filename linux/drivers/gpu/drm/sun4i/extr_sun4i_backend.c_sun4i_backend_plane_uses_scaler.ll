; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_plane_uses_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_plane_uses_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"Input size %dx%d, output size %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*)* @sun4i_backend_plane_uses_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_backend_plane_uses_scaler(%struct.drm_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %3, align 8
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 16
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 16
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17, i64 %20, i64 %23)
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %1
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
