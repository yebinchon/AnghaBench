; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_aux_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_aux_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@I2C_IDX_TX_P0 = common dso_local global i64 0, align 8
@SP_AUX_ADDR_7_0_REG = common dso_local global i32 0, align 4
@SP_AUX_ADDR_15_8_REG = common dso_local global i32 0, align 4
@SP_AUX_ADDR_19_16_REG = common dso_local global i32 0, align 4
@SP_AUX_ADDR_19_16_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*, i32)* @anx78xx_aux_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_aux_address(%struct.anx78xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anx78xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %8 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SP_AUX_ADDR_7_0_REG, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  %16 = call i32 @regmap_write(i32 %12, i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %23 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SP_AUX_ADDR_15_8_REG, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 65280
  %31 = lshr i32 %30, 8
  %32 = call i32 @regmap_write(i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %55

37:                                               ; preds = %21
  %38 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %39 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SP_AUX_ADDR_19_16_REG, align 4
  %45 = load i32, i32* @SP_AUX_ADDR_19_16_MASK, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 983040
  %48 = lshr i32 %47, 16
  %49 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %35, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
