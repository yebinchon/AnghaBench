; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_adjust_ReturnBW.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_adjust_ReturnBW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, double, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.display_mode_lib*, double, i32, double)* @adjust_ReturnBW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @adjust_ReturnBW(%struct.display_mode_lib* %0, double %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.display_mode_lib*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %4
  %13 = load double, double* %8, align 8
  %14 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %15 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %19 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fmul double %17, %21
  %23 = fdiv double %22, 4.000000e+00
  %24 = fcmp ogt double %13, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %12
  %26 = load double, double* %6, align 8
  %27 = load double, double* %8, align 8
  %28 = fmul double %27, 4.000000e+00
  %29 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %30 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sitofp i32 %32 to double
  %34 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %35 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %39 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %37, %41
  %43 = mul nsw i32 %42, 1024
  %44 = sitofp i32 %43 to double
  %45 = load double, double* %8, align 8
  %46 = fdiv double %44, %45
  %47 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %48 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %52 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fmul double %50, %54
  %56 = fdiv double %55, 4.000000e+00
  %57 = fsub double %46, %56
  %58 = fdiv double %33, %57
  %59 = fsub double 1.000000e+00, %58
  %60 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %61 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sitofp i32 %63 to double
  %65 = fadd double %59, %64
  %66 = fmul double %28, %65
  %67 = call double @dml_min(double %26, double %66)
  store double %67, double* %6, align 8
  br label %68

68:                                               ; preds = %25, %12, %4
  %69 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %70 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fmul double 2.000000e+00, %72
  %74 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %75 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load double, double* %76, align 8
  %78 = fmul double %73, %77
  %79 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %80 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sitofp i32 %82 to double
  %84 = fmul double %78, %83
  %85 = load double, double* %8, align 8
  %86 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %87 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sitofp i32 %89 to double
  %91 = fmul double %85, %90
  %92 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %93 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %97 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %95, %99
  %101 = mul nsw i32 %100, 1024
  %102 = sitofp i32 %101 to double
  %103 = fadd double %91, %102
  %104 = fdiv double %84, %103
  store double %104, double* %9, align 8
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %167

107:                                              ; preds = %68
  %108 = load double, double* %9, align 8
  %109 = fcmp ogt double %108, 1.000000e+00
  br i1 %109, label %110, label %167

110:                                              ; preds = %107
  %111 = load double, double* %9, align 8
  %112 = fcmp olt double %111, 4.000000e+00
  br i1 %112, label %113, label %167

113:                                              ; preds = %110
  %114 = load double, double* %6, align 8
  %115 = load double, double* %8, align 8
  %116 = fmul double 4.000000e+00, %115
  %117 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %118 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %122 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %120, %124
  %126 = sitofp i32 %125 to double
  %127 = fmul double %116, %126
  %128 = fmul double %127, 1.024000e+03
  %129 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %130 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load double, double* %131, align 8
  %133 = fmul double %128, %132
  %134 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %135 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load double, double* %136, align 8
  %138 = fmul double %133, %137
  %139 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %140 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sitofp i32 %142 to double
  %144 = fmul double %138, %143
  %145 = load double, double* %8, align 8
  %146 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %147 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sitofp i32 %149 to double
  %151 = fmul double %145, %150
  %152 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %153 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.display_mode_lib*, %struct.display_mode_lib** %5, align 8
  %157 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %155, %159
  %161 = mul nsw i32 %160, 1024
  %162 = sitofp i32 %161 to double
  %163 = fadd double %151, %162
  %164 = call double @dml_pow(double %163, i32 2)
  %165 = fdiv double %144, %164
  %166 = call double @dml_min(double %114, double %165)
  store double %166, double* %6, align 8
  br label %167

167:                                              ; preds = %113, %110, %107, %68
  %168 = load double, double* %6, align 8
  ret double %168
}

declare dso_local double @dml_min(double, double) #1

declare dso_local double @dml_pow(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
