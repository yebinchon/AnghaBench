; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_handle_preflip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_handle_preflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.dc_plane_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64* }
%struct.dc_stream_state = type { i32 }
%struct.mod_vrr_params = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.core_freesync = type { i32 }

@VRR_STATE_ACTIVE_VARIABLE = common dso_local global i64 0, align 8
@DC_PLANE_UPDATE_TIMES_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_freesync_handle_preflip(%struct.mod_freesync* %0, %struct.dc_plane_state* %1, %struct.dc_stream_state* %2, i32 %3, %struct.mod_vrr_params* %4) #0 {
  %6 = alloca %struct.mod_freesync*, align 8
  %7 = alloca %struct.dc_plane_state*, align 8
  %8 = alloca %struct.dc_stream_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mod_vrr_params*, align 8
  %11 = alloca %struct.core_freesync*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mod_freesync* %0, %struct.mod_freesync** %6, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %7, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mod_vrr_params* %4, %struct.mod_vrr_params** %10, align 8
  store %struct.core_freesync* null, %struct.core_freesync** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.mod_freesync*, %struct.mod_freesync** %6, align 8
  %17 = icmp eq %struct.mod_freesync* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %106

19:                                               ; preds = %5
  %20 = load %struct.mod_freesync*, %struct.mod_freesync** %6, align 8
  %21 = call %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync* %20)
  store %struct.core_freesync* %21, %struct.core_freesync** %11, align 8
  %22 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %10, align 8
  %23 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %106

26:                                               ; preds = %19
  %27 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %10, align 8
  %28 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VRR_STATE_ACTIVE_VARIABLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %106

32:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  %33 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %34 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @DC_PLANE_UPDATE_TIMES_MAX, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %45 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %43, %47
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %66, %42
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @DC_PLANE_UPDATE_TIMES_MAX, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %55 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %14, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %49

69:                                               ; preds = %49
  %70 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %71 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @DC_PLANE_UPDATE_TIMES_MAX, align 4
  %86 = load i32, i32* %13, align 4
  %87 = udiv i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %10, align 8
  %89 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %69
  %94 = load %struct.core_freesync*, %struct.core_freesync** %11, align 8
  %95 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %10, align 8
  %98 = call i32 @apply_below_the_range(%struct.core_freesync* %94, %struct.dc_stream_state* %95, i32 %96, %struct.mod_vrr_params* %97)
  br label %105

99:                                               ; preds = %69
  %100 = load %struct.core_freesync*, %struct.core_freesync** %11, align 8
  %101 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %10, align 8
  %104 = call i32 @apply_fixed_refresh(%struct.core_freesync* %100, %struct.dc_stream_state* %101, i32 %102, %struct.mod_vrr_params* %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %18, %105, %26, %19
  ret void
}

declare dso_local %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync*) #1

declare dso_local i32 @apply_below_the_range(%struct.core_freesync*, %struct.dc_stream_state*, i32, %struct.mod_vrr_params*) #1

declare dso_local i32 @apply_fixed_refresh(%struct.core_freesync*, %struct.dc_stream_state*, i32, %struct.mod_vrr_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
