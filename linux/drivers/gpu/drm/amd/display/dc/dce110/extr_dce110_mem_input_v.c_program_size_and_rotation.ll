; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_size_and_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_size_and_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.plane_size = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@UNP_GRPH_PITCH_L = common dso_local global i32 0, align 4
@GRPH_PITCH_L = common dso_local global i32 0, align 4
@mmUNP_GRPH_PITCH_L = common dso_local global i32 0, align 4
@UNP_GRPH_PITCH_C = common dso_local global i32 0, align 4
@GRPH_PITCH_C = common dso_local global i32 0, align 4
@mmUNP_GRPH_PITCH_C = common dso_local global i32 0, align 4
@UNP_GRPH_X_START_L = common dso_local global i32 0, align 4
@GRPH_X_START_L = common dso_local global i32 0, align 4
@mmUNP_GRPH_X_START_L = common dso_local global i32 0, align 4
@UNP_GRPH_X_START_C = common dso_local global i32 0, align 4
@GRPH_X_START_C = common dso_local global i32 0, align 4
@mmUNP_GRPH_X_START_C = common dso_local global i32 0, align 4
@UNP_GRPH_Y_START_L = common dso_local global i32 0, align 4
@GRPH_Y_START_L = common dso_local global i32 0, align 4
@mmUNP_GRPH_Y_START_L = common dso_local global i32 0, align 4
@UNP_GRPH_Y_START_C = common dso_local global i32 0, align 4
@GRPH_Y_START_C = common dso_local global i32 0, align 4
@mmUNP_GRPH_Y_START_C = common dso_local global i32 0, align 4
@UNP_GRPH_X_END_L = common dso_local global i32 0, align 4
@GRPH_X_END_L = common dso_local global i32 0, align 4
@mmUNP_GRPH_X_END_L = common dso_local global i32 0, align 4
@UNP_GRPH_X_END_C = common dso_local global i32 0, align 4
@GRPH_X_END_C = common dso_local global i32 0, align 4
@mmUNP_GRPH_X_END_C = common dso_local global i32 0, align 4
@UNP_GRPH_Y_END_L = common dso_local global i32 0, align 4
@GRPH_Y_END_L = common dso_local global i32 0, align 4
@mmUNP_GRPH_Y_END_L = common dso_local global i32 0, align 4
@UNP_GRPH_Y_END_C = common dso_local global i32 0, align 4
@GRPH_Y_END_C = common dso_local global i32 0, align 4
@mmUNP_GRPH_Y_END_C = common dso_local global i32 0, align 4
@UNP_HW_ROTATION = common dso_local global i32 0, align 4
@ROTATION_ANGLE = common dso_local global i32 0, align 4
@mmUNP_HW_ROTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i32, %struct.plane_size*)* @program_size_and_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_size_and_rotation(%struct.dce_mem_input* %0, i32 %1, %struct.plane_size* %2) #0 {
  %4 = alloca %struct.dce_mem_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.plane_size*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.plane_size, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.plane_size* %2, %struct.plane_size** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.plane_size*, %struct.plane_size** %6, align 8
  %10 = bitcast %struct.plane_size* %8 to i8*
  %11 = bitcast %struct.plane_size* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 40, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 129
  br i1 %16, label %17, label %46

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @swap(i32 %20, i32 %23)
  %25 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @swap(i32 %27, i32 %30)
  %32 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @swap(i32 %34, i32 %37)
  %39 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @swap(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %17, %14
  store i64 0, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UNP_GRPH_PITCH_L, align 4
  %51 = load i32, i32* @GRPH_PITCH_L, align 4
  %52 = call i32 @set_reg_field_value(i64 %47, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %54 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @mmUNP_GRPH_PITCH_L, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @dm_write_reg(i32 %56, i32 %57, i64 %58)
  store i64 0, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @UNP_GRPH_PITCH_C, align 4
  %64 = load i32, i32* @GRPH_PITCH_C, align 4
  %65 = call i32 @set_reg_field_value(i64 %60, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %67 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @mmUNP_GRPH_PITCH_C, align 4
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @dm_write_reg(i32 %69, i32 %70, i64 %71)
  store i64 0, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* @UNP_GRPH_X_START_L, align 4
  %75 = load i32, i32* @GRPH_X_START_L, align 4
  %76 = call i32 @set_reg_field_value(i64 %73, i32 0, i32 %74, i32 %75)
  %77 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %78 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @mmUNP_GRPH_X_START_L, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @dm_write_reg(i32 %80, i32 %81, i64 %82)
  store i64 0, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* @UNP_GRPH_X_START_C, align 4
  %86 = load i32, i32* @GRPH_X_START_C, align 4
  %87 = call i32 @set_reg_field_value(i64 %84, i32 0, i32 %85, i32 %86)
  %88 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %89 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @mmUNP_GRPH_X_START_C, align 4
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @dm_write_reg(i32 %91, i32 %92, i64 %93)
  store i64 0, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i32, i32* @UNP_GRPH_Y_START_L, align 4
  %97 = load i32, i32* @GRPH_Y_START_L, align 4
  %98 = call i32 @set_reg_field_value(i64 %95, i32 0, i32 %96, i32 %97)
  %99 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %100 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @mmUNP_GRPH_Y_START_L, align 4
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @dm_write_reg(i32 %102, i32 %103, i64 %104)
  store i64 0, i64* %7, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* @UNP_GRPH_Y_START_C, align 4
  %108 = load i32, i32* @GRPH_Y_START_C, align 4
  %109 = call i32 @set_reg_field_value(i64 %106, i32 0, i32 %107, i32 %108)
  %110 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %111 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @mmUNP_GRPH_Y_START_C, align 4
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @dm_write_reg(i32 %113, i32 %114, i64 %115)
  store i64 0, i64* %7, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %120, %123
  %125 = load i32, i32* @UNP_GRPH_X_END_L, align 4
  %126 = load i32, i32* @GRPH_X_END_L, align 4
  %127 = call i32 @set_reg_field_value(i64 %117, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %129 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @mmUNP_GRPH_X_END_L, align 4
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @dm_write_reg(i32 %131, i32 %132, i64 %133)
  store i64 0, i64* %7, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  %143 = load i32, i32* @UNP_GRPH_X_END_C, align 4
  %144 = load i32, i32* @GRPH_X_END_C, align 4
  %145 = call i32 @set_reg_field_value(i64 %135, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %147 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @mmUNP_GRPH_X_END_C, align 4
  %151 = load i64, i64* %7, align 8
  %152 = call i32 @dm_write_reg(i32 %149, i32 %150, i64 %151)
  store i64 0, i64* %7, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %156, %159
  %161 = load i32, i32* @UNP_GRPH_Y_END_L, align 4
  %162 = load i32, i32* @GRPH_Y_END_L, align 4
  %163 = call i32 @set_reg_field_value(i64 %153, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %165 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @mmUNP_GRPH_Y_END_L, align 4
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @dm_write_reg(i32 %167, i32 %168, i64 %169)
  store i64 0, i64* %7, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %8, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %174, %177
  %179 = load i32, i32* @UNP_GRPH_Y_END_C, align 4
  %180 = load i32, i32* @GRPH_Y_END_C, align 4
  %181 = call i32 @set_reg_field_value(i64 %171, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %183 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @mmUNP_GRPH_Y_END_C, align 4
  %187 = load i64, i64* %7, align 8
  %188 = call i32 @dm_write_reg(i32 %185, i32 %186, i64 %187)
  store i64 0, i64* %7, align 8
  %189 = load i32, i32* %5, align 4
  switch i32 %189, label %205 [
    i32 128, label %190
    i32 130, label %195
    i32 129, label %200
  ]

190:                                              ; preds = %46
  %191 = load i64, i64* %7, align 8
  %192 = load i32, i32* @UNP_HW_ROTATION, align 4
  %193 = load i32, i32* @ROTATION_ANGLE, align 4
  %194 = call i32 @set_reg_field_value(i64 %191, i32 3, i32 %192, i32 %193)
  br label %210

195:                                              ; preds = %46
  %196 = load i64, i64* %7, align 8
  %197 = load i32, i32* @UNP_HW_ROTATION, align 4
  %198 = load i32, i32* @ROTATION_ANGLE, align 4
  %199 = call i32 @set_reg_field_value(i64 %196, i32 2, i32 %197, i32 %198)
  br label %210

200:                                              ; preds = %46
  %201 = load i64, i64* %7, align 8
  %202 = load i32, i32* @UNP_HW_ROTATION, align 4
  %203 = load i32, i32* @ROTATION_ANGLE, align 4
  %204 = call i32 @set_reg_field_value(i64 %201, i32 1, i32 %202, i32 %203)
  br label %210

205:                                              ; preds = %46
  %206 = load i64, i64* %7, align 8
  %207 = load i32, i32* @UNP_HW_ROTATION, align 4
  %208 = load i32, i32* @ROTATION_ANGLE, align 4
  %209 = call i32 @set_reg_field_value(i64 %206, i32 0, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %205, %200, %195, %190
  %211 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %212 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @mmUNP_HW_ROTATION, align 4
  %216 = load i64, i64* %7, align 8
  %217 = call i32 @dm_write_reg(i32 %214, i32 %215, i64 %216)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @swap(i32, i32) #2

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #2

declare dso_local i32 @dm_write_reg(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
