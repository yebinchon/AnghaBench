; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_csc_v.c_program_color_matrix_v.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_csc_v.c_program_color_matrix_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.out_csc_color_matrix = type { i32* }

@mmCOL_MAN_OUTPUT_CSC_CONTROL = common dso_local global i32 0, align 4
@COL_MAN_OUTPUT_CSC_CONTROL = common dso_local global i32 0, align 4
@OUTPUT_CSC_MODE = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C11_C12_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C11_C12_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C11_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C12_A = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C13_C14_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C13_C14_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C13_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C14_A = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C21_C22_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C21_C22_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C21_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C22_A = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C23_C24_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C23_C24_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C23_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C24_A = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C31_C32_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C31_C32_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C31_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C32_A = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C33_C34_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C33_C34_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C33_A = common dso_local global i32 0, align 4
@OUTPUT_CSC_C34_A = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C11_C12_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C11_C12_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C11_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C12_B = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C13_C14_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C13_C14_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C13_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C14_B = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C21_C22_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C21_C22_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C21_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C22_B = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C23_C24_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C23_C24_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C23_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C24_B = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C31_C32_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C31_C32_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C31_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C32_B = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_C33_C34_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C33_C34_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C33_B = common dso_local global i32 0, align 4
@OUTPUT_CSC_C34_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.out_csc_color_matrix*, i32)* @program_color_matrix_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_color_matrix_v(%struct.dce_transform* %0, %struct.out_csc_color_matrix* %1, i32 %2) #0 {
  %4 = alloca %struct.dce_transform*, align 8
  %5 = alloca %struct.out_csc_color_matrix*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %4, align 8
  store %struct.out_csc_color_matrix* %1, %struct.out_csc_color_matrix** %5, align 8
  store i32 %2, i32* %6, align 4
  %34 = load %struct.dce_transform*, %struct.dce_transform** %4, align 8
  %35 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.dc_context*, %struct.dc_context** %36, align 8
  store %struct.dc_context* %37, %struct.dc_context** %7, align 8
  %38 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %39 = load i32, i32* @mmCOL_MAN_OUTPUT_CSC_CONTROL, align 4
  %40 = call i32 @dm_read_reg(%struct.dc_context* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %43 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %44 = call i32 @get_reg_field_value(i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 4
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %49 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %50 = call i32 @set_reg_field_value(i32 %47, i32 0, i32 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %196

53:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %54 = load i32, i32* @mmOUTPUT_CSC_C11_C12_A, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %57 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OUTPUT_CSC_C11_C12_A, align 4
  %62 = load i32, i32* @OUTPUT_CSC_C11_A, align 4
  %63 = call i32 @set_reg_field_value(i32 %55, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %66 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @OUTPUT_CSC_C11_C12_A, align 4
  %71 = load i32, i32* @OUTPUT_CSC_C12_A, align 4
  %72 = call i32 @set_reg_field_value(i32 %64, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @dm_write_reg(%struct.dc_context* %73, i32 %74, i32 %75)
  store i32 0, i32* %12, align 4
  %77 = load i32, i32* @mmOUTPUT_CSC_C13_C14_A, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %80 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @OUTPUT_CSC_C13_C14_A, align 4
  %85 = load i32, i32* @OUTPUT_CSC_C13_A, align 4
  %86 = call i32 @set_reg_field_value(i32 %78, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %89 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @OUTPUT_CSC_C13_C14_A, align 4
  %94 = load i32, i32* @OUTPUT_CSC_C14_A, align 4
  %95 = call i32 @set_reg_field_value(i32 %87, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @dm_write_reg(%struct.dc_context* %96, i32 %97, i32 %98)
  store i32 0, i32* %14, align 4
  %100 = load i32, i32* @mmOUTPUT_CSC_C21_C22_A, align 4
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %103 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @OUTPUT_CSC_C21_C22_A, align 4
  %108 = load i32, i32* @OUTPUT_CSC_C21_A, align 4
  %109 = call i32 @set_reg_field_value(i32 %101, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %112 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @OUTPUT_CSC_C21_C22_A, align 4
  %117 = load i32, i32* @OUTPUT_CSC_C22_A, align 4
  %118 = call i32 @set_reg_field_value(i32 %110, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @dm_write_reg(%struct.dc_context* %119, i32 %120, i32 %121)
  store i32 0, i32* %16, align 4
  %123 = load i32, i32* @mmOUTPUT_CSC_C23_C24_A, align 4
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %126 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @OUTPUT_CSC_C23_C24_A, align 4
  %131 = load i32, i32* @OUTPUT_CSC_C23_A, align 4
  %132 = call i32 @set_reg_field_value(i32 %124, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %16, align 4
  %134 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %135 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 7
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @OUTPUT_CSC_C23_C24_A, align 4
  %140 = load i32, i32* @OUTPUT_CSC_C24_A, align 4
  %141 = call i32 @set_reg_field_value(i32 %133, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @dm_write_reg(%struct.dc_context* %142, i32 %143, i32 %144)
  store i32 0, i32* %18, align 4
  %146 = load i32, i32* @mmOUTPUT_CSC_C31_C32_A, align 4
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %149 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @OUTPUT_CSC_C31_C32_A, align 4
  %154 = load i32, i32* @OUTPUT_CSC_C31_A, align 4
  %155 = call i32 @set_reg_field_value(i32 %147, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %158 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 9
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @OUTPUT_CSC_C31_C32_A, align 4
  %163 = load i32, i32* @OUTPUT_CSC_C32_A, align 4
  %164 = call i32 @set_reg_field_value(i32 %156, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @dm_write_reg(%struct.dc_context* %165, i32 %166, i32 %167)
  store i32 0, i32* %20, align 4
  %169 = load i32, i32* @mmOUTPUT_CSC_C33_C34_A, align 4
  store i32 %169, i32* %21, align 4
  %170 = load i32, i32* %20, align 4
  %171 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %172 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 10
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @OUTPUT_CSC_C33_C34_A, align 4
  %177 = load i32, i32* @OUTPUT_CSC_C33_A, align 4
  %178 = call i32 @set_reg_field_value(i32 %170, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %20, align 4
  %180 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %181 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 11
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @OUTPUT_CSC_C33_C34_A, align 4
  %186 = load i32, i32* @OUTPUT_CSC_C34_A, align 4
  %187 = call i32 @set_reg_field_value(i32 %179, i32 %184, i32 %185, i32 %186)
  %188 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %20, align 4
  %191 = call i32 @dm_write_reg(%struct.dc_context* %188, i32 %189, i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %194 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %195 = call i32 @set_reg_field_value(i32 %192, i32 4, i32 %193, i32 %194)
  br label %339

196:                                              ; preds = %3
  store i32 0, i32* %22, align 4
  %197 = load i32, i32* @mmOUTPUT_CSC_C11_C12_B, align 4
  store i32 %197, i32* %23, align 4
  %198 = load i32, i32* %22, align 4
  %199 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %200 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @OUTPUT_CSC_C11_C12_B, align 4
  %205 = load i32, i32* @OUTPUT_CSC_C11_B, align 4
  %206 = call i32 @set_reg_field_value(i32 %198, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %22, align 4
  %208 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %209 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @OUTPUT_CSC_C11_C12_B, align 4
  %214 = load i32, i32* @OUTPUT_CSC_C12_B, align 4
  %215 = call i32 @set_reg_field_value(i32 %207, i32 %212, i32 %213, i32 %214)
  %216 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %217 = load i32, i32* %23, align 4
  %218 = load i32, i32* %22, align 4
  %219 = call i32 @dm_write_reg(%struct.dc_context* %216, i32 %217, i32 %218)
  store i32 0, i32* %24, align 4
  %220 = load i32, i32* @mmOUTPUT_CSC_C13_C14_B, align 4
  store i32 %220, i32* %25, align 4
  %221 = load i32, i32* %24, align 4
  %222 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %223 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @OUTPUT_CSC_C13_C14_B, align 4
  %228 = load i32, i32* @OUTPUT_CSC_C13_B, align 4
  %229 = call i32 @set_reg_field_value(i32 %221, i32 %226, i32 %227, i32 %228)
  %230 = load i32, i32* %24, align 4
  %231 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %232 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @OUTPUT_CSC_C13_C14_B, align 4
  %237 = load i32, i32* @OUTPUT_CSC_C14_B, align 4
  %238 = call i32 @set_reg_field_value(i32 %230, i32 %235, i32 %236, i32 %237)
  %239 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %240 = load i32, i32* %25, align 4
  %241 = load i32, i32* %24, align 4
  %242 = call i32 @dm_write_reg(%struct.dc_context* %239, i32 %240, i32 %241)
  store i32 0, i32* %26, align 4
  %243 = load i32, i32* @mmOUTPUT_CSC_C21_C22_B, align 4
  store i32 %243, i32* %27, align 4
  %244 = load i32, i32* %26, align 4
  %245 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %246 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @OUTPUT_CSC_C21_C22_B, align 4
  %251 = load i32, i32* @OUTPUT_CSC_C21_B, align 4
  %252 = call i32 @set_reg_field_value(i32 %244, i32 %249, i32 %250, i32 %251)
  %253 = load i32, i32* %26, align 4
  %254 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %255 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 5
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @OUTPUT_CSC_C21_C22_B, align 4
  %260 = load i32, i32* @OUTPUT_CSC_C22_B, align 4
  %261 = call i32 @set_reg_field_value(i32 %253, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %263 = load i32, i32* %27, align 4
  %264 = load i32, i32* %26, align 4
  %265 = call i32 @dm_write_reg(%struct.dc_context* %262, i32 %263, i32 %264)
  store i32 0, i32* %28, align 4
  %266 = load i32, i32* @mmOUTPUT_CSC_C23_C24_B, align 4
  store i32 %266, i32* %29, align 4
  %267 = load i32, i32* %28, align 4
  %268 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %269 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 6
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @OUTPUT_CSC_C23_C24_B, align 4
  %274 = load i32, i32* @OUTPUT_CSC_C23_B, align 4
  %275 = call i32 @set_reg_field_value(i32 %267, i32 %272, i32 %273, i32 %274)
  %276 = load i32, i32* %28, align 4
  %277 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %278 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 7
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @OUTPUT_CSC_C23_C24_B, align 4
  %283 = load i32, i32* @OUTPUT_CSC_C24_B, align 4
  %284 = call i32 @set_reg_field_value(i32 %276, i32 %281, i32 %282, i32 %283)
  %285 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %286 = load i32, i32* %29, align 4
  %287 = load i32, i32* %28, align 4
  %288 = call i32 @dm_write_reg(%struct.dc_context* %285, i32 %286, i32 %287)
  store i32 0, i32* %30, align 4
  %289 = load i32, i32* @mmOUTPUT_CSC_C31_C32_B, align 4
  store i32 %289, i32* %31, align 4
  %290 = load i32, i32* %30, align 4
  %291 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %292 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 8
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @OUTPUT_CSC_C31_C32_B, align 4
  %297 = load i32, i32* @OUTPUT_CSC_C31_B, align 4
  %298 = call i32 @set_reg_field_value(i32 %290, i32 %295, i32 %296, i32 %297)
  %299 = load i32, i32* %30, align 4
  %300 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %301 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 9
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @OUTPUT_CSC_C31_C32_B, align 4
  %306 = load i32, i32* @OUTPUT_CSC_C32_B, align 4
  %307 = call i32 @set_reg_field_value(i32 %299, i32 %304, i32 %305, i32 %306)
  %308 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %309 = load i32, i32* %31, align 4
  %310 = load i32, i32* %30, align 4
  %311 = call i32 @dm_write_reg(%struct.dc_context* %308, i32 %309, i32 %310)
  store i32 0, i32* %32, align 4
  %312 = load i32, i32* @mmOUTPUT_CSC_C33_C34_B, align 4
  store i32 %312, i32* %33, align 4
  %313 = load i32, i32* %32, align 4
  %314 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %315 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 10
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @OUTPUT_CSC_C33_C34_B, align 4
  %320 = load i32, i32* @OUTPUT_CSC_C33_B, align 4
  %321 = call i32 @set_reg_field_value(i32 %313, i32 %318, i32 %319, i32 %320)
  %322 = load i32, i32* %32, align 4
  %323 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %324 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 11
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @OUTPUT_CSC_C33_C34_B, align 4
  %329 = load i32, i32* @OUTPUT_CSC_C34_B, align 4
  %330 = call i32 @set_reg_field_value(i32 %322, i32 %327, i32 %328, i32 %329)
  %331 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %332 = load i32, i32* %33, align 4
  %333 = load i32, i32* %32, align 4
  %334 = call i32 @dm_write_reg(%struct.dc_context* %331, i32 %332, i32 %333)
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %337 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %338 = call i32 @set_reg_field_value(i32 %335, i32 5, i32 %336, i32 %337)
  br label %339

339:                                              ; preds = %196, %53
  %340 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %341 = load i32, i32* @mmCOL_MAN_OUTPUT_CSC_CONTROL, align 4
  %342 = load i32, i32* %8, align 4
  %343 = call i32 @dm_write_reg(%struct.dc_context* %340, i32 %341, i32 %342)
  ret void
}

declare dso_local i32 @dm_read_reg(%struct.dc_context*, i32) #1

declare dso_local i32 @get_reg_field_value(i32, i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
