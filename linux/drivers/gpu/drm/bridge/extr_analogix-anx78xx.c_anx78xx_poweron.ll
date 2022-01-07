; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32, i32*, %struct.anx78xx_platform_data }
%struct.anx78xx_platform_data = type { i32, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to enable DVDD10 regulator: %d\0A\00", align 1
@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_POWERDOWN_CTRL_REG = common dso_local global i32 0, align 4
@SP_HDCP_PD = common dso_local global i32 0, align 4
@SP_AUDIO_PD = common dso_local global i32 0, align 4
@SP_VIDEO_PD = common dso_local global i32 0, align 4
@SP_LINK_PD = common dso_local global i32 0, align 4
@SP_REGISTER_PD = common dso_local global i32 0, align 4
@SP_TOTAL_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.anx78xx*)* @anx78xx_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anx78xx_poweron(%struct.anx78xx* %0) #0 {
  %2 = alloca %struct.anx78xx*, align 8
  %3 = alloca %struct.anx78xx_platform_data*, align 8
  %4 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %2, align 8
  %5 = load %struct.anx78xx*, %struct.anx78xx** %2, align 8
  %6 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %5, i32 0, i32 2
  store %struct.anx78xx_platform_data* %6, %struct.anx78xx_platform_data** %3, align 8
  %7 = load %struct.anx78xx*, %struct.anx78xx** %2, align 8
  %8 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %15 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %20 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @regulator_enable(i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %73

28:                                               ; preds = %18
  %29 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %30

30:                                               ; preds = %28, %13
  %31 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %32 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @gpiod_set_value_cansleep(i32 %33, i32 1)
  %35 = call i32 @usleep_range(i32 1000, i32 2000)
  %36 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %37 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpiod_set_value_cansleep(i32 %38, i32 0)
  %40 = call i32 @usleep_range(i32 1000, i32 2000)
  %41 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %42 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @gpiod_set_value_cansleep(i32 %43, i32 0)
  %45 = load %struct.anx78xx*, %struct.anx78xx** %2, align 8
  %46 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SP_POWERDOWN_CTRL_REG, align 4
  %52 = load i32, i32* @SP_HDCP_PD, align 4
  %53 = load i32, i32* @SP_AUDIO_PD, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SP_VIDEO_PD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SP_LINK_PD, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @anx78xx_set_bits(i32 %50, i32 %51, i32 %58)
  %60 = load %struct.anx78xx*, %struct.anx78xx** %2, align 8
  %61 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SP_POWERDOWN_CTRL_REG, align 4
  %67 = load i32, i32* @SP_REGISTER_PD, align 4
  %68 = load i32, i32* @SP_TOTAL_PD, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @anx78xx_clear_bits(i32 %65, i32 %66, i32 %69)
  %71 = load %struct.anx78xx*, %struct.anx78xx** %2, align 8
  %72 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %30, %25, %12
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @anx78xx_set_bits(i32, i32, i32) #1

declare dso_local i32 @anx78xx_clear_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
