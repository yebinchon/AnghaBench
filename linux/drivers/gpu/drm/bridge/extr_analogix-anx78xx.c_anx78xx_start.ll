; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_POWERDOWN_CTRL_REG = common dso_local global i32 0, align 4
@SP_HDCP_PD = common dso_local global i32 0, align 4
@SP_AUDIO_PD = common dso_local global i32 0, align 4
@SP_VIDEO_PD = common dso_local global i32 0, align 4
@SP_LINK_PD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to enable interrupts: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed receiver initialization: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed transmitter initialization: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Failed SlimPort transmitter initialization: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_start(%struct.anx78xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  %5 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %6 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SP_POWERDOWN_CTRL_REG, align 4
  %12 = load i32, i32* @SP_HDCP_PD, align 4
  %13 = load i32, i32* @SP_AUDIO_PD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SP_VIDEO_PD, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SP_LINK_PD, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @anx78xx_clear_bits(i32 %10, i32 %11, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %21 = call i32 @anx78xx_enable_interrupts(%struct.anx78xx* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %29 = call i32 @anx78xx_rx_initialization(%struct.anx78xx* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %45

35:                                               ; preds = %27
  %36 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %37 = call i32 @anx78xx_tx_initialization(%struct.anx78xx* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %45

43:                                               ; preds = %35
  %44 = call i32 @usleep_range(i32 10000, i32 15000)
  store i32 0, i32* %2, align 4
  br label %51

45:                                               ; preds = %40, %32, %24
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %49 = call i32 @anx78xx_poweroff(%struct.anx78xx* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %43
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @anx78xx_clear_bits(i32, i32, i32) #1

declare dso_local i32 @anx78xx_enable_interrupts(%struct.anx78xx*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @anx78xx_rx_initialization(%struct.anx78xx*) #1

declare dso_local i32 @anx78xx_tx_initialization(%struct.anx78xx*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @anx78xx_poweroff(%struct.anx78xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
