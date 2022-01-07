; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_apply_fixed_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_apply_fixed_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_freesync = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.mod_vrr_params = type { i32, i64, %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32, i64, i64 }

@FIXED_REFRESH_EXIT_MARGIN_IN_HZ = common dso_local global i32 0, align 4
@FIXED_REFRESH_EXIT_FRAME_COUNT = common dso_local global i64 0, align 8
@FIXED_REFRESH_ENTER_FRAME_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.core_freesync*, %struct.dc_stream_state*, i32, %struct.mod_vrr_params*)* @apply_fixed_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_fixed_refresh(%struct.core_freesync* %0, %struct.dc_stream_state* %1, i32 %2, %struct.mod_vrr_params* %3) #0 {
  %5 = alloca %struct.core_freesync*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mod_vrr_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.core_freesync* %0, %struct.core_freesync** %5, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mod_vrr_params* %3, %struct.mod_vrr_params** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %14 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = udiv i32 1000000000, %16
  %18 = load i32, i32* @FIXED_REFRESH_EXIT_MARGIN_IN_HZ, align 4
  %19 = mul nsw i32 1000, %18
  %20 = add i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = udiv i32 1000000000, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %4
  %27 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %28 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %34 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %39 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FIXED_REFRESH_EXIT_FRAME_COUNT, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %46 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %49 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %52 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %44, %32
  br label %55

55:                                               ; preds = %54, %26
  br label %94

56:                                               ; preds = %4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %62 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %60
  %67 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %68 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %73 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FIXED_REFRESH_ENTER_FRAME_COUNT, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %66
  %79 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %80 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %83 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %86 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %89 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i64 %87, i64* %90, align 8
  store i32 1, i32* %9, align 4
  br label %91

91:                                               ; preds = %78, %66
  br label %92

92:                                               ; preds = %91, %60
  br label %93

93:                                               ; preds = %92, %56
  br label %94

94:                                               ; preds = %93, %55
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %137

97:                                               ; preds = %94
  %98 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %99 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %105 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %106 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %104, i64 %107)
  %109 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %110 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  %112 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %113 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %117 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  br label %136

119:                                              ; preds = %97
  %120 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %121 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %122 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %120, i64 %123)
  %125 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %126 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %129 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %130 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %128, i64 %131)
  %133 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %134 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %119, %103
  br label %137

137:                                              ; preds = %136, %94
  ret void
}

declare dso_local i8* @calc_v_total_from_refresh(%struct.dc_stream_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
