; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_CalculateDelayAfterScaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_CalculateDelayAfterScaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, i8* }

@dm_420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_mode_lib*, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, double, double, i32, i32, i32, i32, double*, double*)* @CalculateDelayAfterScaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalculateDelayAfterScaler(%struct.display_mode_lib* %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, i32 %10, i32 %11, i32 %12, i32 %13, double %14, double %15, double %16, double %17, double %18, double %19, i32 %20, i32 %21, i32 %22, i32 %23, double %24, double %25, i32 %26, i32 %27, i32 %28, i32 %29, double* %30, double* %31) #0 {
  %33 = alloca i32, align 4
  %34 = alloca %struct.display_mode_lib*, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca double, align 8
  %59 = alloca double, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca double*, align 8
  %65 = alloca double*, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca double, align 8
  %69 = alloca double, align 8
  %70 = alloca double, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %34, align 8
  store double %1, double* %35, align 8
  store double %2, double* %36, align 8
  store double %3, double* %37, align 8
  store double %4, double* %38, align 8
  store double %5, double* %39, align 8
  store double %6, double* %40, align 8
  store double %7, double* %41, align 8
  store double %8, double* %42, align 8
  store double %9, double* %43, align 8
  store i32 %10, i32* %44, align 4
  store i32 %11, i32* %45, align 4
  store i32 %12, i32* %46, align 4
  store i32 %13, i32* %47, align 4
  store double %14, double* %48, align 8
  store double %15, double* %49, align 8
  store double %16, double* %50, align 8
  store double %17, double* %51, align 8
  store double %18, double* %52, align 8
  store double %19, double* %53, align 8
  store i32 %20, i32* %54, align 4
  store i32 %21, i32* %55, align 4
  store i32 %22, i32* %56, align 4
  store i32 %23, i32* %57, align 4
  store double %24, double* %58, align 8
  store double %25, double* %59, align 8
  store i32 %26, i32* %60, align 4
  store i32 %27, i32* %61, align 4
  store i32 %28, i32* %62, align 4
  store i32 %29, i32* %63, align 4
  store double* %30, double** %64, align 8
  store double* %31, double** %65, align 8
  %71 = load i32, i32* %57, align 4
  %72 = load i32, i32* %60, align 4
  %73 = mul i32 %71, %72
  %74 = load double, double* %58, align 8
  %75 = call i32 @dml_ceil(double %74, i32 1)
  %76 = mul i32 %73, %75
  %77 = uitofp i32 %76 to double
  %78 = load %struct.display_mode_lib*, %struct.display_mode_lib** %34, align 8
  %79 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = load double, double* %36, align 8
  %83 = fmul double %81, %82
  %84 = load double, double* %38, align 8
  %85 = fdiv double %83, %84
  %86 = fdiv double %77, %85
  store double %86, double* %68, align 8
  %87 = load %struct.display_mode_lib*, %struct.display_mode_lib** %34, align 8
  %88 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load double, double* %68, align 8
  %92 = load double, double* %39, align 8
  %93 = fsub double %91, %92
  %94 = call i8* @dml_max(i8* %90, double %93)
  %95 = load %struct.display_mode_lib*, %struct.display_mode_lib** %34, align 8
  %96 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  %98 = load double, double* %59, align 8
  %99 = fcmp une double %98, 0.000000e+00
  br i1 %99, label %100, label %129

100:                                              ; preds = %32
  %101 = load i32, i32* %57, align 4
  %102 = udiv i32 %101, 2
  %103 = load i32, i32* %61, align 4
  %104 = mul i32 %102, %103
  %105 = load double, double* %59, align 8
  %106 = call i32 @dml_ceil(double %105, i32 2)
  %107 = mul i32 %104, %106
  %108 = uitofp i32 %107 to double
  %109 = load %struct.display_mode_lib*, %struct.display_mode_lib** %34, align 8
  %110 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load double, double* %111, align 8
  %113 = load double, double* %37, align 8
  %114 = fmul double %112, %113
  %115 = load double, double* %38, align 8
  %116 = fdiv double %114, %115
  %117 = fdiv double %108, %116
  store double %117, double* %69, align 8
  %118 = load %struct.display_mode_lib*, %struct.display_mode_lib** %34, align 8
  %119 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load double, double* %69, align 8
  %123 = load double, double* %40, align 8
  %124 = fsub double %122, %123
  %125 = call i8* @dml_max(i8* %121, double %124)
  %126 = load %struct.display_mode_lib*, %struct.display_mode_lib** %34, align 8
  %127 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i8* %125, i8** %128, align 8
  br label %129

129:                                              ; preds = %100, %32
  %130 = load i32, i32* %46, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load double, double* %48, align 8
  %134 = load double, double* %49, align 8
  %135 = fadd double %133, %134
  %136 = fptoui double %135 to i32
  store i32 %136, i32* %66, align 4
  br label %142

137:                                              ; preds = %129
  %138 = load double, double* %48, align 8
  %139 = load double, double* %50, align 8
  %140 = fadd double %138, %139
  %141 = fptoui double %140 to i32
  store i32 %141, i32* %66, align 4
  br label %142

142:                                              ; preds = %137, %132
  %143 = load i32, i32* %66, align 4
  %144 = uitofp i32 %143 to double
  %145 = load double, double* %51, align 8
  %146 = fadd double %144, %145
  %147 = load i32, i32* %47, align 4
  %148 = uitofp i32 %147 to double
  %149 = load double, double* %52, align 8
  %150 = fmul double %148, %149
  %151 = fadd double %146, %150
  %152 = fptoui double %151 to i32
  store i32 %152, i32* %66, align 4
  %153 = load double, double* %53, align 8
  %154 = fptoui double %153 to i32
  store i32 %154, i32* %67, align 4
  %155 = load double, double* %41, align 8
  %156 = fcmp oeq double %155, 0.000000e+00
  br i1 %156, label %160, label %157

157:                                              ; preds = %142
  %158 = load double, double* %42, align 8
  %159 = fcmp oeq double %158, 0.000000e+00
  br i1 %159, label %160, label %161

160:                                              ; preds = %157, %142
  store i32 1, i32* %33, align 4
  br label %225

161:                                              ; preds = %157
  %162 = load i32, i32* %66, align 4
  %163 = uitofp i32 %162 to double
  %164 = load double, double* %43, align 8
  %165 = fmul double %163, %164
  %166 = load double, double* %41, align 8
  %167 = fdiv double %165, %166
  %168 = load i32, i32* %67, align 4
  %169 = uitofp i32 %168 to double
  %170 = load double, double* %43, align 8
  %171 = fmul double %169, %170
  %172 = load double, double* %42, align 8
  %173 = fdiv double %171, %172
  %174 = fadd double %167, %173
  %175 = load i32, i32* %44, align 4
  %176 = uitofp i32 %175 to double
  %177 = fadd double %174, %176
  %178 = load double*, double** %64, align 8
  store double %177, double* %178, align 8
  %179 = load i32, i32* %45, align 4
  %180 = icmp ugt i32 %179, 1
  br i1 %180, label %181, label %188

181:                                              ; preds = %161
  %182 = load double*, double** %64, align 8
  %183 = load double, double* %182, align 8
  %184 = load i32, i32* %54, align 4
  %185 = uitofp i32 %184 to double
  %186 = fadd double %183, %185
  %187 = load double*, double** %64, align 8
  store double %186, double* %187, align 8
  br label %188

188:                                              ; preds = %181, %161
  %189 = load i32, i32* %55, align 4
  %190 = load i32, i32* @dm_420, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %62, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i32, i32* %63, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195, %188
  %199 = load double*, double** %65, align 8
  store double 1.000000e+00, double* %199, align 8
  br label %202

200:                                              ; preds = %195, %192
  %201 = load double*, double** %65, align 8
  store double 0.000000e+00, double* %201, align 8
  br label %202

202:                                              ; preds = %200, %198
  %203 = load double*, double** %65, align 8
  %204 = load double, double* %203, align 8
  %205 = load i32, i32* %56, align 4
  %206 = uitofp i32 %205 to double
  %207 = fmul double %204, %206
  %208 = load double*, double** %64, align 8
  %209 = load double, double* %208, align 8
  %210 = fadd double %207, %209
  store double %210, double* %70, align 8
  %211 = load double, double* %70, align 8
  %212 = load i32, i32* %56, align 4
  %213 = uitofp i32 %212 to double
  %214 = fdiv double %211, %213
  %215 = call double @dml_floor(double %214, i32 1)
  %216 = load double*, double** %65, align 8
  store double %215, double* %216, align 8
  %217 = load double, double* %70, align 8
  %218 = load double*, double** %65, align 8
  %219 = load double, double* %218, align 8
  %220 = load i32, i32* %56, align 4
  %221 = uitofp i32 %220 to double
  %222 = fmul double %219, %221
  %223 = fsub double %217, %222
  %224 = load double*, double** %64, align 8
  store double %223, double* %224, align 8
  store i32 1, i32* %33, align 4
  br label %225

225:                                              ; preds = %202, %160
  %226 = load i32, i32* %33, align 4
  ret i32 %226
}

declare dso_local i32 @dml_ceil(double, i32) #1

declare dso_local i8* @dml_max(i8*, double) #1

declare dso_local double @dml_floor(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
