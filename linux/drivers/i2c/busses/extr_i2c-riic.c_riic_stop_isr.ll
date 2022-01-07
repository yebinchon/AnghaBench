; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_stop_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_stop_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riic_dev = type { i32, i64 }

@RIIC_ICSR2 = common dso_local global i64 0, align 8
@RIIC_ICIER = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @riic_stop_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riic_stop_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.riic_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.riic_dev*
  store %struct.riic_dev* %7, %struct.riic_dev** %5, align 8
  %8 = load %struct.riic_dev*, %struct.riic_dev** %5, align 8
  %9 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RIIC_ICSR2, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writeb(i32 0, i64 %12)
  %14 = load %struct.riic_dev*, %struct.riic_dev** %5, align 8
  %15 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RIIC_ICSR2, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readb(i64 %18)
  %20 = load %struct.riic_dev*, %struct.riic_dev** %5, align 8
  %21 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RIIC_ICIER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeb(i32 0, i64 %24)
  %26 = load %struct.riic_dev*, %struct.riic_dev** %5, align 8
  %27 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RIIC_ICIER, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readb(i64 %30)
  %32 = load %struct.riic_dev*, %struct.riic_dev** %5, align 8
  %33 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %32, i32 0, i32 0
  %34 = call i32 @complete(i32* %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %35
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
