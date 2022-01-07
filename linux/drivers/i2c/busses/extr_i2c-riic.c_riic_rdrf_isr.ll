; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_rdrf_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_rdrf_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riic_dev = type { i32, i32*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RIIC_INIT_MSG = common dso_local global i32 0, align 4
@RIIC_ICDRR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ICIER_SPIE = common dso_local global i32 0, align 4
@RIIC_ICIER = common dso_local global i32 0, align 4
@ICCR2_SP = common dso_local global i32 0, align 4
@RIIC_ICCR2 = common dso_local global i64 0, align 8
@ICMR3_ACKBT = common dso_local global i32 0, align 4
@RIIC_ICMR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @riic_rdrf_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riic_rdrf_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.riic_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.riic_dev*
  store %struct.riic_dev* %8, %struct.riic_dev** %6, align 8
  %9 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %10 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %17 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RIIC_INIT_MSG, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %23 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %28 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %30 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RIIC_ICDRR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readb(i64 %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %15
  %37 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %38 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %43 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %48 = load i32, i32* @ICIER_SPIE, align 4
  %49 = load i32, i32* @RIIC_ICIER, align 4
  %50 = call i32 @riic_clear_set_bit(%struct.riic_dev* %47, i32 0, i32 %48, i32 %49)
  %51 = load i32, i32* @ICCR2_SP, align 4
  %52 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %53 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RIIC_ICCR2, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writeb(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %46, %41
  %59 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %60 = load i32, i32* @ICMR3_ACKBT, align 4
  %61 = load i32, i32* @RIIC_ICMR3, align 4
  %62 = call i32 @riic_clear_set_bit(%struct.riic_dev* %59, i32 0, i32 %60, i32 %61)
  br label %68

63:                                               ; preds = %36
  %64 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %65 = load i32, i32* @ICMR3_ACKBT, align 4
  %66 = load i32, i32* @RIIC_ICMR3, align 4
  %67 = call i32 @riic_clear_set_bit(%struct.riic_dev* %64, i32 %65, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %70 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RIIC_ICDRR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readb(i64 %73)
  %75 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %76 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32 %74, i32* %77, align 4
  %78 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %79 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %79, align 8
  %82 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %83 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %68, %21, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @riic_clear_set_bit(%struct.riic_dev*, i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
