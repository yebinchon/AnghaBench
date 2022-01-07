; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_cm_common.c_cm_helper_program_xfer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_cm_common.c_cm_helper_program_xfer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.pwl_params = type { %struct.gamma_curve*, %struct.TYPE_8__* }
%struct.gamma_curve = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.xfer_func_reg = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@exp_region_start = common dso_local global i32 0, align 4
@exp_resion_start_segment = common dso_local global i32 0, align 4
@field_region_linear_slope = common dso_local global i32 0, align 4
@field_region_end = common dso_local global i32 0, align 4
@field_region_end_slope = common dso_local global i32 0, align 4
@field_region_end_base = common dso_local global i32 0, align 4
@exp_region0_lut_offset = common dso_local global i32 0, align 4
@exp_region0_num_segments = common dso_local global i32 0, align 4
@exp_region1_lut_offset = common dso_local global i32 0, align 4
@exp_region1_num_segments = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cm_helper_program_xfer_func(%struct.dc_context* %0, %struct.pwl_params* %1, %struct.xfer_func_reg* %2) #0 {
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.pwl_params*, align 8
  %6 = alloca %struct.xfer_func_reg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gamma_curve*, align 8
  %10 = alloca %struct.gamma_curve*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.pwl_params* %1, %struct.pwl_params** %5, align 8
  store %struct.xfer_func_reg* %2, %struct.xfer_func_reg** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %12 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @exp_region_start, align 4
  %15 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %16 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @exp_resion_start_segment, align 4
  %23 = call i32 @REG_SET_2(i32 %13, i32 0, i32 %14, i32 %21, i32 %22, i32 0)
  %24 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %25 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @exp_region_start, align 4
  %28 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %29 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @exp_resion_start_segment, align 4
  %36 = call i32 @REG_SET_2(i32 %26, i32 0, i32 %27, i32 %34, i32 %35, i32 0)
  %37 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %38 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @exp_region_start, align 4
  %41 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %42 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @exp_resion_start_segment, align 4
  %49 = call i32 @REG_SET_2(i32 %39, i32 0, i32 %40, i32 %47, i32 %48, i32 0)
  %50 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %51 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @field_region_linear_slope, align 4
  %54 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %55 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @REG_SET(i32 %52, i32 0, i32 %53, i32 %60)
  %62 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %63 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @field_region_linear_slope, align 4
  %66 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %67 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @REG_SET(i32 %64, i32 0, i32 %65, i32 %72)
  %74 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %75 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @field_region_linear_slope, align 4
  %78 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %79 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @REG_SET(i32 %76, i32 0, i32 %77, i32 %84)
  %86 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %87 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @field_region_end, align 4
  %90 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %91 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @REG_SET(i32 %88, i32 0, i32 %89, i32 %96)
  %98 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %99 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @field_region_end_slope, align 4
  %102 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %103 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @field_region_end_base, align 4
  %110 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %111 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @REG_SET_2(i32 %100, i32 0, i32 %101, i32 %108, i32 %109, i32 %116)
  %118 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %119 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @field_region_end, align 4
  %122 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %123 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @REG_SET(i32 %120, i32 0, i32 %121, i32 %128)
  %130 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %131 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @field_region_end_slope, align 4
  %134 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %135 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @field_region_end_base, align 4
  %142 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %143 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @REG_SET_2(i32 %132, i32 0, i32 %133, i32 %140, i32 %141, i32 %148)
  %150 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %151 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @field_region_end, align 4
  %154 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %155 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @REG_SET(i32 %152, i32 0, i32 %153, i32 %160)
  %162 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %163 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @field_region_end_slope, align 4
  %166 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %167 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @field_region_end_base, align 4
  %174 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %175 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %174, i32 0, i32 1
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @REG_SET_2(i32 %164, i32 0, i32 %165, i32 %172, i32 %173, i32 %180)
  %182 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %183 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %7, align 8
  br label %185

185:                                              ; preds = %227, %3
  %186 = load i64, i64* %7, align 8
  %187 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %6, align 8
  %188 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp sle i64 %186, %189
  br i1 %190, label %191, label %230

191:                                              ; preds = %185
  %192 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %193 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %192, i32 0, i32 0
  %194 = load %struct.gamma_curve*, %struct.gamma_curve** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = mul i32 2, %195
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.gamma_curve, %struct.gamma_curve* %194, i64 %197
  store %struct.gamma_curve* %198, %struct.gamma_curve** %9, align 8
  %199 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %200 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %199, i32 0, i32 0
  %201 = load %struct.gamma_curve*, %struct.gamma_curve** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = mul i32 2, %202
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.gamma_curve, %struct.gamma_curve* %201, i64 %205
  store %struct.gamma_curve* %206, %struct.gamma_curve** %10, align 8
  %207 = load i64, i64* %7, align 8
  %208 = load i32, i32* @exp_region0_lut_offset, align 4
  %209 = load %struct.gamma_curve*, %struct.gamma_curve** %9, align 8
  %210 = getelementptr inbounds %struct.gamma_curve, %struct.gamma_curve* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @exp_region0_num_segments, align 4
  %213 = load %struct.gamma_curve*, %struct.gamma_curve** %9, align 8
  %214 = getelementptr inbounds %struct.gamma_curve, %struct.gamma_curve* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @exp_region1_lut_offset, align 4
  %217 = load %struct.gamma_curve*, %struct.gamma_curve** %10, align 8
  %218 = getelementptr inbounds %struct.gamma_curve, %struct.gamma_curve* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @exp_region1_num_segments, align 4
  %221 = load %struct.gamma_curve*, %struct.gamma_curve** %10, align 8
  %222 = getelementptr inbounds %struct.gamma_curve, %struct.gamma_curve* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @REG_SET_4(i64 %207, i32 0, i32 %208, i32 %211, i32 %212, i32 %215, i32 %216, i32 %219, i32 %220, i32 %223)
  %225 = load i32, i32* %8, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %191
  %228 = load i64, i64* %7, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %7, align 8
  br label %185

230:                                              ; preds = %185
  ret void
}

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_4(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
