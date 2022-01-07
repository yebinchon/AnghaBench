; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_find_max_drive_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_find_max_drive_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_training_settings = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.dc_lane_settings = type { i64, i64 }

@VOLTAGE_SWING_MAX_LEVEL = common dso_local global i64 0, align 8
@PRE_EMPHASIS_MAX_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_training_settings*, %struct.link_training_settings*)* @find_max_drive_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_max_drive_settings(%struct.link_training_settings* %0, %struct.link_training_settings* %1) #0 {
  %3 = alloca %struct.link_training_settings*, align 8
  %4 = alloca %struct.link_training_settings*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dc_lane_settings, align 8
  store %struct.link_training_settings* %0, %struct.link_training_settings** %3, align 8
  store %struct.link_training_settings* %1, %struct.link_training_settings** %4, align 8
  %7 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %8 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %15 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  store i64 1, i64* %5, align 8
  br label %21

21:                                               ; preds = %69, %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %24 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %21
  %29 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %30 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %41 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %28
  %49 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %50 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %55, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %61 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %48
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %21

72:                                               ; preds = %21
  %73 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VOLTAGE_SWING_MAX_LEVEL, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, i64* @VOLTAGE_SWING_MAX_LEVEL, align 8
  %79 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PRE_EMPHASIS_MAX_LEVEL, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, i64* @PRE_EMPHASIS_MAX_LEVEL, align 8
  %87 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @get_max_pre_emphasis_for_voltage_swing(i64 %92)
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @get_max_pre_emphasis_for_voltage_swing(i64 %97)
  %99 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 1
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %102 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %106 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  %108 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %109 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %113 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  %115 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %116 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %120 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 8
  store i64 0, i64* %5, align 8
  br label %122

122:                                              ; preds = %146, %100
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %125 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %123, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %133 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i64, i64* %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i64 %131, i64* %137, align 8
  %138 = getelementptr inbounds %struct.dc_lane_settings, %struct.dc_lane_settings* %6, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %141 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i64, i64* %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i64 %139, i64* %145, align 8
  br label %146

146:                                              ; preds = %129
  %147 = load i64, i64* %5, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %5, align 8
  br label %122

149:                                              ; preds = %122
  ret void
}

declare dso_local i64 @get_max_pre_emphasis_for_voltage_swing(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
