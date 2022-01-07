; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_cm_common.c_cm_helper_convert_to_custom_float.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_cm_common.c_cm_helper_convert_to_custom_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwl_result_data = type { i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32 }
%struct.curve_points3 = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i8*, i32, i8*, i32, i8*, i32, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i32, i8*, i32, i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i8*, i32, i8*, i32, i8*, i32, i8*, i32 }
%struct.custom_float_format = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cm_helper_convert_to_custom_float(%struct.pwl_result_data* %0, %struct.curve_points3* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwl_result_data*, align 8
  %7 = alloca %struct.curve_points3*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.custom_float_format, align 4
  %11 = alloca %struct.pwl_result_data*, align 8
  %12 = alloca i64, align 8
  store %struct.pwl_result_data* %0, %struct.pwl_result_data** %6, align 8
  store %struct.curve_points3* %1, %struct.curve_points3** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  store %struct.pwl_result_data* %13, %struct.pwl_result_data** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %10, i32 0, i32 0
  store i32 6, i32* %14, align 4
  %15 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %10, i32 0, i32 1
  store i32 12, i32* %15, align 4
  %16 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %10, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %18 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %17, i64 0
  %19 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %23 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %22, i64 0
  %24 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = call i32 @convert_to_custom_float_format(i32 %21, %struct.custom_float_format* %10, i8** %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

30:                                               ; preds = %4
  %31 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %32 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %31, i64 0
  %33 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %37 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %36, i64 0
  %38 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = call i32 @convert_to_custom_float_format(i32 %35, %struct.custom_float_format* %10, i8** %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %30
  %43 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

44:                                               ; preds = %30
  %45 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %46 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %45, i64 0
  %47 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %51 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %50, i64 0
  %52 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = call i32 @convert_to_custom_float_format(i32 %49, %struct.custom_float_format* %10, i8** %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %44
  %57 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

58:                                               ; preds = %44
  %59 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %60 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %59, i64 0
  %61 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %65 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %64, i64 0
  %66 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  %68 = call i32 @convert_to_custom_float_format(i32 %63, %struct.custom_float_format* %10, i8** %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %58
  %71 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

72:                                               ; preds = %58
  %73 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %74 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %73, i64 0
  %75 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %79 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %78, i64 0
  %80 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 6
  %82 = call i32 @convert_to_custom_float_format(i32 %77, %struct.custom_float_format* %10, i8** %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %72
  %85 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

86:                                               ; preds = %72
  %87 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %88 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %87, i64 0
  %89 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %93 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %92, i64 0
  %94 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 6
  %96 = call i32 @convert_to_custom_float_format(i32 %91, %struct.custom_float_format* %10, i8** %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %86
  %99 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

100:                                              ; preds = %86
  %101 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %102 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %101, i64 0
  %103 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %107 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %106, i64 0
  %108 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @convert_to_custom_float_format(i32 %105, %struct.custom_float_format* %10, i8** %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %100
  %113 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

114:                                              ; preds = %100
  %115 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %116 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %115, i64 0
  %117 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %121 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %120, i64 0
  %122 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = call i32 @convert_to_custom_float_format(i32 %119, %struct.custom_float_format* %10, i8** %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %114
  %127 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

128:                                              ; preds = %114
  %129 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %130 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %129, i64 0
  %131 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %135 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %134, i64 0
  %136 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = call i32 @convert_to_custom_float_format(i32 %133, %struct.custom_float_format* %10, i8** %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %128
  %141 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %10, i32 0, i32 1
  store i32 10, i32* %143, align 4
  %144 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %10, i32 0, i32 2
  store i32 0, i32* %144, align 4
  %145 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %146 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %145, i64 1
  %147 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %151 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %150, i64 1
  %152 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  %154 = call i32 @convert_to_custom_float_format(i32 %149, %struct.custom_float_format* %10, i8** %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %142
  %157 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

158:                                              ; preds = %142
  %159 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %160 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %159, i64 1
  %161 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %165 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %164, i64 1
  %166 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 4
  %168 = call i32 @convert_to_custom_float_format(i32 %163, %struct.custom_float_format* %10, i8** %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %158
  %171 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

172:                                              ; preds = %158
  %173 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %174 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %173, i64 1
  %175 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %179 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %178, i64 1
  %180 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 4
  %182 = call i32 @convert_to_custom_float_format(i32 %177, %struct.custom_float_format* %10, i8** %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %172
  %185 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

186:                                              ; preds = %172
  %187 = load i32, i32* %9, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %220

189:                                              ; preds = %186
  %190 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %191 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %190, i64 1
  %192 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i8* @dc_fixpt_clamp_u0d14(i32 %194)
  %196 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %197 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %196, i64 1
  %198 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  store i8* %195, i8** %199, align 8
  %200 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %201 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %200, i64 1
  %202 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = call i8* @dc_fixpt_clamp_u0d14(i32 %204)
  %206 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %207 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %206, i64 1
  %208 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  store i8* %205, i8** %209, align 8
  %210 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %211 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %210, i64 1
  %212 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i8* @dc_fixpt_clamp_u0d14(i32 %214)
  %216 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %217 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %216, i64 1
  %218 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  store i8* %215, i8** %219, align 8
  br label %263

220:                                              ; preds = %186
  %221 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %222 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %221, i64 1
  %223 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %227 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %226, i64 1
  %228 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 2
  %230 = call i32 @convert_to_custom_float_format(i32 %225, %struct.custom_float_format* %10, i8** %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %220
  %233 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

234:                                              ; preds = %220
  %235 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %236 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %235, i64 1
  %237 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %241 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %240, i64 1
  %242 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = call i32 @convert_to_custom_float_format(i32 %239, %struct.custom_float_format* %10, i8** %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %234
  %247 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

248:                                              ; preds = %234
  %249 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %250 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %249, i64 1
  %251 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %255 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %254, i64 1
  %256 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  %258 = call i32 @convert_to_custom_float_format(i32 %253, %struct.custom_float_format* %10, i8** %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %248
  %261 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

262:                                              ; preds = %248
  br label %263

263:                                              ; preds = %262, %189
  %264 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %265 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %264, i64 1
  %266 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %270 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %269, i64 1
  %271 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = call i32 @convert_to_custom_float_format(i32 %268, %struct.custom_float_format* %10, i8** %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %263
  %276 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

277:                                              ; preds = %263
  %278 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %279 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %278, i64 1
  %280 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %284 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %283, i64 1
  %285 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = call i32 @convert_to_custom_float_format(i32 %282, %struct.custom_float_format* %10, i8** %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %277
  %290 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

291:                                              ; preds = %277
  %292 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %293 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %292, i64 1
  %294 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.curve_points3*, %struct.curve_points3** %7, align 8
  %298 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %297, i64 1
  %299 = getelementptr inbounds %struct.curve_points3, %struct.curve_points3* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = call i32 @convert_to_custom_float_format(i32 %296, %struct.custom_float_format* %10, i8** %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %291
  %304 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

305:                                              ; preds = %291
  %306 = load i64, i64* %8, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %305
  %309 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %310 = icmp eq %struct.pwl_result_data* %309, null
  br i1 %310, label %314, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %9, align 4
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %314, label %315

314:                                              ; preds = %311, %308, %305
  store i32 1, i32* %5, align 4
  br label %388

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %10, i32 0, i32 1
  store i32 12, i32* %316, align 4
  %317 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %10, i32 0, i32 2
  store i32 1, i32* %317, align 4
  br label %318

318:                                              ; preds = %382, %315
  %319 = load i64, i64* %12, align 8
  %320 = load i64, i64* %8, align 8
  %321 = icmp ne i64 %319, %320
  br i1 %321, label %322, label %387

322:                                              ; preds = %318
  %323 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %324 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %323, i32 0, i32 11
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %327 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %326, i32 0, i32 10
  %328 = call i32 @convert_to_custom_float_format(i32 %325, %struct.custom_float_format* %10, i8** %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %322
  %331 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

332:                                              ; preds = %322
  %333 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %334 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %333, i32 0, i32 9
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %337 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %336, i32 0, i32 8
  %338 = call i32 @convert_to_custom_float_format(i32 %335, %struct.custom_float_format* %10, i8** %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %332
  %341 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

342:                                              ; preds = %332
  %343 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %344 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %343, i32 0, i32 7
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %347 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %346, i32 0, i32 6
  %348 = call i32 @convert_to_custom_float_format(i32 %345, %struct.custom_float_format* %10, i8** %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %342
  %351 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

352:                                              ; preds = %342
  %353 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %354 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %357 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %356, i32 0, i32 4
  %358 = call i32 @convert_to_custom_float_format(i32 %355, %struct.custom_float_format* %10, i8** %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %352
  %361 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

362:                                              ; preds = %352
  %363 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %364 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %367 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %366, i32 0, i32 2
  %368 = call i32 @convert_to_custom_float_format(i32 %365, %struct.custom_float_format* %10, i8** %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %362
  %371 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

372:                                              ; preds = %362
  %373 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %374 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %377 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %376, i32 0, i32 0
  %378 = call i32 @convert_to_custom_float_format(i32 %375, %struct.custom_float_format* %10, i8** %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %382, label %380

380:                                              ; preds = %372
  %381 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %388

382:                                              ; preds = %372
  %383 = load %struct.pwl_result_data*, %struct.pwl_result_data** %11, align 8
  %384 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %383, i32 1
  store %struct.pwl_result_data* %384, %struct.pwl_result_data** %11, align 8
  %385 = load i64, i64* %12, align 8
  %386 = add nsw i64 %385, 1
  store i64 %386, i64* %12, align 8
  br label %318

387:                                              ; preds = %318
  store i32 1, i32* %5, align 4
  br label %388

388:                                              ; preds = %387, %380, %370, %360, %350, %340, %330, %314, %303, %289, %275, %260, %246, %232, %184, %170, %156, %140, %126, %112, %98, %84, %70, %56, %42, %28
  %389 = load i32, i32* %5, align 4
  ret i32 %389
}

declare dso_local i32 @convert_to_custom_float_format(i32, %struct.custom_float_format*, i8**) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i8* @dc_fixpt_clamp_u0d14(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
