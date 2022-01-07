; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.drm_plane = type { i8* }
%struct.vc4_plane_state = type { i32, i32, %struct.drm_plane_state, i8*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane_state* (%struct.drm_plane*)* @vc4_plane_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane_state* @vc4_plane_duplicate_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.vc4_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %6 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmemdup(i8* %17, i32 40, i32 %18)
  %20 = bitcast i8* %19 to %struct.vc4_plane_state*
  store %struct.vc4_plane_state* %20, %struct.vc4_plane_state** %4, align 8
  %21 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %22 = icmp ne %struct.vc4_plane_state* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %66

24:                                               ; preds = %14
  %25 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %26 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %25, i32 0, i32 5
  %27 = call i32 @memset(i32* %26, i32 0, i32 4)
  %28 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %29 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %31 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %32 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %31, i32 0, i32 2
  %33 = call i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane* %30, %struct.drm_plane_state* %32)
  %34 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %35 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %24
  %39 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %40 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %43 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %44, 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kmemdup(i8* %41, i32 %45, i32 %46)
  %48 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %49 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %51 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %38
  %55 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %56 = call i32 @kfree(%struct.vc4_plane_state* %55)
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %66

57:                                               ; preds = %38
  %58 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %59 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %62 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %24
  %64 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %65 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %64, i32 0, i32 2
  store %struct.drm_plane_state* %65, %struct.drm_plane_state** %2, align 8
  br label %66

66:                                               ; preds = %63, %54, %23, %13
  %67 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %67
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @kfree(%struct.vc4_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
