; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_read_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_read_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_i2c_dev = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@I2C_MCR = common dso_local global i64 0, align 8
@I2C_CR = common dso_local global i64 0, align 8
@DEFAULT_I2C_REG_CR = common dso_local global i32 0, align 4
@I2C_CR_PE = common dso_local global i32 0, align 4
@I2C_IT_RXFNF = common dso_local global i32 0, align 4
@I2C_IT_RXFF = common dso_local global i32 0, align 4
@I2C_IT_MAL = common dso_local global i32 0, align 4
@I2C_IT_BERR = common dso_local global i32 0, align 4
@I2C_IT_MTD = common dso_local global i32 0, align 4
@I2C_IT_MTDWS = common dso_local global i32 0, align 4
@I2C_CLEAR_ALL_INTS = common dso_local global i32 0, align 4
@I2C_IMSCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"read from slave 0x%x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmk_i2c_dev*, i32)* @read_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_i2c(%struct.nmk_i2c_dev* %0, i32 %1) #0 {
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
  %43 = load i32, i32* @I2C_IT_RXFNF, align 4
  %44 = load i32, i32* @I2C_IT_RXFF, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @I2C_IT_MAL, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @I2C_IT_BERR, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %51 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %2
  %55 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %56 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %55, i32 0, i32 5
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54, %2
  %62 = load i32, i32* @I2C_IT_MTD, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load i32, i32* @I2C_IT_MTDWS, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @I2C_CLEAR_ALL_INTS, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @IRQ_MASK(i32 %71)
  %73 = and i32 %70, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %75 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @I2C_IMSCR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %83 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @I2C_IMSCR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %89 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %88, i32 0, i32 3
  %90 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %91 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @wait_for_completion_timeout(i32* %89, i32 %93)
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %69
  %98 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %99 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %103 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %97, %69
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @load_i2c_mcr_reg(%struct.nmk_i2c_dev*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @i2c_set_bit(i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @IRQ_MASK(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
