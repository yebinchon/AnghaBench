; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_dev = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@I2C_MST_FIFO_STATUS = common dso_local global i32 0, align 4
@I2C_MST_FIFO_STATUS_TX_MASK = common dso_local global i32 0, align 4
@I2C_MST_FIFO_STATUS_TX_SHIFT = common dso_local global i32 0, align 4
@I2C_FIFO_STATUS = common dso_local global i32 0, align 4
@I2C_FIFO_STATUS_TX_MASK = common dso_local global i32 0, align 4
@I2C_FIFO_STATUS_TX_SHIFT = common dso_local global i32 0, align 4
@BYTES_PER_FIFO_WORD = common dso_local global i64 0, align 8
@I2C_TX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_dev*)* @tegra_i2c_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_fill_tx_fifo(%struct.tegra_i2c_dev* %0) #0 {
  %2 = alloca %struct.tegra_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_i2c_dev* %0, %struct.tegra_i2c_dev** %2, align 8
  %8 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %15 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %22 = load i32, i32* @I2C_MST_FIFO_STATUS, align 4
  %23 = call i32 @i2c_readl(%struct.tegra_i2c_dev* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @I2C_MST_FIFO_STATUS_TX_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @I2C_MST_FIFO_STATUS_TX_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %31 = load i32, i32* @I2C_FIFO_STATUS, align 4
  %32 = call i32 @i2c_readl(%struct.tegra_i2c_dev* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @I2C_FIFO_STATUS_TX_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @I2C_FIFO_STATUS_TX_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @BYTES_PER_FIFO_WORD, align 8
  %41 = udiv i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @BYTES_PER_FIFO_WORD, align 8
  %55 = mul i64 %53, %54
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %63 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @BYTES_PER_FIFO_WORD, align 8
  %68 = mul i64 %66, %67
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %71 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = call i32 (...) @barrier()
  %73 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @I2C_TX_FIFO, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @i2c_writesl(%struct.tegra_i2c_dev* %73, i32* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @BYTES_PER_FIFO_WORD, align 8
  %81 = mul i64 %79, %80
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %5, align 8
  br label %84

84:                                               ; preds = %51, %38
  %85 = load i32, i32* %4, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i64, i64* %6, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @memcpy(i32* %3, i32* %91, i64 %92)
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  store i32 %95, i32* %3, align 4
  %96 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %97 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %99 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = call i32 (...) @barrier()
  %101 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @I2C_TX_FIFO, align 4
  %104 = call i32 @i2c_writel(%struct.tegra_i2c_dev* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %90, %87, %84
  ret i32 0
}

declare dso_local i32 @i2c_readl(%struct.tegra_i2c_dev*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @i2c_writesl(%struct.tegra_i2c_dev*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @i2c_writel(%struct.tegra_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
