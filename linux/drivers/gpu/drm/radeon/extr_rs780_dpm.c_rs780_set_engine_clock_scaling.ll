; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_set_engine_clock_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_set_engine_clock_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.atom_clock_dividers = type { i64, i64, i64 }
%struct.igp_ps = type { i64, i64 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FVTHROT_FBDIV_REG0 = common dso_local global i32 0, align 4
@MIN_FEEDBACK_DIV_MASK = common dso_local global i32 0, align 4
@MAX_FEEDBACK_DIV_MASK = common dso_local global i32 0, align 4
@FVTHROT_FBDIV_REG1 = common dso_local global i32 0, align 4
@FORCE_FEEDBACK_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @rs780_set_engine_clock_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs780_set_engine_clock_scaling(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca %struct.atom_clock_dividers, align 8
  %9 = alloca %struct.atom_clock_dividers, align 8
  %10 = alloca %struct.atom_clock_dividers, align 8
  %11 = alloca %struct.igp_ps*, align 8
  %12 = alloca %struct.igp_ps*, align 8
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %7, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %15 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %14)
  store %struct.igp_ps* %15, %struct.igp_ps** %11, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %17 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %16)
  store %struct.igp_ps* %17, %struct.igp_ps** %12, align 8
  %18 = load %struct.igp_ps*, %struct.igp_ps** %11, align 8
  %19 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.igp_ps*, %struct.igp_ps** %12, align 8
  %22 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.igp_ps*, %struct.igp_ps** %11, align 8
  %27 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.igp_ps*, %struct.igp_ps** %12, align 8
  %30 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %123

34:                                               ; preds = %25, %3
  %35 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %36 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %37 = load %struct.igp_ps*, %struct.igp_ps** %11, align 8
  %38 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %35, i32 %36, i64 %39, i32 0, %struct.atom_clock_dividers* %8)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %4, align 4
  br label %123

45:                                               ; preds = %34
  %46 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %47 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %48 = load %struct.igp_ps*, %struct.igp_ps** %11, align 8
  %49 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %46, i32 %47, i64 %50, i32 0, %struct.atom_clock_dividers* %9)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %4, align 4
  br label %123

56:                                               ; preds = %45
  %57 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %58 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %59 = load %struct.igp_ps*, %struct.igp_ps** %12, align 8
  %60 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %57, i32 %58, i64 %61, i32 0, %struct.atom_clock_dividers* %10)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %4, align 4
  br label %123

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %81, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %79, %73, %67
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %123

94:                                               ; preds = %85
  %95 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %96 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @rs780_force_fbdiv(%struct.radeon_device* %95, i64 %97)
  %99 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %100, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %94
  %105 = load i32, i32* @FVTHROT_FBDIV_REG0, align 4
  %106 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @MIN_FEEDBACK_DIV(i64 %107)
  %109 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @MAX_FEEDBACK_DIV(i64 %110)
  %112 = or i32 %108, %111
  %113 = load i32, i32* @MIN_FEEDBACK_DIV_MASK, align 4
  %114 = load i32, i32* @MAX_FEEDBACK_DIV_MASK, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = call i32 @WREG32_P(i32 %105, i32 %112, i32 %116)
  %118 = load i32, i32* @FVTHROT_FBDIV_REG1, align 4
  %119 = load i32, i32* @FORCE_FEEDBACK_DIV, align 4
  %120 = xor i32 %119, -1
  %121 = call i32 @WREG32_P(i32 %118, i32 0, i32 %120)
  br label %122

122:                                              ; preds = %104, %94
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %91, %65, %54, %43, %33
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i64, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @rs780_force_fbdiv(%struct.radeon_device*, i64) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @MIN_FEEDBACK_DIV(i64) #1

declare dso_local i32 @MAX_FEEDBACK_DIV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
