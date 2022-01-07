; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.vc4_vec_encoder = type { %struct.vc4_vec* }
%struct.vc4_vec = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.vc4_vec*)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to retain power domain: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set clock rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to turn on core clock: %d\0A\00", align 1
@VEC_WSE_RESET = common dso_local global i32 0, align 4
@VEC_SOFT_RESET = common dso_local global i32 0, align 4
@VEC_WSE_CONTROL = common dso_local global i32 0, align 4
@VEC_SCHPH = common dso_local global i32 0, align 4
@VEC_CLMP0_START = common dso_local global i32 0, align 4
@VEC_CLMP0_END = common dso_local global i32 0, align 4
@VEC_CONFIG2 = common dso_local global i32 0, align 4
@VEC_CONFIG2_UV_DIG_DIS = common dso_local global i32 0, align 4
@VEC_CONFIG2_RGB_DIG_DIS = common dso_local global i32 0, align 4
@VEC_CONFIG3 = common dso_local global i32 0, align 4
@VEC_CONFIG3_HORIZ_LEN_STD = common dso_local global i32 0, align 4
@VEC_DAC_CONFIG = common dso_local global i32 0, align 4
@VEC_MASK0 = common dso_local global i32 0, align 4
@VEC_DAC_MISC = common dso_local global i32 0, align 4
@VEC_DAC_MISC_VID_ACT = common dso_local global i32 0, align 4
@VEC_DAC_MISC_DAC_RST_N = common dso_local global i32 0, align 4
@VEC_CFG = common dso_local global i32 0, align 4
@VEC_CFG_VEC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @vc4_vec_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_vec_encoder_enable(%struct.drm_encoder* %0) #0 {
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
  %11 = load %struct.vc4_vec*, %struct.vc4_vec** %4, align 8
  %12 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @pm_runtime_get_sync(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.vc4_vec*, %struct.vc4_vec** %4, align 8
  %23 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_set_rate(i32 %24, i32 108000000)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %86

31:                                               ; preds = %21
  %32 = load %struct.vc4_vec*, %struct.vc4_vec** %4, align 8
  %33 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_prepare_enable(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %86

41:                                               ; preds = %31
  %42 = load i32, i32* @VEC_WSE_RESET, align 4
  %43 = call i32 @VEC_WRITE(i32 %42, i32 1)
  %44 = load i32, i32* @VEC_SOFT_RESET, align 4
  %45 = call i32 @VEC_WRITE(i32 %44, i32 1)
  %46 = load i32, i32* @VEC_WSE_CONTROL, align 4
  %47 = call i32 @VEC_WRITE(i32 %46, i32 0)
  %48 = load i32, i32* @VEC_SCHPH, align 4
  %49 = call i32 @VEC_WRITE(i32 %48, i32 40)
  %50 = load i32, i32* @VEC_CLMP0_START, align 4
  %51 = call i32 @VEC_WRITE(i32 %50, i32 172)
  %52 = load i32, i32* @VEC_CLMP0_END, align 4
  %53 = call i32 @VEC_WRITE(i32 %52, i32 236)
  %54 = load i32, i32* @VEC_CONFIG2, align 4
  %55 = load i32, i32* @VEC_CONFIG2_UV_DIG_DIS, align 4
  %56 = load i32, i32* @VEC_CONFIG2_RGB_DIG_DIS, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @VEC_WRITE(i32 %54, i32 %57)
  %59 = load i32, i32* @VEC_CONFIG3, align 4
  %60 = load i32, i32* @VEC_CONFIG3_HORIZ_LEN_STD, align 4
  %61 = call i32 @VEC_WRITE(i32 %59, i32 %60)
  %62 = load i32, i32* @VEC_DAC_CONFIG, align 4
  %63 = call i32 @VEC_DAC_CONFIG_DAC_CTRL(i32 12)
  %64 = call i32 @VEC_DAC_CONFIG_DRIVER_CTRL(i32 12)
  %65 = or i32 %63, %64
  %66 = call i32 @VEC_DAC_CONFIG_LDO_BIAS_CTRL(i32 70)
  %67 = or i32 %65, %66
  %68 = call i32 @VEC_WRITE(i32 %62, i32 %67)
  %69 = load i32, i32* @VEC_MASK0, align 4
  %70 = call i32 @VEC_WRITE(i32 %69, i32 0)
  %71 = load %struct.vc4_vec*, %struct.vc4_vec** %4, align 8
  %72 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (%struct.vc4_vec*)*, i32 (%struct.vc4_vec*)** %74, align 8
  %76 = load %struct.vc4_vec*, %struct.vc4_vec** %4, align 8
  %77 = call i32 %75(%struct.vc4_vec* %76)
  %78 = load i32, i32* @VEC_DAC_MISC, align 4
  %79 = load i32, i32* @VEC_DAC_MISC_VID_ACT, align 4
  %80 = load i32, i32* @VEC_DAC_MISC_DAC_RST_N, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @VEC_WRITE(i32 %78, i32 %81)
  %83 = load i32, i32* @VEC_CFG, align 4
  %84 = load i32, i32* @VEC_CFG_VEC_EN, align 4
  %85 = call i32 @VEC_WRITE(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %41, %38, %28, %18
  ret void
}

declare dso_local %struct.vc4_vec_encoder* @to_vc4_vec_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @VEC_WRITE(i32, i32) #1

declare dso_local i32 @VEC_DAC_CONFIG_DAC_CTRL(i32) #1

declare dso_local i32 @VEC_DAC_CONFIG_DRIVER_CTRL(i32) #1

declare dso_local i32 @VEC_DAC_CONFIG_LDO_BIAS_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
