; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_write_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_write_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_i2c_dev = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@I2C_MCR = common dso_local global i64 0, align 8
@I2C_CR = common dso_local global i64 0, align 8
@DEFAULT_I2C_REG_CR = common dso_local global i32 0, align 4
@I2C_CR_PE = common dso_local global i32 0, align 4
@I2C_IT_TXFOVR = common dso_local global i32 0, align 4
@I2C_IT_MAL = common dso_local global i32 0, align 4
@I2C_IT_BERR = common dso_local global i32 0, align 4
@MAX_I2C_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@I2C_IT_TXFNE = common dso_local global i32 0, align 4
@I2C_IT_MTD = common dso_local global i32 0, align 4
@I2C_IT_MTDWS = common dso_local global i32 0, align 4
@I2C_CLEAR_ALL_INTS = common dso_local global i32 0, align 4
@I2C_IMSCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"write to slave 0x%x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmk_i2c_dev*, i32)* @write_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_i2c(%struct.nmk_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nmk_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nmk_i2c_dev* %0, %struct.nmk_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @load_i2c_mcr_reg(%struct.nmk_i2c_dev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %14 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I2C_MCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %20 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @I2C_CR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @DEFAULT_I2C_REG_CR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %28 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @I2C_CR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @I2C_CR, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @I2C_CR_PE, align 4
  %39 = call i32 @i2c_set_bit(i64 %37, i32 %38)
  %40 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %41 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %40, i32 0, i32 3
  %42 = call i32 @init_completion(i32* %41)
  %43 = load i32, i32* @I2C_IT_TXFOVR, align 4
  %44 = load i32, i32* @I2C_IT_MAL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @I2C_IT_BERR, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %49 = load i32, i32* @MAX_I2C_FIFO_THRESHOLD, align 4
  %50 = call i32 @fill_tx_fifo(%struct.nmk_i2c_dev* %48, i32 %49)
  %51 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %2
  %57 = load i32, i32* @I2C_IT_TXFNE, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %2
  %61 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %62 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %67 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %66, i32 0, i32 5
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65, %60
  %73 = load i32, i32* @I2C_IT_MTD, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %80

76:                                               ; preds = %65
  %77 = load i32, i32* @I2C_IT_MTDWS, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @I2C_CLEAR_ALL_INTS, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @IRQ_MASK(i32 %82)
  %84 = and i32 %81, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %86 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @I2C_IMSCR, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %94 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @I2C_IMSCR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %100 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %99, i32 0, i32 3
  %101 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %102 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @wait_for_completion_timeout(i32* %100, i32 %104)
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %80
  %109 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %110 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %114 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @ETIMEDOUT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %108, %80
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @load_i2c_mcr_reg(%struct.nmk_i2c_dev*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @i2c_set_bit(i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @fill_tx_fifo(%struct.nmk_i2c_dev*, i32) #1

declare dso_local i32 @IRQ_MASK(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
