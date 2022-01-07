; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch7006_tv_norm_info = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ch7006_tv_norms = common dso_local global %struct.ch7006_tv_norm_info* null, align 8
@fixed1 = common dso_local global i32 0, align 4
@CH7006_INPUT_FORMAT_DAC_GAIN = common dso_local global i32 0, align 4
@CH7006_INPUT_FORMAT = common dso_local global i64 0, align 8
@CH7006_BLACK_LEVEL_0 = common dso_local global i32 0, align 4
@CH7006_BLACK_LEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"black level: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ch7006_setup_levels(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ch7006_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ch7006_tv_norm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %11)
  store %struct.ch7006_priv* %12, %struct.ch7006_priv** %4, align 8
  %13 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** @ch7006_tv_norms, align 8
  %18 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %17, i64 %20
  store %struct.ch7006_tv_norm_info* %21, %struct.ch7006_tv_norm_info** %6, align 8
  %22 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %6, align 8
  %23 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @fixed1, align 4
  %26 = mul nsw i32 339, %25
  %27 = sdiv i32 %26, 1000
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  store i32 76, i32* %7, align 4
  %30 = load i32, i32* @CH7006_INPUT_FORMAT_DAC_GAIN, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* @CH7006_INPUT_FORMAT, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  br label %44

36:                                               ; preds = %1
  store i32 71, i32* %7, align 4
  %37 = load i32, i32* @CH7006_INPUT_FORMAT_DAC_GAIN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* @CH7006_INPUT_FORMAT, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %6, align 8
  %46 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 26625
  %49 = call i32 @round_fixed(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @interpolate(i32 90, i32 %52, i32 208, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @CH7006_BLACK_LEVEL_0, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @bitf(i32 %57, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* @CH7006_BLACK_LEVEL, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ch7006_dbg(%struct.i2c_client* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %64)
  ret void
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @round_fixed(i32) #1

declare dso_local i32 @interpolate(i32, i32, i32, i32) #1

declare dso_local i32 @bitf(i32, i32) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
