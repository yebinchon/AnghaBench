; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_compiz_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_compiz_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_compiz = type { i32 }
%struct.komeda_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { i32 }
%struct.komeda_data_flow_cfg = type { i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.komeda_component_state = type { i32 }
%struct.komeda_compiz_input_cfg = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.komeda_compiz_input_cfg* }

@.str = private unnamed_addr constant [44 x i8] c"invalid disp rect [x=%d, y=%d, w=%d, h=%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_compiz*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*)* @komeda_compiz_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_compiz_set_input(%struct.komeda_compiz* %0, %struct.komeda_crtc_state* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_compiz*, align 8
  %6 = alloca %struct.komeda_crtc_state*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca %struct.drm_atomic_state*, align 8
  %9 = alloca %struct.komeda_component_state*, align 8
  %10 = alloca %struct.komeda_component_state*, align 8
  %11 = alloca %struct.komeda_compiz_input_cfg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.komeda_compiz* %0, %struct.komeda_compiz** %5, align 8
  store %struct.komeda_crtc_state* %1, %struct.komeda_crtc_state** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %15 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %16 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %17, align 8
  store %struct.drm_atomic_state* %18, %struct.drm_atomic_state** %8, align 8
  %19 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %20 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %23 = call i32 @pipeline_composition_size(%struct.komeda_crtc_state* %22, i64* %12, i64* %13)
  %24 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %25 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %28 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i64, i64* %12, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %53, label %33

33:                                               ; preds = %3
  %34 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %35 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %38 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i64, i64* %13, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %33
  %44 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %45 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %50 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48, %43, %33, %3
  %54 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %55 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %58 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %61 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %64 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %59, i64 %62, i64 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %173

69:                                               ; preds = %48
  %70 = load %struct.komeda_compiz*, %struct.komeda_compiz** %5, align 8
  %71 = getelementptr inbounds %struct.komeda_compiz, %struct.komeda_compiz* %70, i32 0, i32 0
  %72 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %8, align 8
  %73 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %74 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %78 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32* %71, %struct.drm_atomic_state* %72, i32 %76, i32 %80)
  store %struct.komeda_component_state* %81, %struct.komeda_component_state** %9, align 8
  %82 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %83 = call i64 @IS_ERR(%struct.komeda_component_state* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %69
  %86 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %87 = call i32 @PTR_ERR(%struct.komeda_component_state* %86)
  store i32 %87, i32* %4, align 4
  br label %173

88:                                               ; preds = %69
  %89 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %90 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %91 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %90, i32 0, i32 5
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @komeda_component_check_input(%struct.komeda_component_state* %89, i32* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %173

98:                                               ; preds = %88
  %99 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %100 = call %struct.TYPE_4__* @to_compiz_st(%struct.komeda_component_state* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.komeda_compiz_input_cfg, %struct.komeda_compiz_input_cfg* %102, i64 %104
  store %struct.komeda_compiz_input_cfg* %105, %struct.komeda_compiz_input_cfg** %11, align 8
  %106 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %107 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %11, align 8
  %110 = getelementptr inbounds %struct.komeda_compiz_input_cfg, %struct.komeda_compiz_input_cfg* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %112 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %11, align 8
  %115 = getelementptr inbounds %struct.komeda_compiz_input_cfg, %struct.komeda_compiz_input_cfg* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %117 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %11, align 8
  %120 = getelementptr inbounds %struct.komeda_compiz_input_cfg, %struct.komeda_compiz_input_cfg* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %122 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %11, align 8
  %125 = getelementptr inbounds %struct.komeda_compiz_input_cfg, %struct.komeda_compiz_input_cfg* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %127 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %11, align 8
  %130 = getelementptr inbounds %struct.komeda_compiz_input_cfg, %struct.komeda_compiz_input_cfg* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %132 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %11, align 8
  %135 = getelementptr inbounds %struct.komeda_compiz_input_cfg, %struct.komeda_compiz_input_cfg* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.komeda_compiz*, %struct.komeda_compiz** %5, align 8
  %137 = getelementptr inbounds %struct.komeda_compiz, %struct.komeda_compiz* %136, i32 0, i32 0
  %138 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %8, align 8
  %139 = call %struct.komeda_component_state* @komeda_component_get_old_state(i32* %137, %struct.drm_atomic_state* %138)
  store %struct.komeda_component_state* %139, %struct.komeda_component_state** %10, align 8
  %140 = load %struct.komeda_component_state*, %struct.komeda_component_state** %10, align 8
  %141 = icmp ne %struct.komeda_component_state* %140, null
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @WARN_ON(i32 %143)
  %145 = load %struct.komeda_component_state*, %struct.komeda_component_state** %10, align 8
  %146 = call %struct.TYPE_4__* @to_compiz_st(%struct.komeda_component_state* %145)
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.komeda_compiz_input_cfg, %struct.komeda_compiz_input_cfg* %148, i64 %150
  %152 = load %struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg** %11, align 8
  %153 = call i64 @memcmp(%struct.komeda_compiz_input_cfg* %151, %struct.komeda_compiz_input_cfg* %152, i32 40)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %98
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @BIT(i32 %156)
  %158 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %159 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %155, %98
  %163 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %164 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %165 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %164, i32 0, i32 5
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @komeda_component_add_input(%struct.komeda_component_state* %163, i32* %165, i32 %166)
  %168 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %169 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %168, i32 0, i32 5
  %170 = load %struct.komeda_compiz*, %struct.komeda_compiz** %5, align 8
  %171 = getelementptr inbounds %struct.komeda_compiz, %struct.komeda_compiz* %170, i32 0, i32 0
  %172 = call i32 @komeda_component_set_output(i32* %169, i32* %171, i32 0)
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %162, %95, %85, %53
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @pipeline_composition_size(%struct.komeda_crtc_state*, i64*, i64*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i64, i64, i64, i64) #1

declare dso_local %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32*, %struct.drm_atomic_state*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @PTR_ERR(%struct.komeda_component_state*) #1

declare dso_local i64 @komeda_component_check_input(%struct.komeda_component_state*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @to_compiz_st(%struct.komeda_component_state*) #1

declare dso_local %struct.komeda_component_state* @komeda_component_get_old_state(i32*, %struct.drm_atomic_state*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @memcmp(%struct.komeda_compiz_input_cfg*, %struct.komeda_compiz_input_cfg*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @komeda_component_add_input(%struct.komeda_component_state*, i32*, i32) #1

declare dso_local i32 @komeda_component_set_output(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
