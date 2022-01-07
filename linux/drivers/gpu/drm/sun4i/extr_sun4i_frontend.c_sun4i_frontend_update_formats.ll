; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_update_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_update_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_frontend = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, %struct.drm_format_info* }
%struct.drm_format_info = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"Invalid input format\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid input mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid pixel sequence\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid output format\0A\00", align 1
@SUN4I_FRONTEND_CH0_HORZPHASE_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH1_HORZPHASE_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH0_VERTPHASE0_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH1_VERTPHASE0_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH0_VERTPHASE1_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH1_VERTPHASE1_REG = common dso_local global i32 0, align 4
@sunxi_bt601_yuv2rgb_coef = common dso_local global i32* null, align 8
@SUN4I_FRONTEND_BYPASS_CSC_EN = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_BYPASS_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_INPUT_FMT_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_OUTPUT_FMT_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_frontend_update_formats(%struct.sun4i_frontend* %0, %struct.drm_plane* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun4i_frontend*, align 8
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_format_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sun4i_frontend* %0, %struct.sun4i_frontend** %5, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 0
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %20, align 8
  store %struct.drm_plane_state* %21, %struct.drm_plane_state** %8, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %9, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 1
  %27 = load %struct.drm_format_info*, %struct.drm_format_info** %26, align 8
  store %struct.drm_format_info* %27, %struct.drm_format_info** %10, align 8
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %32 = call i32 @sun4i_frontend_drm_format_to_input_fmt(%struct.drm_format_info* %31, i32* %13)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %18, align 4
  store i32 %37, i32* %4, align 4
  br label %202

38:                                               ; preds = %3
  %39 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @sun4i_frontend_drm_format_to_input_mode(%struct.drm_format_info* %39, i32 %40, i32* %14)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %4, align 4
  br label %202

47:                                               ; preds = %38
  %48 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %49 = call i32 @sun4i_frontend_drm_format_to_input_sequence(%struct.drm_format_info* %48, i32* %15)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %4, align 4
  br label %202

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @sun4i_frontend_drm_format_to_output_fmt(i32 %56, i32* %12)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %4, align 4
  br label %202

63:                                               ; preds = %55
  %64 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %65 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SUN4I_FRONTEND_CH0_HORZPHASE_REG, align 4
  %68 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %69 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @regmap_write(i32 %66, i32 %67, i32 %75)
  %77 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %78 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SUN4I_FRONTEND_CH1_HORZPHASE_REG, align 4
  %81 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %82 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @regmap_write(i32 %79, i32 %80, i32 %88)
  %90 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %91 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SUN4I_FRONTEND_CH0_VERTPHASE0_REG, align 4
  %94 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %95 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @regmap_write(i32 %92, i32 %93, i32 %103)
  %105 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %106 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SUN4I_FRONTEND_CH1_VERTPHASE0_REG, align 4
  %109 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %110 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @regmap_write(i32 %107, i32 %108, i32 %118)
  %120 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %121 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SUN4I_FRONTEND_CH0_VERTPHASE1_REG, align 4
  %124 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %125 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @regmap_write(i32 %122, i32 %123, i32 %133)
  %135 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %136 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SUN4I_FRONTEND_CH1_VERTPHASE1_REG, align 4
  %139 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %140 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @regmap_write(i32 %137, i32 %138, i32 %148)
  %150 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %151 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %176

154:                                              ; preds = %63
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %172, %154
  %156 = load i32, i32* %16, align 4
  %157 = load i32*, i32** @sunxi_bt601_yuv2rgb_coef, align 8
  %158 = call i32 @ARRAY_SIZE(i32* %157)
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %162 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @SUN4I_FRONTEND_CSC_COEF_REG(i32 %164)
  %166 = load i32*, i32** @sunxi_bt601_yuv2rgb_coef, align 8
  %167 = load i32, i32* %16, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @regmap_write(i32 %163, i32 %165, i32 %170)
  br label %172

172:                                              ; preds = %160
  %173 = load i32, i32* %16, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %155

175:                                              ; preds = %155
  br label %178

176:                                              ; preds = %63
  %177 = load i32, i32* @SUN4I_FRONTEND_BYPASS_CSC_EN, align 4
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %176, %175
  %179 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %180 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @SUN4I_FRONTEND_BYPASS_REG, align 4
  %183 = load i32, i32* @SUN4I_FRONTEND_BYPASS_CSC_EN, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @regmap_update_bits(i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %187 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @SUN4I_FRONTEND_INPUT_FMT_REG, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %13, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* %15, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @regmap_write(i32 %188, i32 %189, i32 %194)
  %196 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %5, align 8
  %197 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SUN4I_FRONTEND_OUTPUT_FMT_REG, align 4
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @regmap_write(i32 %198, i32 %199, i32 %200)
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %178, %60, %52, %44, %35
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @sun4i_frontend_drm_format_to_input_fmt(%struct.drm_format_info*, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @sun4i_frontend_drm_format_to_input_mode(%struct.drm_format_info*, i32, i32*) #1

declare dso_local i32 @sun4i_frontend_drm_format_to_input_sequence(%struct.drm_format_info*, i32*) #1

declare dso_local i32 @sun4i_frontend_drm_format_to_output_fmt(i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SUN4I_FRONTEND_CSC_COEF_REG(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
