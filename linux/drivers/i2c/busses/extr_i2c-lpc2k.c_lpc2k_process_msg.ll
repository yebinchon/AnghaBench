; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-lpc2k.c_lpc2k_process_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-lpc2k.c_lpc2k_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc2k_i2c = type { i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32* }

@LPC24XX_STA = common dso_local global i32 0, align 4
@LPC24XX_I2CONSET = common dso_local global i64 0, align 8
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@LPC24XX_I2DAT = common dso_local global i64 0, align 8
@LPC24XX_SI = common dso_local global i32 0, align 4
@LPC24XX_I2CONCLR = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc2k_i2c*, i32)* @lpc2k_process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc2k_process_msg(%struct.lpc2k_i2c* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpc2k_i2c*, align 8
  %5 = alloca i32, align 4
  store %struct.lpc2k_i2c* %0, %struct.lpc2k_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @LPC24XX_STA, align 4
  %10 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %11 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPC24XX_I2CONSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  br label %78

16:                                               ; preds = %2
  %17 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %18 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @I2C_M_NOSTART, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %16
  %27 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %28 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %36 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %26
  %44 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %45 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %52 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LPC24XX_I2DAT, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %58 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %43, %26
  br label %70

62:                                               ; preds = %16
  %63 = load i32, i32* @LPC24XX_STA, align 4
  %64 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %65 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LPC24XX_I2CONSET, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  br label %70

70:                                               ; preds = %62, %61
  %71 = load i32, i32* @LPC24XX_SI, align 4
  %72 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %73 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  br label %78

78:                                               ; preds = %70, %8
  %79 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %80 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @enable_irq(i32 %81)
  %83 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %84 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %87 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @msecs_to_jiffies(i32 1000)
  %94 = call i64 @wait_event_timeout(i32 %85, i32 %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %78
  %97 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %98 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @disable_irq_nosync(i32 %99)
  %101 = load i32, i32* @ETIMEDOUT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %107

103:                                              ; preds = %78
  %104 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %105 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %96
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
