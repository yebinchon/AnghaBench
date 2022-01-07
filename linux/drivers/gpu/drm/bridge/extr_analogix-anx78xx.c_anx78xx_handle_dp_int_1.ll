; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_handle_dp_int_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_handle_dp_int_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"Handle DP interrupt 1: %02x\0A\00", align 1
@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_DP_INT_STATUS1_REG = common dso_local global i32 0, align 4
@SP_TRAINING_FINISH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"IRQ: hardware link training finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*, i32)* @anx78xx_handle_dp_int_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_handle_dp_int_1(%struct.anx78xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anx78xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %10 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SP_DP_INT_STATUS1_REG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @regmap_write(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SP_TRAINING_FINISH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %30 = call i32 @anx78xx_config_dp_output(%struct.anx78xx* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @anx78xx_config_dp_output(%struct.anx78xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
