; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_empty_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_empty_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_dev = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_MST_FIFO_STATUS = common dso_local global i32 0, align 4
@I2C_MST_FIFO_STATUS_RX_MASK = common dso_local global i32 0, align 4
@I2C_MST_FIFO_STATUS_RX_SHIFT = common dso_local global i32 0, align 4
@I2C_FIFO_STATUS = common dso_local global i32 0, align 4
@I2C_FIFO_STATUS_RX_MASK = common dso_local global i32 0, align 4
@I2C_FIFO_STATUS_RX_SHIFT = common dso_local global i32 0, align 4
@BYTES_PER_FIFO_WORD = common dso_local global i64 0, align 8
@I2C_RX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_dev*)* @tegra_i2c_empty_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_empty_rx_fifo(%struct.tegra_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_i2c_dev* %0, %struct.tegra_i2c_dev** %3, align 8
  %9 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %112

26:                                               ; preds = %1
  %27 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %35 = load i32, i32* @I2C_MST_FIFO_STATUS, align 4
  %36 = call i32 @i2c_readl(%struct.tegra_i2c_dev* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @I2C_MST_FIFO_STATUS_RX_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @I2C_MST_FIFO_STATUS_RX_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %26
  %43 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %44 = load i32, i32* @I2C_FIFO_STATUS, align 4
  %45 = call i32 @i2c_readl(%struct.tegra_i2c_dev* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @I2C_FIFO_STATUS_RX_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @I2C_FIFO_STATUS_RX_SHIFT, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @BYTES_PER_FIFO_WORD, align 8
  %54 = udiv i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %51
  %62 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @I2C_RX_FIFO, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @i2c_readsl(%struct.tegra_i2c_dev* %62, i32* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @BYTES_PER_FIFO_WORD, align 8
  %70 = mul i64 %68, %69
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @BYTES_PER_FIFO_WORD, align 8
  %76 = mul i64 %74, %75
  %77 = load i64, i64* %7, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %61
  %85 = load i64, i64* %7, align 8
  %86 = icmp ugt i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %89 = load i32, i32* @I2C_RX_FIFO, align 4
  %90 = call i32 @i2c_readl(%struct.tegra_i2c_dev* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @cpu_to_le32(i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @memcpy(i32* %93, i32* %4, i64 %94)
  store i64 0, i64* %7, align 8
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %87, %84, %61
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @WARN_ON_ONCE(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %112

105:                                              ; preds = %98
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %111 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %105, %102, %23
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @i2c_readl(%struct.tegra_i2c_dev*, i32) #1

declare dso_local i32 @i2c_readsl(%struct.tegra_i2c_dev*, i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
