; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_det_surface_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_det_surface_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_state* }
%struct.dc_state = type { i32 }
%struct.dc_surface_update = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i64, %union.surface_update_flags }
%union.surface_update_flags = type { i64, [24 x i8] }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@UPDATE_TYPE_FAST = common dso_local global i32 0, align 4
@UPDATE_TYPE_FULL = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_GRPH_BEGIN = common dso_local global i32 0, align 4
@UPDATE_TYPE_MED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, %struct.dc_surface_update*)* @det_surface_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @det_surface_update(%struct.dc* %0, %struct.dc_surface_update* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_surface_update*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.surface_update_flags*, align 8
  %10 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_surface_update* %1, %struct.dc_surface_update** %5, align 8
  %11 = load %struct.dc*, %struct.dc** %4, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 0
  %13 = load %struct.dc_state*, %struct.dc_state** %12, align 8
  store %struct.dc_state* %13, %struct.dc_state** %6, align 8
  %14 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %16 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store %union.surface_update_flags* %18, %union.surface_update_flags** %9, align 8
  %19 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %20 = bitcast %union.surface_update_flags* %19 to i64*
  store i64 0, i64* %20, align 8
  %21 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %22 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %27 = bitcast %union.surface_update_flags* %26 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %31 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %32 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @is_surface_in_context(%struct.dc_state* %30, %struct.TYPE_6__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %38 = bitcast %union.surface_update_flags* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %40, i32* %3, align 4
  br label %169

41:                                               ; preds = %29
  %42 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %43 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %50 = bitcast %union.surface_update_flags* %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %52, i32* %3, align 4
  br label %169

53:                                               ; preds = %41
  %54 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %55 = call i32 @get_plane_info_update_type(%struct.dc_surface_update* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @elevate_update_type(i32* %8, i32 %56)
  %58 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %59 = call i32 @get_scaling_info_update_type(%struct.dc_surface_update* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @elevate_update_type(i32* %8, i32 %60)
  %62 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %63 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %68 = bitcast %union.surface_update_flags* %67 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %53
  %71 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %72 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %77 = bitcast %union.surface_update_flags* %76 to %struct.TYPE_5__*
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %81 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %86 = bitcast %union.surface_update_flags* %85 to %struct.TYPE_5__*
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %90 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %95 = bitcast %union.surface_update_flags* %94 to %struct.TYPE_5__*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %99 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %97
  %103 = load i32, i32* @SURFACE_PIXEL_FORMAT_GRPH_BEGIN, align 4
  store i32 %103, i32* %10, align 4
  %104 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %105 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = icmp ne %struct.TYPE_4__* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %110 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %10, align 4
  br label %126

114:                                              ; preds = %102
  %115 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %116 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = icmp ne %struct.TYPE_6__* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %121 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %119, %114
  br label %126

126:                                              ; preds = %125, %108
  %127 = load i32, i32* %10, align 4
  %128 = call i64 @dce_use_lut(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %132 = bitcast %union.surface_update_flags* %131 to %struct.TYPE_5__*
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 6
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %97
  %136 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %137 = bitcast %union.surface_update_flags* %136 to %struct.TYPE_5__*
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* @UPDATE_TYPE_MED, align 4
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @elevate_update_type(i32* %8, i32 %143)
  br label %145

145:                                              ; preds = %141, %135
  %146 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %147 = bitcast %union.surface_update_flags* %146 to %struct.TYPE_5__*
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %145
  %152 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %153 = bitcast %union.surface_update_flags* %152 to %struct.TYPE_5__*
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %union.surface_update_flags*, %union.surface_update_flags** %9, align 8
  %159 = bitcast %union.surface_update_flags* %158 to %struct.TYPE_5__*
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157, %151, %145
  %164 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @elevate_update_type(i32* %8, i32 %165)
  br label %167

167:                                              ; preds = %163, %157
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %48, %36
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @is_surface_in_context(%struct.dc_state*, %struct.TYPE_6__*) #1

declare dso_local i32 @get_plane_info_update_type(%struct.dc_surface_update*) #1

declare dso_local i32 @elevate_update_type(i32*, i32) #1

declare dso_local i32 @get_scaling_info_update_type(%struct.dc_surface_update*) #1

declare dso_local i64 @dce_use_lut(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
