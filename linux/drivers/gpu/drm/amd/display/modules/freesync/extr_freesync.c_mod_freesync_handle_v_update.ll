; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_handle_v_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_handle_v_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.mod_vrr_params = type { i32, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }
%struct.core_freesync = type { i32 }

@VRR_STATE_ACTIVE_VARIABLE = common dso_local global i64 0, align 8
@VRR_STATE_ACTIVE_FIXED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_freesync_handle_v_update(%struct.mod_freesync* %0, %struct.dc_stream_state* %1, %struct.mod_vrr_params* %2) #0 {
  %4 = alloca %struct.mod_freesync*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca %struct.mod_vrr_params*, align 8
  %7 = alloca %struct.core_freesync*, align 8
  store %struct.mod_freesync* %0, %struct.mod_freesync** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  store %struct.mod_vrr_params* %2, %struct.mod_vrr_params** %6, align 8
  store %struct.core_freesync* null, %struct.core_freesync** %7, align 8
  %8 = load %struct.mod_freesync*, %struct.mod_freesync** %4, align 8
  %9 = icmp eq %struct.mod_freesync* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %12 = icmp eq %struct.dc_stream_state* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %15 = icmp eq %struct.mod_vrr_params* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  br label %128

17:                                               ; preds = %13
  %18 = load %struct.mod_freesync*, %struct.mod_freesync** %4, align 8
  %19 = call %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync* %18)
  store %struct.core_freesync* %19, %struct.core_freesync** %7, align 8
  %20 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %21 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %128

25:                                               ; preds = %17
  %26 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %27 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VRR_STATE_ACTIVE_VARIABLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %101

31:                                               ; preds = %25
  %32 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %33 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %101

37:                                               ; preds = %31
  %38 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %39 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %43 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %37
  %48 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %49 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %50 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %51 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @calc_v_total_from_duration(%struct.dc_stream_state* %48, %struct.mod_vrr_params* %49, i32 %53)
  %55 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %56 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %59 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %63 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %47, %37
  %66 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %67 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %73 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %79 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %85 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %86 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %84, i32 %87)
  %89 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %90 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %93 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %94 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %92, i32 %95)
  %97 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %98 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  br label %100

100:                                              ; preds = %83, %77
  br label %101

101:                                              ; preds = %100, %31, %25
  %102 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %103 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VRR_STATE_ACTIVE_VARIABLE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %109 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %113 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @VRR_STATE_ACTIVE_FIXED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %119 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.core_freesync*, %struct.core_freesync** %7, align 8
  %125 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %126 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %6, align 8
  %127 = call i32 @update_v_total_for_static_ramp(%struct.core_freesync* %124, %struct.dc_stream_state* %125, %struct.mod_vrr_params* %126)
  br label %128

128:                                              ; preds = %16, %24, %123, %117, %111
  ret void
}

declare dso_local %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync*) #1

declare dso_local i8* @calc_v_total_from_duration(%struct.dc_stream_state*, %struct.mod_vrr_params*, i32) #1

declare dso_local i8* @calc_v_total_from_refresh(%struct.dc_stream_state*, i32) #1

declare dso_local i32 @update_v_total_for_static_ramp(%struct.core_freesync*, %struct.dc_stream_state*, %struct.mod_vrr_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
