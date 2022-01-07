; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateFlipSchedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateFlipSchedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double* }

@dm_420_8 = common dso_local global i32 0, align 4
@dm_420_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display_mode_lib*, double, double, i32, i32, double, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, double, double*, double*, double*, i32*)* @CalculateFlipSchedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CalculateFlipSchedule(%struct.display_mode_lib* %0, double %1, double %2, i32 %3, i32 %4, double %5, i32 %6, i32 %7, i32 %8, double %9, double %10, double %11, double %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, double %18, double* %19, double* %20, double* %21, i32* %22) #0 {
  %24 = alloca %struct.display_mode_lib*, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca double, align 8
  %43 = alloca double*, align 8
  %44 = alloca double*, align 8
  %45 = alloca double*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %24, align 8
  store double %1, double* %25, align 8
  store double %2, double* %26, align 8
  store i32 %3, i32* %27, align 4
  store i32 %4, i32* %28, align 4
  store double %5, double* %29, align 8
  store i32 %6, i32* %30, align 4
  store i32 %7, i32* %31, align 4
  store i32 %8, i32* %32, align 4
  store double %9, double* %33, align 8
  store double %10, double* %34, align 8
  store double %11, double* %35, align 8
  store double %12, double* %36, align 8
  store i32 %13, i32* %37, align 4
  store i32 %14, i32* %38, align 4
  store i32 %15, i32* %39, align 4
  store i32 %16, i32* %40, align 4
  store i32 %17, i32* %41, align 4
  store double %18, double* %42, align 8
  store double* %19, double** %43, align 8
  store double* %20, double** %44, align 8
  store double* %21, double** %45, align 8
  store i32* %22, i32** %46, align 8
  store double 0.000000e+00, double* %47, align 8
  %50 = load i32, i32* %31, align 4
  %51 = load i32, i32* @dm_420_8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %23
  %54 = load i32, i32* %31, align 4
  %55 = load i32, i32* @dm_420_10, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %23
  %58 = load double*, double** %43, align 8
  store double 0.000000e+00, double* %58, align 8
  %59 = load double*, double** %44, align 8
  store double 0.000000e+00, double* %59, align 8
  %60 = load double, double* %42, align 8
  %61 = load double*, double** %45, align 8
  store double %60, double* %61, align 8
  %62 = load i32*, i32** %46, align 8
  store i32 1, i32* %62, align 4
  br label %252

63:                                               ; preds = %53
  %64 = load i32, i32* %28, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %102

66:                                               ; preds = %63
  %67 = load double, double* %29, align 8
  %68 = load i32, i32* %32, align 4
  %69 = uitofp i32 %68 to double
  %70 = fmul double %67, %69
  %71 = load i32, i32* %30, align 4
  %72 = uitofp i32 %71 to double
  %73 = fdiv double %70, %72
  %74 = load %struct.display_mode_lib*, %struct.display_mode_lib** %24, align 8
  %75 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load double*, double** %76, align 8
  %78 = getelementptr inbounds double, double* %77, i64 0
  store double %73, double* %78, align 8
  %79 = load double, double* %35, align 8
  %80 = load double, double* %36, align 8
  %81 = load %struct.display_mode_lib*, %struct.display_mode_lib** %24, align 8
  %82 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load double*, double** %83, align 8
  %85 = getelementptr inbounds double, double* %84, i64 0
  %86 = load double, double* %85, align 8
  %87 = fdiv double %80, %86
  %88 = fadd double %79, %87
  %89 = load double, double* %25, align 8
  %90 = load double, double* %26, align 8
  %91 = load i32, i32* %27, align 4
  %92 = sub i32 %91, 1
  %93 = uitofp i32 %92 to double
  %94 = fmul double %90, %93
  %95 = fadd double %89, %94
  %96 = load double, double* %33, align 8
  %97 = fdiv double %96, 4.000000e+00
  %98 = fptoui double %97 to i32
  %99 = call i32 @dml_max(double %95, i32 %98)
  %100 = call i32 @dml_max(double %88, i32 %99)
  %101 = uitofp i32 %100 to double
  store double %101, double* %48, align 8
  br label %103

102:                                              ; preds = %63
  store double 0.000000e+00, double* %48, align 8
  br label %103

103:                                              ; preds = %102, %66
  %104 = load double, double* %48, align 8
  %105 = load double, double* %33, align 8
  %106 = fdiv double %104, %105
  %107 = fadd double %106, 1.250000e-01
  %108 = fmul double 4.000000e+00, %107
  %109 = call double @dml_floor(double %108, i32 1)
  %110 = fdiv double %109, 4.000000e+00
  %111 = load double*, double** %43, align 8
  store double %110, double* %111, align 8
  %112 = load i32, i32* %28, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %39, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %148

117:                                              ; preds = %114, %103
  %118 = load double, double* %29, align 8
  %119 = load i32, i32* %32, align 4
  %120 = uitofp i32 %119 to double
  %121 = fmul double %118, %120
  %122 = load i32, i32* %30, align 4
  %123 = uitofp i32 %122 to double
  %124 = fdiv double %121, %123
  %125 = load %struct.display_mode_lib*, %struct.display_mode_lib** %24, align 8
  %126 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load double*, double** %127, align 8
  %129 = getelementptr inbounds double, double* %128, i64 0
  store double %124, double* %129, align 8
  %130 = load i32, i32* %37, align 4
  %131 = load i32, i32* %38, align 4
  %132 = add i32 %130, %131
  %133 = uitofp i32 %132 to double
  %134 = load %struct.display_mode_lib*, %struct.display_mode_lib** %24, align 8
  %135 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load double*, double** %136, align 8
  %138 = getelementptr inbounds double, double* %137, i64 0
  %139 = load double, double* %138, align 8
  %140 = fdiv double %133, %139
  %141 = load double, double* %26, align 8
  %142 = load double, double* %33, align 8
  %143 = fdiv double %142, 4.000000e+00
  %144 = fptoui double %143 to i32
  %145 = call i32 @dml_max(double %141, i32 %144)
  %146 = call i32 @dml_max(double %140, i32 %145)
  %147 = uitofp i32 %146 to double
  store double %147, double* %49, align 8
  br label %149

148:                                              ; preds = %114
  store double 0.000000e+00, double* %49, align 8
  br label %149

149:                                              ; preds = %148, %117
  %150 = load double, double* %49, align 8
  %151 = load double, double* %33, align 8
  %152 = fdiv double %150, %151
  %153 = fadd double %152, 1.250000e-01
  %154 = fmul double 4.000000e+00, %153
  %155 = call double @dml_floor(double %154, i32 1)
  %156 = fdiv double %155, 4.000000e+00
  %157 = load double*, double** %44, align 8
  store double %156, double* %157, align 8
  %158 = load i32, i32* %28, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %179

160:                                              ; preds = %149
  %161 = load double, double* %36, align 8
  %162 = load double*, double** %43, align 8
  %163 = load double, double* %162, align 8
  %164 = load double, double* %33, align 8
  %165 = fmul double %163, %164
  %166 = fdiv double %161, %165
  %167 = load i32, i32* %37, align 4
  %168 = load i32, i32* %38, align 4
  %169 = add i32 %167, %168
  %170 = uitofp i32 %169 to double
  %171 = load double, double* %49, align 8
  %172 = load double, double* %33, align 8
  %173 = fmul double %171, %172
  %174 = fdiv double %170, %173
  %175 = fptoui double %174 to i32
  %176 = call i32 @dml_max(double %166, i32 %175)
  %177 = uitofp i32 %176 to double
  %178 = load double*, double** %45, align 8
  store double %177, double* %178, align 8
  br label %197

179:                                              ; preds = %149
  %180 = load i32, i32* %37, align 4
  %181 = load i32, i32* %38, align 4
  %182 = add i32 %180, %181
  %183 = icmp ugt i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load i32, i32* %37, align 4
  %186 = load i32, i32* %38, align 4
  %187 = add i32 %185, %186
  %188 = uitofp i32 %187 to double
  %189 = load double, double* %49, align 8
  %190 = load double, double* %33, align 8
  %191 = fmul double %189, %190
  %192 = fdiv double %188, %191
  %193 = load double*, double** %45, align 8
  store double %192, double* %193, align 8
  br label %196

194:                                              ; preds = %179
  %195 = load double*, double** %45, align 8
  store double 0.000000e+00, double* %195, align 8
  br label %196

196:                                              ; preds = %194, %184
  br label %197

197:                                              ; preds = %196, %160
  %198 = load i32, i32* %28, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load i32, i32* %39, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %40, align 4
  %205 = uitofp i32 %204 to double
  %206 = load double, double* %33, align 8
  %207 = fmul double %205, %206
  %208 = load double, double* %34, align 8
  %209 = fdiv double %207, %208
  store double %209, double* %47, align 8
  br label %232

210:                                              ; preds = %200, %197
  %211 = load i32, i32* %28, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %39, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load i32, i32* %41, align 4
  %218 = uitofp i32 %217 to double
  %219 = load double, double* %33, align 8
  %220 = fmul double %218, %219
  %221 = load double, double* %34, align 8
  %222 = fdiv double %220, %221
  store double %222, double* %47, align 8
  br label %231

223:                                              ; preds = %213, %210
  %224 = load i32, i32* %40, align 4
  %225 = load i32, i32* %41, align 4
  %226 = call double @dml_min(i32 %224, i32 %225)
  %227 = load double, double* %33, align 8
  %228 = fmul double %226, %227
  %229 = load double, double* %34, align 8
  %230 = fdiv double %228, %229
  store double %230, double* %47, align 8
  br label %231

231:                                              ; preds = %223, %216
  br label %232

232:                                              ; preds = %231, %203
  %233 = load double*, double** %43, align 8
  %234 = load double, double* %233, align 8
  %235 = fcmp oge double %234, 8.000000e+00
  br i1 %235, label %247, label %236

236:                                              ; preds = %232
  %237 = load double*, double** %44, align 8
  %238 = load double, double* %237, align 8
  %239 = fcmp oge double %238, 1.600000e+01
  br i1 %239, label %247, label %240

240:                                              ; preds = %236
  %241 = load double, double* %48, align 8
  %242 = load double, double* %49, align 8
  %243 = fmul double 2.000000e+00, %242
  %244 = fadd double %241, %243
  %245 = load double, double* %47, align 8
  %246 = fcmp ogt double %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %240, %236, %232
  %248 = load i32*, i32** %46, align 8
  store i32 0, i32* %248, align 4
  br label %251

249:                                              ; preds = %240
  %250 = load i32*, i32** %46, align 8
  store i32 1, i32* %250, align 4
  br label %251

251:                                              ; preds = %249, %247
  br label %252

252:                                              ; preds = %251, %57
  ret void
}

declare dso_local i32 @dml_max(double, i32) #1

declare dso_local double @dml_floor(double, i32) #1

declare dso_local double @dml_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
