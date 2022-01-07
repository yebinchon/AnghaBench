; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.vc4_vec_encoder = type { %struct.vc4_vec* }
%struct.vc4_vec = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VEC_CFG = common dso_local global i32 0, align 4
@VEC_DAC_MISC = common dso_local global i32 0, align 4
@VEC_DAC_MISC_VCD_PWRDN = common dso_local global i32 0, align 4
@VEC_DAC_MISC_BIAS_PWRDN = common dso_local global i32 0, align 4
@VEC_DAC_MISC_DAC_PWRDN = common dso_local global i32 0, align 4
@VEC_DAC_MISC_LDO_PWRDN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to release power domain: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @vc4_vec_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_vec_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.vc4_vec_encoder*, align 8
  %4 = alloca %struct.vc4_vec*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.vc4_vec_encoder* @to_vc4_vec_encoder(%struct.drm_encoder* %6)
  store %struct.vc4_vec_encoder* %7, %struct.vc4_vec_encoder** %3, align 8
  %8 = load %struct.vc4_vec_encoder*, %struct.vc4_vec_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.vc4_vec_encoder, %struct.vc4_vec_encoder* %8, i32 0, i32 0
  %10 = load %struct.vc4_vec*, %struct.vc4_vec** %9, align 8
  store %struct.vc4_vec* %10, %struct.vc4_vec** %4, align 8
  %11 = load i32, i32* @VEC_CFG, align 4
  %12 = call i32 @VEC_WRITE(i32 %11, i32 0)
  %13 = load i32, i32* @VEC_DAC_MISC, align 4
  %14 = load i32, i32* @VEC_DAC_MISC_VCD_PWRDN, align 4
  %15 = load i32, i32* @VEC_DAC_MISC_BIAS_PWRDN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @VEC_DAC_MISC_DAC_PWRDN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VEC_DAC_MISC_LDO_PWRDN, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @VEC_WRITE(i32 %13, i32 %20)
  %22 = load %struct.vc4_vec*, %struct.vc4_vec** %4, align 8
  %23 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load %struct.vc4_vec*, %struct.vc4_vec** %4, align 8
  %27 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @pm_runtime_put(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

declare dso_local %struct.vc4_vec_encoder* @to_vc4_vec_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @VEC_WRITE(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
