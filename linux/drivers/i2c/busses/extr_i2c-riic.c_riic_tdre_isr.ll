; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_tdre_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_tdre_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riic_dev = type { i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RIIC_INIT_MSG = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@ICIER_TIE = common dso_local global i32 0, align 4
@ICIER_RIE = common dso_local global i32 0, align 4
@RIIC_ICIER = common dso_local global i32 0, align 4
@ICIER_TEIE = common dso_local global i32 0, align 4
@RIIC_ICDRT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @riic_tdre_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riic_tdre_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.riic_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.riic_dev*
  store %struct.riic_dev* %9, %struct.riic_dev** %6, align 8
  %10 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %11 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %18 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RIIC_INIT_MSG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %24 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @I2C_M_RD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %33 = load i32, i32* @ICIER_TIE, align 4
  %34 = load i32, i32* @ICIER_RIE, align 4
  %35 = load i32, i32* @RIIC_ICIER, align 4
  %36 = call i32 @riic_clear_set_bit(%struct.riic_dev* %32, i32 %33, i32 %34, i32 %35)
  br label %45

37:                                               ; preds = %22
  %38 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %39 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %44 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %37, %31
  %46 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %47 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @i2c_8bit_addr_from_msg(%struct.TYPE_2__* %48)
  store i32 %49, i32* %7, align 4
  br label %63

50:                                               ; preds = %16
  %51 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %52 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %56 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %56, align 8
  %59 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %60 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %50, %45
  %64 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %65 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %70 = load i32, i32* @ICIER_TIE, align 4
  %71 = load i32, i32* @ICIER_TEIE, align 4
  %72 = load i32, i32* @RIIC_ICIER, align 4
  %73 = call i32 @riic_clear_set_bit(%struct.riic_dev* %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %77 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RIIC_ICDRT, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writeb(i32 %75, i64 %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @riic_clear_set_bit(%struct.riic_dev*, i32, i32, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.TYPE_2__*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
