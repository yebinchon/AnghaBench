; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_tend_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_tend_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riic_dev = type { i32, i64, i32, i64, i64 }

@RIIC_ICSR2 = common dso_local global i64 0, align 8
@ICSR2_NACKF = common dso_local global i32 0, align 4
@RIIC_ICDRR = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ICIER_TEIE = common dso_local global i32 0, align 4
@ICIER_SPIE = common dso_local global i32 0, align 4
@RIIC_ICIER = common dso_local global i64 0, align 8
@ICCR2_SP = common dso_local global i32 0, align 4
@RIIC_ICCR2 = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @riic_tend_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riic_tend_isr(i32 %0, i8* %1) #0 {
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
  %10 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RIIC_ICSR2, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readb(i64 %13)
  %15 = load i32, i32* @ICSR2_NACKF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %20 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RIIC_ICDRR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readb(i64 %23)
  %25 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %26 = load i32, i32* @ICSR2_NACKF, align 4
  %27 = load i64, i64* @RIIC_ICSR2, align 8
  %28 = call i32 @riic_clear_set_bit(%struct.riic_dev* %25, i32 %26, i32 0, i64 %27)
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %32 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %35 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %74

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %43 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %48 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46, %41
  %52 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %53 = load i32, i32* @ICIER_TEIE, align 4
  %54 = load i32, i32* @ICIER_SPIE, align 4
  %55 = load i64, i64* @RIIC_ICIER, align 8
  %56 = call i32 @riic_clear_set_bit(%struct.riic_dev* %52, i32 %53, i32 %54, i64 %55)
  %57 = load i32, i32* @ICCR2_SP, align 4
  %58 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %59 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RIIC_ICCR2, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writeb(i32 %57, i64 %62)
  br label %72

64:                                               ; preds = %46
  %65 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %66 = load i32, i32* @ICIER_TEIE, align 4
  %67 = load i64, i64* @RIIC_ICIER, align 8
  %68 = call i32 @riic_clear_set_bit(%struct.riic_dev* %65, i32 %66, i32 0, i64 %67)
  %69 = load %struct.riic_dev*, %struct.riic_dev** %6, align 8
  %70 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %69, i32 0, i32 0
  %71 = call i32 @complete(i32* %70)
  br label %72

72:                                               ; preds = %64, %51
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %38
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @riic_clear_set_bit(%struct.riic_dev*, i32, i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
