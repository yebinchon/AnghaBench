; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_INT_CTRL_REG = common dso_local global i32 0, align 4
@SP_COMMON_INT_MASK4_REG = common dso_local global i32 0, align 4
@SP_HPD_LOST = common dso_local global i32 0, align 4
@SP_HPD_PLUG = common dso_local global i32 0, align 4
@SP_DP_INT_MASK1_REG = common dso_local global i32 0, align 4
@SP_TRAINING_FINISH = common dso_local global i32 0, align 4
@I2C_IDX_RX_P0 = common dso_local global i64 0, align 8
@SP_INT_MASK1_REG = common dso_local global i32 0, align 4
@SP_CKDT_CHG = common dso_local global i32 0, align 4
@SP_SCDT_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_enable_interrupts(%struct.anx78xx* %0) #0 {
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
  %11 = load i32, i32* @SP_INT_CTRL_REG, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %19 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SP_COMMON_INT_MASK4_REG, align 4
  %25 = load i32, i32* @SP_HPD_LOST, align 4
  %26 = load i32, i32* @SP_HPD_PLUG, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @regmap_write(i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %17
  %34 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %35 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SP_DP_INT_MASK1_REG, align 4
  %41 = load i32, i32* @SP_TRAINING_FINISH, align 4
  %42 = call i32 @regmap_write(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %64

47:                                               ; preds = %33
  %48 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %49 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SP_INT_MASK1_REG, align 4
  %55 = load i32, i32* @SP_CKDT_CHG, align 4
  %56 = load i32, i32* @SP_SCDT_CHG, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @regmap_write(i32 %53, i32 %54, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %61, %45, %31, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
