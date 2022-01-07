; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_auto.c_display_pipe_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_auto.c_display_pipe_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn_bw_internal_vars = type { double*, i32, i32**, i64*, double*, i32, i32*, i64*, double, double, i64*, double, double, double, double, i64*, double, double, double, double, i64, i32, i32*, i32*, double, i32, double, i32, double, i32*, i32*, double*, double*, i32*, i32 }

@dcn_bw_yes = common dso_local global i64 0, align 8
@dcn_bw_no = common dso_local global i64 0, align 8
@dcn_bw_rgb_sub_64 = common dso_local global i64 0, align 8
@dcn_bw_rgb_sub_32 = common dso_local global i64 0, align 8
@dcn_bw_rgb_sub_16 = common dso_local global i64 0, align 8
@dcn_bw_yuv420_sub_8 = common dso_local global i64 0, align 8
@dcn_bw_sw_linear = common dso_local global i64 0, align 8
@dcn_bw_hor = common dso_local global i64 0, align 8
@dcn_bw_sw_4_kb_s = common dso_local global i64 0, align 8
@dcn_bw_sw_4_kb_s_x = common dso_local global i64 0, align 8
@dcn_bw_sw_64_kb_s = common dso_local global i64 0, align 8
@dcn_bw_sw_64_kb_s_t = common dso_local global i64 0, align 8
@dcn_bw_sw_64_kb_s_x = common dso_local global i64 0, align 8
@dcn_bw_sw_var_s = common dso_local global i64 0, align 8
@dcn_bw_sw_var_s_x = common dso_local global i64 0, align 8
@dcn_bw_yuv420_sub_10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_pipe_configuration(%struct.dcn_bw_internal_vars* %0) #0 {
  %2 = alloca %struct.dcn_bw_internal_vars*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dcn_bw_internal_vars* %0, %struct.dcn_bw_internal_vars** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %53, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 1
  br i1 %7, label %8, label %56

8:                                                ; preds = %5
  %9 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %10 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %9, i32 0, i32 0
  %11 = load double*, double** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double, double* %11, i64 %13
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %49, %8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %18 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = icmp sle i32 %16, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %15
  %23 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %24 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %23, i32 0, i32 0
  %25 = load double*, double** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %31 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to double
  %42 = fadd double %29, %41
  %43 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %44 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %43, i32 0, i32 0
  %45 = load double*, double** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  store double %42, double* %48, align 8
  br label %49

49:                                               ; preds = %22
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %15

52:                                               ; preds = %15
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %5

56:                                               ; preds = %5
  %57 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %58 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @dcn_bw_yes, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %66 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @dcn_bw_no, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %121, label %72

72:                                               ; preds = %64, %56
  %73 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %74 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %79 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %131

84:                                               ; preds = %72
  %85 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %86 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %85, i32 0, i32 0
  %87 = load double*, double** %86, align 8
  %88 = getelementptr inbounds double, double* %87, i64 0
  %89 = load double, double* %88, align 8
  %90 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %91 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %90, i32 0, i32 0
  %92 = load double*, double** %91, align 8
  %93 = getelementptr inbounds double, double* %92, i64 1
  %94 = load double, double* %93, align 8
  %95 = fcmp olt double %89, %94
  br i1 %95, label %121, label %96

96:                                               ; preds = %84
  %97 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %98 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %97, i32 0, i32 0
  %99 = load double*, double** %98, align 8
  %100 = getelementptr inbounds double, double* %99, i64 0
  %101 = load double, double* %100, align 8
  %102 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %103 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %102, i32 0, i32 0
  %104 = load double*, double** %103, align 8
  %105 = getelementptr inbounds double, double* %104, i64 1
  %106 = load double, double* %105, align 8
  %107 = fcmp oeq double %101, %106
  br i1 %107, label %108, label %131

108:                                              ; preds = %96
  %109 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %110 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %109, i32 0, i32 4
  %111 = load double*, double** %110, align 8
  %112 = getelementptr inbounds double, double* %111, i64 0
  %113 = load double, double* %112, align 8
  %114 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %115 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %114, i32 0, i32 4
  %116 = load double*, double** %115, align 8
  %117 = getelementptr inbounds double, double* %116, i64 1
  %118 = load double, double* %117, align 8
  %119 = fmul double 5.000000e-01, %118
  %120 = fcmp ole double %113, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %108, %84, %64
  %122 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %123 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %122, i32 0, i32 5
  store i32 1, i32* %123, align 8
  %124 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %125 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %124, i32 0, i32 33
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %130 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %129, i32 0, i32 34
  store i32 %128, i32* %130, align 8
  br label %141

131:                                              ; preds = %108, %96, %72
  %132 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %133 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %132, i32 0, i32 5
  store i32 2, i32* %133, align 8
  %134 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %135 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %134, i32 0, i32 33
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %140 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %139, i32 0, i32 34
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %131, %121
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %170, %141
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %145 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  %148 = icmp sle i32 %143, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %142
  %150 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %151 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %150, i32 0, i32 2
  %152 = load i32**, i32*** %151, align 8
  %153 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %154 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %152, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %165 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %164, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %163, i32* %169, align 4
  br label %170

170:                                              ; preds = %149
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %142

173:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %1009, %173
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %177 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  %180 = icmp sle i32 %175, %179
  br i1 %180, label %181, label %1012

181:                                              ; preds = %174
  %182 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %183 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %182, i32 0, i32 7
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @dcn_bw_rgb_sub_64, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %181
  %192 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %193 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %192, i32 0, i32 8
  store double 8.000000e+00, double* %193, align 8
  %194 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %195 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %194, i32 0, i32 9
  store double 0.000000e+00, double* %195, align 8
  br label %249

196:                                              ; preds = %181
  %197 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %198 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %197, i32 0, i32 7
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @dcn_bw_rgb_sub_32, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %196
  %207 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %208 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %207, i32 0, i32 8
  store double 4.000000e+00, double* %208, align 8
  %209 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %210 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %209, i32 0, i32 9
  store double 0.000000e+00, double* %210, align 8
  br label %248

211:                                              ; preds = %196
  %212 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %213 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %212, i32 0, i32 7
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @dcn_bw_rgb_sub_16, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %211
  %222 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %223 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %222, i32 0, i32 8
  store double 2.000000e+00, double* %223, align 8
  %224 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %225 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %224, i32 0, i32 9
  store double 0.000000e+00, double* %225, align 8
  br label %247

226:                                              ; preds = %211
  %227 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %228 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %227, i32 0, i32 7
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @dcn_bw_yuv420_sub_8, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %226
  %237 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %238 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %237, i32 0, i32 8
  store double 1.000000e+00, double* %238, align 8
  %239 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %240 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %239, i32 0, i32 9
  store double 2.000000e+00, double* %240, align 8
  br label %246

241:                                              ; preds = %226
  %242 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %243 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %242, i32 0, i32 8
  store double 0x3FF5555560000000, double* %243, align 8
  %244 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %245 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %244, i32 0, i32 9
  store double 0x4005555560000000, double* %245, align 8
  br label %246

246:                                              ; preds = %241, %236
  br label %247

247:                                              ; preds = %246, %221
  br label %248

248:                                              ; preds = %247, %206
  br label %249

249:                                              ; preds = %248, %191
  %250 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %251 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %250, i32 0, i32 7
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @dcn_bw_rgb_sub_64, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %279, label %259

259:                                              ; preds = %249
  %260 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %261 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %260, i32 0, i32 7
  %262 = load i64*, i64** %261, align 8
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @dcn_bw_rgb_sub_32, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %279, label %269

269:                                              ; preds = %259
  %270 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %271 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %270, i32 0, i32 7
  %272 = load i64*, i64** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @dcn_bw_rgb_sub_16, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %326

279:                                              ; preds = %269, %259, %249
  %280 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %281 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %280, i32 0, i32 10
  %282 = load i64*, i64** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @dcn_bw_sw_linear, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %279
  %290 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %291 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %290, i32 0, i32 11
  store double 1.000000e+00, double* %291, align 8
  br label %309

292:                                              ; preds = %279
  %293 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %294 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %293, i32 0, i32 7
  %295 = load i64*, i64** %294, align 8
  %296 = load i32, i32* %4, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @dcn_bw_rgb_sub_64, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %292
  %303 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %304 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %303, i32 0, i32 11
  store double 4.000000e+00, double* %304, align 8
  br label %308

305:                                              ; preds = %292
  %306 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %307 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %306, i32 0, i32 11
  store double 8.000000e+00, double* %307, align 8
  br label %308

308:                                              ; preds = %305, %302
  br label %309

309:                                              ; preds = %308, %289
  %310 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %311 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %310, i32 0, i32 8
  %312 = load double, double* %311, align 8
  %313 = call i32 @dcn_bw_ceil2(double %312, double 1.000000e+00)
  %314 = sitofp i32 %313 to double
  %315 = fdiv double 2.560000e+02, %314
  %316 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %317 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %316, i32 0, i32 11
  %318 = load double, double* %317, align 8
  %319 = fdiv double %315, %318
  %320 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %321 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %320, i32 0, i32 12
  store double %319, double* %321, align 8
  %322 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %323 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %322, i32 0, i32 13
  store double 0.000000e+00, double* %323, align 8
  %324 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %325 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %324, i32 0, i32 14
  store double 0.000000e+00, double* %325, align 8
  br label %387

326:                                              ; preds = %269
  %327 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %328 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %327, i32 0, i32 10
  %329 = load i64*, i64** %328, align 8
  %330 = load i32, i32* %4, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %329, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @dcn_bw_sw_linear, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %326
  %337 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %338 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %337, i32 0, i32 11
  store double 1.000000e+00, double* %338, align 8
  %339 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %340 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %339, i32 0, i32 13
  store double 1.000000e+00, double* %340, align 8
  br label %362

341:                                              ; preds = %326
  %342 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %343 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %342, i32 0, i32 7
  %344 = load i64*, i64** %343, align 8
  %345 = load i32, i32* %4, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @dcn_bw_yuv420_sub_8, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %341
  %352 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %353 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %352, i32 0, i32 11
  store double 1.600000e+01, double* %353, align 8
  %354 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %355 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %354, i32 0, i32 13
  store double 8.000000e+00, double* %355, align 8
  br label %361

356:                                              ; preds = %341
  %357 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %358 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %357, i32 0, i32 11
  store double 8.000000e+00, double* %358, align 8
  %359 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %360 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %359, i32 0, i32 13
  store double 8.000000e+00, double* %360, align 8
  br label %361

361:                                              ; preds = %356, %351
  br label %362

362:                                              ; preds = %361, %336
  %363 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %364 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %363, i32 0, i32 8
  %365 = load double, double* %364, align 8
  %366 = call i32 @dcn_bw_ceil2(double %365, double 1.000000e+00)
  %367 = sitofp i32 %366 to double
  %368 = fdiv double 2.560000e+02, %367
  %369 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %370 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %369, i32 0, i32 11
  %371 = load double, double* %370, align 8
  %372 = fdiv double %368, %371
  %373 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %374 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %373, i32 0, i32 12
  store double %372, double* %374, align 8
  %375 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %376 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %375, i32 0, i32 9
  %377 = load double, double* %376, align 8
  %378 = call i32 @dcn_bw_ceil2(double %377, double 2.000000e+00)
  %379 = sitofp i32 %378 to double
  %380 = fdiv double 2.560000e+02, %379
  %381 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %382 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %381, i32 0, i32 13
  %383 = load double, double* %382, align 8
  %384 = fdiv double %380, %383
  %385 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %386 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %385, i32 0, i32 14
  store double %384, double* %386, align 8
  br label %387

387:                                              ; preds = %362, %309
  %388 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %389 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %388, i32 0, i32 15
  %390 = load i64*, i64** %389, align 8
  %391 = load i32, i32* %4, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i64, i64* %390, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @dcn_bw_hor, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %408

397:                                              ; preds = %387
  %398 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %399 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %398, i32 0, i32 11
  %400 = load double, double* %399, align 8
  %401 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %402 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %401, i32 0, i32 16
  store double %400, double* %402, align 8
  %403 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %404 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %403, i32 0, i32 13
  %405 = load double, double* %404, align 8
  %406 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %407 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %406, i32 0, i32 17
  store double %405, double* %407, align 8
  br label %419

408:                                              ; preds = %387
  %409 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %410 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %409, i32 0, i32 12
  %411 = load double, double* %410, align 8
  %412 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %413 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %412, i32 0, i32 16
  store double %411, double* %413, align 8
  %414 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %415 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %414, i32 0, i32 14
  %416 = load double, double* %415, align 8
  %417 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %418 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %417, i32 0, i32 17
  store double %416, double* %418, align 8
  br label %419

419:                                              ; preds = %408, %397
  %420 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %421 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %420, i32 0, i32 7
  %422 = load i64*, i64** %421, align 8
  %423 = load i32, i32* %4, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64, i64* %422, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @dcn_bw_rgb_sub_64, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %449, label %429

429:                                              ; preds = %419
  %430 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %431 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %430, i32 0, i32 7
  %432 = load i64*, i64** %431, align 8
  %433 = load i32, i32* %4, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i64, i64* %432, i64 %434
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @dcn_bw_rgb_sub_32, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %449, label %439

439:                                              ; preds = %429
  %440 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %441 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %440, i32 0, i32 7
  %442 = load i64*, i64** %441, align 8
  %443 = load i32, i32* %4, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i64, i64* %442, i64 %444
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @dcn_bw_rgb_sub_16, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %568

449:                                              ; preds = %439, %429, %419
  %450 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %451 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %450, i32 0, i32 10
  %452 = load i64*, i64** %451, align 8
  %453 = load i32, i32* %4, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i64, i64* %452, i64 %454
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @dcn_bw_sw_linear, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %549, label %459

459:                                              ; preds = %449
  %460 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %461 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %460, i32 0, i32 7
  %462 = load i64*, i64** %461, align 8
  %463 = load i32, i32* %4, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i64, i64* %462, i64 %464
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @dcn_bw_rgb_sub_64, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %555

469:                                              ; preds = %459
  %470 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %471 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %470, i32 0, i32 10
  %472 = load i64*, i64** %471, align 8
  %473 = load i32, i32* %4, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i64, i64* %472, i64 %474
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @dcn_bw_sw_4_kb_s, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %539, label %479

479:                                              ; preds = %469
  %480 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %481 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %480, i32 0, i32 10
  %482 = load i64*, i64** %481, align 8
  %483 = load i32, i32* %4, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i64, i64* %482, i64 %484
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @dcn_bw_sw_4_kb_s_x, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %539, label %489

489:                                              ; preds = %479
  %490 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %491 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %490, i32 0, i32 10
  %492 = load i64*, i64** %491, align 8
  %493 = load i32, i32* %4, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i64, i64* %492, i64 %494
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @dcn_bw_sw_64_kb_s, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %539, label %499

499:                                              ; preds = %489
  %500 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %501 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %500, i32 0, i32 10
  %502 = load i64*, i64** %501, align 8
  %503 = load i32, i32* %4, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i64, i64* %502, i64 %504
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @dcn_bw_sw_64_kb_s_t, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %539, label %509

509:                                              ; preds = %499
  %510 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %511 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %510, i32 0, i32 10
  %512 = load i64*, i64** %511, align 8
  %513 = load i32, i32* %4, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i64, i64* %512, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @dcn_bw_sw_64_kb_s_x, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %539, label %519

519:                                              ; preds = %509
  %520 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %521 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %520, i32 0, i32 10
  %522 = load i64*, i64** %521, align 8
  %523 = load i32, i32* %4, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i64, i64* %522, i64 %524
  %526 = load i64, i64* %525, align 8
  %527 = load i64, i64* @dcn_bw_sw_var_s, align 8
  %528 = icmp eq i64 %526, %527
  br i1 %528, label %539, label %529

529:                                              ; preds = %519
  %530 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %531 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %530, i32 0, i32 10
  %532 = load i64*, i64** %531, align 8
  %533 = load i32, i32* %4, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i64, i64* %532, i64 %534
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* @dcn_bw_sw_var_s_x, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %539, label %555

539:                                              ; preds = %529, %519, %509, %499, %489, %479, %469
  %540 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %541 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %540, i32 0, i32 15
  %542 = load i64*, i64** %541, align 8
  %543 = load i32, i32* %4, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i64, i64* %542, i64 %544
  %546 = load i64, i64* %545, align 8
  %547 = load i64, i64* @dcn_bw_hor, align 8
  %548 = icmp eq i64 %546, %547
  br i1 %548, label %549, label %555

549:                                              ; preds = %539, %449
  %550 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %551 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %550, i32 0, i32 16
  %552 = load double, double* %551, align 8
  %553 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %554 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %553, i32 0, i32 18
  store double %552, double* %554, align 8
  br label %562

555:                                              ; preds = %539, %529, %459
  %556 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %557 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %556, i32 0, i32 16
  %558 = load double, double* %557, align 8
  %559 = fdiv double %558, 2.000000e+00
  %560 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %561 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %560, i32 0, i32 18
  store double %559, double* %561, align 8
  br label %562

562:                                              ; preds = %555, %549
  %563 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %564 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %563, i32 0, i32 17
  %565 = load double, double* %564, align 8
  %566 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %567 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %566, i32 0, i32 19
  store double %565, double* %567, align 8
  br label %695

568:                                              ; preds = %439
  %569 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %570 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %569, i32 0, i32 10
  %571 = load i64*, i64** %570, align 8
  %572 = load i32, i32* %4, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i64, i64* %571, i64 %573
  %575 = load i64, i64* %574, align 8
  %576 = load i64, i64* @dcn_bw_sw_linear, align 8
  %577 = icmp eq i64 %575, %576
  br i1 %577, label %578, label %589

578:                                              ; preds = %568
  %579 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %580 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %579, i32 0, i32 16
  %581 = load double, double* %580, align 8
  %582 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %583 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %582, i32 0, i32 18
  store double %581, double* %583, align 8
  %584 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %585 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %584, i32 0, i32 17
  %586 = load double, double* %585, align 8
  %587 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %588 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %587, i32 0, i32 19
  store double %586, double* %588, align 8
  br label %694

589:                                              ; preds = %568
  %590 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %591 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %590, i32 0, i32 7
  %592 = load i64*, i64** %591, align 8
  %593 = load i32, i32* %4, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i64, i64* %592, i64 %594
  %596 = load i64, i64* %595, align 8
  %597 = load i64, i64* @dcn_bw_yuv420_sub_8, align 8
  %598 = icmp eq i64 %596, %597
  br i1 %598, label %599, label %635

599:                                              ; preds = %589
  %600 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %601 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %600, i32 0, i32 15
  %602 = load i64*, i64** %601, align 8
  %603 = load i32, i32* %4, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i64, i64* %602, i64 %604
  %606 = load i64, i64* %605, align 8
  %607 = load i64, i64* @dcn_bw_hor, align 8
  %608 = icmp eq i64 %606, %607
  br i1 %608, label %609, label %635

609:                                              ; preds = %599
  %610 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %611 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %610, i32 0, i32 16
  %612 = load double, double* %611, align 8
  %613 = fdiv double %612, 2.000000e+00
  %614 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %615 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %614, i32 0, i32 18
  store double %613, double* %615, align 8
  %616 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %617 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %616, i32 0, i32 20
  %618 = load i64, i64* %617, align 8
  %619 = load i64, i64* @dcn_bw_yes, align 8
  %620 = icmp eq i64 %618, %619
  br i1 %620, label %621, label %627

621:                                              ; preds = %609
  %622 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %623 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %622, i32 0, i32 17
  %624 = load double, double* %623, align 8
  %625 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %626 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %625, i32 0, i32 19
  store double %624, double* %626, align 8
  br label %634

627:                                              ; preds = %609
  %628 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %629 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %628, i32 0, i32 17
  %630 = load double, double* %629, align 8
  %631 = fdiv double %630, 2.000000e+00
  %632 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %633 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %632, i32 0, i32 19
  store double %631, double* %633, align 8
  br label %634

634:                                              ; preds = %627, %621
  br label %693

635:                                              ; preds = %599, %589
  %636 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %637 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %636, i32 0, i32 7
  %638 = load i64*, i64** %637, align 8
  %639 = load i32, i32* %4, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i64, i64* %638, i64 %640
  %642 = load i64, i64* %641, align 8
  %643 = load i64, i64* @dcn_bw_yuv420_sub_10, align 8
  %644 = icmp eq i64 %642, %643
  br i1 %644, label %645, label %681

645:                                              ; preds = %635
  %646 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %647 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %646, i32 0, i32 15
  %648 = load i64*, i64** %647, align 8
  %649 = load i32, i32* %4, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i64, i64* %648, i64 %650
  %652 = load i64, i64* %651, align 8
  %653 = load i64, i64* @dcn_bw_hor, align 8
  %654 = icmp eq i64 %652, %653
  br i1 %654, label %655, label %681

655:                                              ; preds = %645
  %656 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %657 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %656, i32 0, i32 17
  %658 = load double, double* %657, align 8
  %659 = fdiv double %658, 2.000000e+00
  %660 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %661 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %660, i32 0, i32 19
  store double %659, double* %661, align 8
  %662 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %663 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %662, i32 0, i32 20
  %664 = load i64, i64* %663, align 8
  %665 = load i64, i64* @dcn_bw_yes, align 8
  %666 = icmp eq i64 %664, %665
  br i1 %666, label %667, label %673

667:                                              ; preds = %655
  %668 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %669 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %668, i32 0, i32 16
  %670 = load double, double* %669, align 8
  %671 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %672 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %671, i32 0, i32 18
  store double %670, double* %672, align 8
  br label %680

673:                                              ; preds = %655
  %674 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %675 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %674, i32 0, i32 16
  %676 = load double, double* %675, align 8
  %677 = fdiv double %676, 2.000000e+00
  %678 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %679 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %678, i32 0, i32 18
  store double %677, double* %679, align 8
  br label %680

680:                                              ; preds = %673, %667
  br label %692

681:                                              ; preds = %645, %635
  %682 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %683 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %682, i32 0, i32 16
  %684 = load double, double* %683, align 8
  %685 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %686 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %685, i32 0, i32 18
  store double %684, double* %686, align 8
  %687 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %688 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %687, i32 0, i32 17
  %689 = load double, double* %688, align 8
  %690 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %691 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %690, i32 0, i32 19
  store double %689, double* %691, align 8
  br label %692

692:                                              ; preds = %681, %680
  br label %693

693:                                              ; preds = %692, %634
  br label %694

694:                                              ; preds = %693, %578
  br label %695

695:                                              ; preds = %694, %562
  %696 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %697 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %696, i32 0, i32 15
  %698 = load i64*, i64** %697, align 8
  %699 = load i32, i32* %4, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i64, i64* %698, i64 %700
  %702 = load i64, i64* %701, align 8
  %703 = load i64, i64* @dcn_bw_hor, align 8
  %704 = icmp eq i64 %702, %703
  br i1 %704, label %705, label %723

705:                                              ; preds = %695
  %706 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %707 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %706, i32 0, i32 22
  %708 = load i32*, i32** %707, align 8
  %709 = load i32, i32* %4, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %708, i64 %710
  %712 = load i32, i32* %711, align 4
  %713 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %714 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %713, i32 0, i32 6
  %715 = load i32*, i32** %714, align 8
  %716 = load i32, i32* %4, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i32, i32* %715, i64 %717
  %719 = load i32, i32* %718, align 4
  %720 = sdiv i32 %712, %719
  %721 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %722 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %721, i32 0, i32 21
  store i32 %720, i32* %722, align 8
  br label %741

723:                                              ; preds = %695
  %724 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %725 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %724, i32 0, i32 23
  %726 = load i32*, i32** %725, align 8
  %727 = load i32, i32* %4, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i32, i32* %726, i64 %728
  %730 = load i32, i32* %729, align 4
  %731 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %732 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %731, i32 0, i32 6
  %733 = load i32*, i32** %732, align 8
  %734 = load i32, i32* %4, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %733, i64 %735
  %737 = load i32, i32* %736, align 4
  %738 = sdiv i32 %730, %737
  %739 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %740 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %739, i32 0, i32 21
  store i32 %738, i32* %740, align 8
  br label %741

741:                                              ; preds = %723, %705
  %742 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %743 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %742, i32 0, i32 8
  %744 = load double, double* %743, align 8
  %745 = call i32 @dcn_bw_ceil2(double %744, double 1.000000e+00)
  %746 = sitofp i32 %745 to double
  %747 = fdiv double 2.560000e+02, %746
  %748 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %749 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %748, i32 0, i32 16
  %750 = load double, double* %749, align 8
  %751 = fdiv double %747, %750
  %752 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %753 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %752, i32 0, i32 24
  store double %751, double* %753, align 8
  %754 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %755 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %754, i32 0, i32 21
  %756 = load i32, i32* %755, align 8
  %757 = sitofp i32 %756 to double
  %758 = fsub double %757, 1.000000e+00
  %759 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %760 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %759, i32 0, i32 24
  %761 = load double, double* %760, align 8
  %762 = call i32 @dcn_bw_ceil2(double %758, double %761)
  %763 = sitofp i32 %762 to double
  %764 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %765 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %764, i32 0, i32 24
  %766 = load double, double* %765, align 8
  %767 = fadd double %763, %766
  %768 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %769 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %768, i32 0, i32 8
  %770 = load double, double* %769, align 8
  %771 = fmul double %767, %770
  %772 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %773 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %772, i32 0, i32 16
  %774 = load double, double* %773, align 8
  %775 = fmul double %771, %774
  %776 = fptosi double %775 to i32
  %777 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %778 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %777, i32 0, i32 25
  store i32 %776, i32* %778, align 8
  %779 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %780 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %779, i32 0, i32 7
  %781 = load i64*, i64** %780, align 8
  %782 = load i32, i32* %4, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i64, i64* %781, i64 %783
  %785 = load i64, i64* %784, align 8
  %786 = load i64, i64* @dcn_bw_yuv420_sub_10, align 8
  %787 = icmp eq i64 %785, %786
  br i1 %787, label %788, label %797

788:                                              ; preds = %741
  %789 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %790 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %789, i32 0, i32 25
  %791 = load i32, i32* %790, align 8
  %792 = sitofp i32 %791 to double
  %793 = call i32 @dcn_bw_ceil2(double %792, double 2.560000e+02)
  %794 = add nsw i32 %793, 256
  %795 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %796 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %795, i32 0, i32 25
  store i32 %794, i32* %796, align 8
  br label %797

797:                                              ; preds = %788, %741
  %798 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %799 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %798, i32 0, i32 17
  %800 = load double, double* %799, align 8
  %801 = fcmp ogt double %800, 0.000000e+00
  br i1 %801, label %802, label %815

802:                                              ; preds = %797
  %803 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %804 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %803, i32 0, i32 9
  %805 = load double, double* %804, align 8
  %806 = call i32 @dcn_bw_ceil2(double %805, double 2.000000e+00)
  %807 = sitofp i32 %806 to double
  %808 = fdiv double 2.560000e+02, %807
  %809 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %810 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %809, i32 0, i32 17
  %811 = load double, double* %810, align 8
  %812 = fdiv double %808, %811
  %813 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %814 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %813, i32 0, i32 26
  store double %812, double* %814, align 8
  br label %815

815:                                              ; preds = %802, %797
  %816 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %817 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %816, i32 0, i32 21
  %818 = load i32, i32* %817, align 8
  %819 = sitofp i32 %818 to double
  %820 = fdiv double %819, 2.000000e+00
  %821 = fsub double %820, 1.000000e+00
  %822 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %823 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %822, i32 0, i32 26
  %824 = load double, double* %823, align 8
  %825 = call i32 @dcn_bw_ceil2(double %821, double %824)
  %826 = sitofp i32 %825 to double
  %827 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %828 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %827, i32 0, i32 26
  %829 = load double, double* %828, align 8
  %830 = fadd double %826, %829
  %831 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %832 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %831, i32 0, i32 9
  %833 = load double, double* %832, align 8
  %834 = fmul double %830, %833
  %835 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %836 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %835, i32 0, i32 17
  %837 = load double, double* %836, align 8
  %838 = fmul double %834, %837
  %839 = fptosi double %838 to i32
  %840 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %841 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %840, i32 0, i32 27
  store i32 %839, i32* %841, align 8
  %842 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %843 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %842, i32 0, i32 7
  %844 = load i64*, i64** %843, align 8
  %845 = load i32, i32* %4, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i64, i64* %844, i64 %846
  %848 = load i64, i64* %847, align 8
  %849 = load i64, i64* @dcn_bw_yuv420_sub_10, align 8
  %850 = icmp eq i64 %848, %849
  br i1 %850, label %851, label %860

851:                                              ; preds = %815
  %852 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %853 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %852, i32 0, i32 27
  %854 = load i32, i32* %853, align 8
  %855 = sitofp i32 %854 to double
  %856 = call i32 @dcn_bw_ceil2(double %855, double 2.560000e+02)
  %857 = add nsw i32 %856, 256
  %858 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %859 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %858, i32 0, i32 27
  store i32 %857, i32* %859, align 8
  br label %860

860:                                              ; preds = %851, %815
  %861 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %862 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %861, i32 0, i32 25
  %863 = load i32, i32* %862, align 8
  %864 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %865 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %864, i32 0, i32 27
  %866 = load i32, i32* %865, align 8
  %867 = add nsw i32 %863, %866
  %868 = sitofp i32 %867 to double
  %869 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %870 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %869, i32 0, i32 28
  %871 = load double, double* %870, align 8
  %872 = fmul double %871, 1.024000e+03
  %873 = fdiv double %872, 2.000000e+00
  %874 = fcmp ole double %868, %873
  br i1 %874, label %875, label %896

875:                                              ; preds = %860
  %876 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %877 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %876, i32 0, i32 16
  %878 = load double, double* %877, align 8
  %879 = fptosi double %878 to i32
  %880 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %881 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %880, i32 0, i32 29
  %882 = load i32*, i32** %881, align 8
  %883 = load i32, i32* %4, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds i32, i32* %882, i64 %884
  store i32 %879, i32* %885, align 4
  %886 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %887 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %886, i32 0, i32 17
  %888 = load double, double* %887, align 8
  %889 = fptosi double %888 to i32
  %890 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %891 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %890, i32 0, i32 30
  %892 = load i32*, i32** %891, align 8
  %893 = load i32, i32* %4, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32, i32* %892, i64 %894
  store i32 %889, i32* %895, align 4
  br label %917

896:                                              ; preds = %860
  %897 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %898 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %897, i32 0, i32 18
  %899 = load double, double* %898, align 8
  %900 = fptosi double %899 to i32
  %901 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %902 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %901, i32 0, i32 29
  %903 = load i32*, i32** %902, align 8
  %904 = load i32, i32* %4, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds i32, i32* %903, i64 %905
  store i32 %900, i32* %906, align 4
  %907 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %908 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %907, i32 0, i32 19
  %909 = load double, double* %908, align 8
  %910 = fptosi double %909 to i32
  %911 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %912 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %911, i32 0, i32 30
  %913 = load i32*, i32** %912, align 8
  %914 = load i32, i32* %4, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds i32, i32* %913, i64 %915
  store i32 %910, i32* %916, align 4
  br label %917

917:                                              ; preds = %896, %875
  %918 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %919 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %918, i32 0, i32 30
  %920 = load i32*, i32** %919, align 8
  %921 = load i32, i32* %4, align 4
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds i32, i32* %920, i64 %922
  %924 = load i32, i32* %923, align 4
  %925 = sitofp i32 %924 to double
  %926 = fcmp oeq double %925, 0.000000e+00
  br i1 %926, label %927, label %944

927:                                              ; preds = %917
  %928 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %929 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %928, i32 0, i32 28
  %930 = load double, double* %929, align 8
  %931 = fmul double %930, 1.024000e+03
  %932 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %933 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %932, i32 0, i32 31
  %934 = load double*, double** %933, align 8
  %935 = load i32, i32* %4, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds double, double* %934, i64 %936
  store double %931, double* %937, align 8
  %938 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %939 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %938, i32 0, i32 32
  %940 = load double*, double** %939, align 8
  %941 = load i32, i32* %4, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds double, double* %940, i64 %942
  store double 0.000000e+00, double* %943, align 8
  br label %1008

944:                                              ; preds = %917
  %945 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %946 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %945, i32 0, i32 29
  %947 = load i32*, i32** %946, align 8
  %948 = load i32, i32* %4, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds i32, i32* %947, i64 %949
  %951 = load i32, i32* %950, align 4
  %952 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %953 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %952, i32 0, i32 30
  %954 = load i32*, i32** %953, align 8
  %955 = load i32, i32* %4, align 4
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds i32, i32* %954, i64 %956
  %958 = load i32, i32* %957, align 4
  %959 = icmp sle i32 %951, %958
  br i1 %959, label %960, label %983

960:                                              ; preds = %944
  %961 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %962 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %961, i32 0, i32 28
  %963 = load double, double* %962, align 8
  %964 = fmul double %963, 1.024000e+03
  %965 = fdiv double %964, 2.000000e+00
  %966 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %967 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %966, i32 0, i32 31
  %968 = load double*, double** %967, align 8
  %969 = load i32, i32* %4, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds double, double* %968, i64 %970
  store double %965, double* %971, align 8
  %972 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %973 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %972, i32 0, i32 28
  %974 = load double, double* %973, align 8
  %975 = fmul double %974, 1.024000e+03
  %976 = fdiv double %975, 2.000000e+00
  %977 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %978 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %977, i32 0, i32 32
  %979 = load double*, double** %978, align 8
  %980 = load i32, i32* %4, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds double, double* %979, i64 %981
  store double %976, double* %982, align 8
  br label %1007

983:                                              ; preds = %944
  %984 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %985 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %984, i32 0, i32 28
  %986 = load double, double* %985, align 8
  %987 = fmul double %986, 1.024000e+03
  %988 = fmul double %987, 2.000000e+00
  %989 = fdiv double %988, 3.000000e+00
  %990 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %991 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %990, i32 0, i32 31
  %992 = load double*, double** %991, align 8
  %993 = load i32, i32* %4, align 4
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds double, double* %992, i64 %994
  store double %989, double* %995, align 8
  %996 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %997 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %996, i32 0, i32 28
  %998 = load double, double* %997, align 8
  %999 = fmul double %998, 1.024000e+03
  %1000 = fdiv double %999, 3.000000e+00
  %1001 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %1002 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %1001, i32 0, i32 32
  %1003 = load double*, double** %1002, align 8
  %1004 = load i32, i32* %4, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds double, double* %1003, i64 %1005
  store double %1000, double* %1006, align 8
  br label %1007

1007:                                             ; preds = %983, %960
  br label %1008

1008:                                             ; preds = %1007, %927
  br label %1009

1009:                                             ; preds = %1008
  %1010 = load i32, i32* %4, align 4
  %1011 = add nsw i32 %1010, 1
  store i32 %1011, i32* %4, align 4
  br label %174

1012:                                             ; preds = %174
  ret void
}

declare dso_local i32 @dcn_bw_ceil2(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
