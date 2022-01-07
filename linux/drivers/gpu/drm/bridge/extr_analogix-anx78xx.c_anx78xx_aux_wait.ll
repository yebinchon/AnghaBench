; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_aux_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_aux_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@jiffies = common dso_local global i32 0, align 4
@AUX_WAIT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Timed out waiting AUX to finish\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@I2C_IDX_TX_P0 = common dso_local global i64 0, align 8
@SP_AUX_CH_STATUS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to read from AUX channel: %d\0A\00", align 1
@SP_AUX_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to wait for AUX channel (status: %02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_aux_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_aux_wait(%struct.anx78xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  %7 = load i32, i32* @jiffies, align 4
  %8 = load i32, i32* @AUX_WAIT_TIMEOUT_MS, align 4
  %9 = call i32 @msecs_to_jiffies(i32 %8)
  %10 = add nsw i32 %7, %9
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %32, %1
  %14 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %15 = call i32 @anx78xx_aux_op_finished(%struct.anx78xx* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32, i32* @jiffies, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @time_after(i32 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %25 = call i32 @anx78xx_aux_op_finished(%struct.anx78xx* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %60

31:                                               ; preds = %23
  br label %34

32:                                               ; preds = %18
  %33 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %13

34:                                               ; preds = %31, %13
  %35 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %36 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SP_AUX_CH_STATUS_REG, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %5)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %34
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SP_AUX_STATUS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %54, %45, %27
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @anx78xx_aux_op_finished(%struct.anx78xx*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
