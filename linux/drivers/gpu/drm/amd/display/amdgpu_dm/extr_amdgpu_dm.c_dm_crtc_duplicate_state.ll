; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.dm_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc_state* (%struct.drm_crtc*)* @dm_crtc_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc_state* @dm_crtc_duplicate_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.dm_crtc_state*, align 8
  %5 = alloca %struct.dm_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dm_crtc_state* @to_dm_crtc_state(i32 %8)
  store %struct.dm_crtc_state* %9, %struct.dm_crtc_state** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %97

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dm_crtc_state* @kzalloc(i32 56, i32 %20)
  store %struct.dm_crtc_state* %21, %struct.dm_crtc_state** %4, align 8
  %22 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %23 = icmp ne %struct.dm_crtc_state* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %97

25:                                               ; preds = %19
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %27 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %28 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %27, i32 0, i32 0
  %29 = call i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %26, %struct.drm_crtc_state* %28)
  %30 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %31 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %36 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %35, i32 0, i32 11
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %39 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %38, i32 0, i32 11
  store i64 %37, i64* %39, align 8
  %40 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %41 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %40, i32 0, i32 11
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dc_stream_retain(i64 %42)
  br label %44

44:                                               ; preds = %34, %25
  %45 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %46 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %49 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %51 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %54 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %56 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %59 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %61 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %64 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %66 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %69 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %71 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %74 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %76 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %79 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %81 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %84 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %86 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %89 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %91 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %94 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %96 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %95, i32 0, i32 0
  store %struct.drm_crtc_state* %96, %struct.drm_crtc_state** %2, align 8
  br label %97

97:                                               ; preds = %44, %24, %18
  %98 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  ret %struct.drm_crtc_state* %98
}

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.dm_crtc_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

declare dso_local i32 @dc_stream_retain(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
