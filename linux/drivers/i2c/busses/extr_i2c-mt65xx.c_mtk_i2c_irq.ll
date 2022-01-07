; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i32, i32, i32, i64 }

@I2C_RS_TRANSFER = common dso_local global i32 0, align 4
@OFFSET_INTR_STAT = common dso_local global i32 0, align 4
@I2C_RS_MUL_CNFG = common dso_local global i32 0, align 4
@I2C_RS_MUL_TRIG = common dso_local global i32 0, align 4
@I2C_TRANSAC_START = common dso_local global i32 0, align 4
@OFFSET_START = common dso_local global i32 0, align 4
@I2C_TRANSAC_COMP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mtk_i2c*
  store %struct.mtk_i2c* %9, %struct.mtk_i2c** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @I2C_RS_TRANSFER, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %18 = load i32, i32* @OFFSET_INTR_STAT, align 4
  %19 = call i32 @mtk_i2c_readw(%struct.mtk_i2c* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @OFFSET_INTR_STAT, align 4
  %23 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %26 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %16
  %34 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %42 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %46 = load i32, i32* @I2C_RS_MUL_CNFG, align 4
  %47 = load i32, i32* @I2C_RS_MUL_TRIG, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @I2C_TRANSAC_START, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @OFFSET_START, align 4
  %52 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %45, i32 %50, i32 %51)
  br label %67

53:                                               ; preds = %33, %16
  %54 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %55 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I2C_TRANSAC_COMP, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %64 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %63, i32 0, i32 2
  %65 = call i32 @complete(i32* %64)
  br label %66

66:                                               ; preds = %62, %53
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %68
}

declare dso_local i32 @mtk_i2c_readw(%struct.mtk_i2c*, i32) #1

declare dso_local i32 @mtk_i2c_writew(%struct.mtk_i2c*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
