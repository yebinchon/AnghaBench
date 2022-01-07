; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_calculate_leakage_for_v_and_t_formula.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_calculate_leakage_for_v_and_t_formula.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_leakage_coeffients = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_leakage_coeffients*, i32, i32, i32, i32*)* @si_calculate_leakage_for_v_and_t_formula to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_calculate_leakage_for_v_and_t_formula(%struct.ni_leakage_coeffients* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ni_leakage_coeffients*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
  store %struct.ni_leakage_coeffients* %0, %struct.ni_leakage_coeffients** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @drm_int2fixp(i32 %23)
  %25 = call i32 @div64_s64(i32 %24, i32 100)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @drm_int2fixp(i32 %26)
  %28 = call i32 @div64_s64(i32 %27, i32 1000)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @drm_int2fixp(i32 %29)
  %31 = call i32 @div64_s64(i32 %30, i32 1000)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.ni_leakage_coeffients*, %struct.ni_leakage_coeffients** %6, align 8
  %33 = getelementptr inbounds %struct.ni_leakage_coeffients, %struct.ni_leakage_coeffients* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @drm_int2fixp(i32 %34)
  %36 = call i32 @div64_s64(i32 %35, i32 100000000)
  store i32 %36, i32* %17, align 4
  %37 = load %struct.ni_leakage_coeffients*, %struct.ni_leakage_coeffients** %6, align 8
  %38 = getelementptr inbounds %struct.ni_leakage_coeffients, %struct.ni_leakage_coeffients* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @drm_int2fixp(i32 %39)
  %41 = call i32 @div64_s64(i32 %40, i32 100000000)
  store i32 %41, i32* %18, align 4
  %42 = load %struct.ni_leakage_coeffients*, %struct.ni_leakage_coeffients** %6, align 8
  %43 = getelementptr inbounds %struct.ni_leakage_coeffients, %struct.ni_leakage_coeffients* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @drm_int2fixp(i32 %44)
  %46 = call i32 @div64_s64(i32 %45, i32 100000000)
  store i32 %46, i32* %19, align 4
  %47 = load %struct.ni_leakage_coeffients*, %struct.ni_leakage_coeffients** %6, align 8
  %48 = getelementptr inbounds %struct.ni_leakage_coeffients, %struct.ni_leakage_coeffients* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @drm_int2fixp(i32 %49)
  %51 = call i32 @div64_s64(i32 %50, i32 100000000)
  store i32 %51, i32* %20, align 4
  %52 = load %struct.ni_leakage_coeffients*, %struct.ni_leakage_coeffients** %6, align 8
  %53 = getelementptr inbounds %struct.ni_leakage_coeffients, %struct.ni_leakage_coeffients* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @drm_int2fixp(i32 %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @drm_fixp_mul(i32 %56, i32 %57)
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @drm_fixp_mul(i32 %61, i32 %62)
  %64 = call i32 @drm_fixp_exp(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %21, align 4
  %68 = call i32 @drm_fixp_mul(i32 %66, i32 %67)
  %69 = call i32 @drm_fixp_exp(i32 %68)
  %70 = call i32 @drm_fixp_div(i32 %65, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @drm_fixp_mul(i32 %72, i32 %73)
  %75 = call i32 @drm_fixp_exp(i32 %74)
  %76 = call i32 @drm_fixp_mul(i32 %71, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @drm_fixp_mul(i32 %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @drm_fixp_mul(i32 %79, i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @drm_fixp_mul(i32 %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %84, 1000
  %86 = call i32 @drm_fixp2int(i32 %85)
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  ret void
}

declare dso_local i32 @div64_s64(i32, i32) #1

declare dso_local i32 @drm_int2fixp(i32) #1

declare dso_local i32 @drm_fixp_mul(i32, i32) #1

declare dso_local i32 @drm_fixp_exp(i32) #1

declare dso_local i32 @drm_fixp_div(i32, i32) #1

declare dso_local i32 @drm_fixp2int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
