; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i32, i32, i32, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@I2C_SOFT_RST = common dso_local global i32 0, align 4
@OFFSET_SOFTRESET = common dso_local global i32 0, align 4
@I2C_IO_CONFIG_PUSH_PULL = common dso_local global i32 0, align 4
@OFFSET_IO_CONFIG = common dso_local global i32 0, align 4
@I2C_IO_CONFIG_OPEN_DRAIN = common dso_local global i32 0, align 4
@I2C_DCM_DISABLE = common dso_local global i32 0, align 4
@OFFSET_DCM_EN = common dso_local global i32 0, align 4
@I2C_DEFAULT_CLK_DIV = common dso_local global i32 0, align 4
@OFFSET_CLOCK_DIV = common dso_local global i32 0, align 4
@OFFSET_TIMING = common dso_local global i32 0, align 4
@OFFSET_HS = common dso_local global i32 0, align 4
@OFFSET_LTIMING = common dso_local global i32 0, align 4
@I2C_CONTROL_WRAPPER = common dso_local global i32 0, align 4
@OFFSET_PATH_DIR = common dso_local global i32 0, align 4
@I2C_CONTROL_ACKERR_DET_EN = common dso_local global i32 0, align 4
@I2C_CONTROL_CLK_EXT_EN = common dso_local global i32 0, align 4
@I2C_CONTROL_DMA_EN = common dso_local global i32 0, align 4
@I2C_CONTROL_DMAACK_EN = common dso_local global i32 0, align 4
@I2C_CONTROL_ASYNC_MODE = common dso_local global i32 0, align 4
@OFFSET_CONTROL = common dso_local global i32 0, align 4
@I2C_DELAY_LEN = common dso_local global i32 0, align 4
@OFFSET_DELAY_LEN = common dso_local global i32 0, align 4
@I2C_DMA_HARD_RST = common dso_local global i32 0, align 4
@OFFSET_RST = common dso_local global i64 0, align 8
@I2C_DMA_CLR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_i2c*)* @mtk_i2c_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_i2c_init_hw(%struct.mtk_i2c* %0) #0 {
  %2 = alloca %struct.mtk_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_i2c* %0, %struct.mtk_i2c** %2, align 8
  %4 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %5 = load i32, i32* @I2C_SOFT_RST, align 4
  %6 = load i32, i32* @OFFSET_SOFTRESET, align 4
  %7 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %4, i32 %5, i32 %6)
  %8 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %9 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %14 = load i32, i32* @I2C_IO_CONFIG_PUSH_PULL, align 4
  %15 = load i32, i32* @OFFSET_IO_CONFIG, align 4
  %16 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %13, i32 %14, i32 %15)
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %19 = load i32, i32* @I2C_IO_CONFIG_OPEN_DRAIN, align 4
  %20 = load i32, i32* @OFFSET_IO_CONFIG, align 4
  %21 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %24 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %31 = load i32, i32* @I2C_DCM_DISABLE, align 4
  %32 = load i32, i32* @OFFSET_DCM_EN, align 4
  %33 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %36 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %43 = load i32, i32* @I2C_DEFAULT_CLK_DIV, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* @OFFSET_CLOCK_DIV, align 4
  %46 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %42, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %49 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %50 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OFFSET_TIMING, align 4
  %53 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %48, i32 %51, i32 %52)
  %54 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %55 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %56 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @OFFSET_HS, align 4
  %59 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %54, i32 %57, i32 %58)
  %60 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %61 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %47
  %67 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %68 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %69 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @OFFSET_LTIMING, align 4
  %72 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %47
  %74 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %75 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %80 = load i32, i32* @I2C_CONTROL_WRAPPER, align 4
  %81 = load i32, i32* @OFFSET_PATH_DIR, align 4
  %82 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @I2C_CONTROL_ACKERR_DET_EN, align 4
  %85 = load i32, i32* @I2C_CONTROL_CLK_EXT_EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @I2C_CONTROL_DMA_EN, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %3, align 4
  %89 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %90 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load i32, i32* @I2C_CONTROL_DMAACK_EN, align 4
  %97 = load i32, i32* @I2C_CONTROL_ASYNC_MODE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %83
  %102 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @OFFSET_CONTROL, align 4
  %105 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %102, i32 %103, i32 %104)
  %106 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %107 = load i32, i32* @I2C_DELAY_LEN, align 4
  %108 = load i32, i32* @OFFSET_DELAY_LEN, align 4
  %109 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %106, i32 %107, i32 %108)
  %110 = load i32, i32* @I2C_DMA_HARD_RST, align 4
  %111 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %112 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @OFFSET_RST, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = call i32 @udelay(i32 50)
  %118 = load i32, i32* @I2C_DMA_CLR_FLAG, align 4
  %119 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %120 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @OFFSET_RST, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 %118, i64 %123)
  ret void
}

declare dso_local i32 @mtk_i2c_writew(%struct.mtk_i2c*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
