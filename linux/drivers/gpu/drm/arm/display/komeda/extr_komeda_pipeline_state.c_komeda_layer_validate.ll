; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_layer_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_layer_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { i32 }
%struct.komeda_plane_state = type { %struct.drm_plane_state }
%struct.drm_plane_state = type { i32, i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.komeda_data_flow_cfg = type { i32, i64, i64, i64, i64, i32 }
%struct.komeda_fb = type { i64, i64 }
%struct.komeda_component_state = type { i32 }
%struct.komeda_layer_state = type { i32, i32*, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_layer*, %struct.komeda_plane_state*, %struct.komeda_data_flow_cfg*)* @komeda_layer_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_layer_validate(%struct.komeda_layer* %0, %struct.komeda_plane_state* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_layer*, align 8
  %6 = alloca %struct.komeda_plane_state*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.komeda_fb*, align 8
  %11 = alloca %struct.komeda_component_state*, align 8
  %12 = alloca %struct.komeda_layer_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.komeda_layer* %0, %struct.komeda_layer** %5, align 8
  store %struct.komeda_plane_state* %1, %struct.komeda_plane_state** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %15 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %6, align 8
  %16 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %15, i32 0, i32 0
  store %struct.drm_plane_state* %16, %struct.drm_plane_state** %8, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 3
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  store %struct.drm_framebuffer* %19, %struct.drm_framebuffer** %9, align 8
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %21 = call %struct.komeda_fb* @to_kfb(%struct.drm_framebuffer* %20)
  store %struct.komeda_fb* %21, %struct.komeda_fb** %10, align 8
  %22 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %23 = load %struct.komeda_fb*, %struct.komeda_fb** %10, align 8
  %24 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %25 = call i32 @komeda_layer_check_cfg(%struct.komeda_layer* %22, %struct.komeda_fb* %23, %struct.komeda_data_flow_cfg* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %4, align 4
  br label %175

30:                                               ; preds = %3
  %31 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %32 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %31, i32 0, i32 0
  %33 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %34 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %37 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %40 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32* %32, i32 %35, i32 %38, i32 %41)
  store %struct.komeda_component_state* %42, %struct.komeda_component_state** %11, align 8
  %43 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  %44 = call i64 @IS_ERR(%struct.komeda_component_state* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  %48 = call i32 @PTR_ERR(%struct.komeda_component_state* %47)
  store i32 %48, i32* %4, align 4
  br label %175

49:                                               ; preds = %30
  %50 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  %51 = call %struct.komeda_layer_state* @to_layer_st(%struct.komeda_component_state* %50)
  store %struct.komeda_layer_state* %51, %struct.komeda_layer_state** %12, align 8
  %52 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %53 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %56 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %49
  %62 = load %struct.komeda_fb*, %struct.komeda_fb** %10, align 8
  %63 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %66 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %65, i32 0, i32 7
  store i64 %64, i64* %66, align 8
  %67 = load %struct.komeda_fb*, %struct.komeda_fb** %10, align 8
  %68 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %71 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %70, i32 0, i32 6
  store i64 %69, i64* %71, align 8
  %72 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %73 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %76 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %75, i32 0, i32 5
  store i64 %74, i64* %76, align 8
  %77 = load %struct.komeda_fb*, %struct.komeda_fb** %10, align 8
  %78 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %81 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %89 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %91 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %94 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load %struct.komeda_fb*, %struct.komeda_fb** %10, align 8
  %96 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %99 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %103 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  %106 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %107 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  br label %127

108:                                              ; preds = %49
  %109 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %110 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %113 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %112, i32 0, i32 7
  store i64 %111, i64* %113, align 8
  %114 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %115 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %118 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %117, i32 0, i32 6
  store i64 %116, i64* %118, align 8
  %119 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %120 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %119, i32 0, i32 5
  store i64 0, i64* %120, align 8
  %121 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %122 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %121, i32 0, i32 4
  store i64 0, i64* %122, align 8
  %123 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %124 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %123, i32 0, i32 3
  store i64 0, i64* %124, align 8
  %125 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %126 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %108, %61
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %152, %127
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %131 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %129, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %128
  %137 = load %struct.komeda_fb*, %struct.komeda_fb** %10, align 8
  %138 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %139 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %142 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @komeda_fb_get_pixel_addr(%struct.komeda_fb* %137, i64 %140, i64 %143, i32 %144)
  %146 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %147 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  br label %152

152:                                              ; preds = %136
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %128

155:                                              ; preds = %128
  %156 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %157 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %156, i32 0, i32 0
  %158 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  %159 = call i32 @komeda_component_validate_private(i32* %157, %struct.komeda_component_state* %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %4, align 4
  br label %175

164:                                              ; preds = %155
  %165 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %166 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %165, i32 0, i32 0
  %167 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %168 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %167, i32 0, i32 0
  %169 = call i32 @komeda_component_set_output(i32* %166, i32* %168, i32 0)
  %170 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %171 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %12, align 8
  %172 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @komeda_rotate_data_flow(%struct.komeda_data_flow_cfg* %170, i32 %173)
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %164, %162, %46, %28
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.komeda_fb* @to_kfb(%struct.drm_framebuffer*) #1

declare dso_local i32 @komeda_layer_check_cfg(%struct.komeda_layer*, %struct.komeda_fb*, %struct.komeda_data_flow_cfg*) #1

declare dso_local %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @PTR_ERR(%struct.komeda_component_state*) #1

declare dso_local %struct.komeda_layer_state* @to_layer_st(%struct.komeda_component_state*) #1

declare dso_local i32 @komeda_fb_get_pixel_addr(%struct.komeda_fb*, i64, i64, i32) #1

declare dso_local i32 @komeda_component_validate_private(i32*, %struct.komeda_component_state*) #1

declare dso_local i32 @komeda_component_set_output(i32*, i32*, i32) #1

declare dso_local i32 @komeda_rotate_data_flow(%struct.komeda_data_flow_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
