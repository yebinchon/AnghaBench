; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_apbps2.c_apbps2_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_apbps2.c_apbps2_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apbps2_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@APBPS2_STATUS_DR = common dso_local global i64 0, align 8
@APBPS2_STATUS_PE = common dso_local global i64 0, align 8
@SERIO_PARITY = common dso_local global i64 0, align 8
@APBPS2_STATUS_FE = common dso_local global i64 0, align 8
@SERIO_FRAME = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apbps2_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apbps2_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.apbps2_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.apbps2_priv*
  store %struct.apbps2_priv* %11, %struct.apbps2_priv** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %56, %2
  %14 = load %struct.apbps2_priv*, %struct.apbps2_priv** %5, align 8
  %15 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i64 @ioread32be(i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* @APBPS2_STATUS_DR, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %13
  %23 = load %struct.apbps2_priv*, %struct.apbps2_priv** %5, align 8
  %24 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i64 @ioread32be(i32* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @APBPS2_STATUS_PE, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i64, i64* @SERIO_PARITY, align 8
  br label %35

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i64 [ %33, %32 ], [ 0, %34 ]
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @APBPS2_STATUS_FE, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @SERIO_FRAME, align 8
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i64 [ %42, %41 ], [ 0, %43 ]
  %46 = load i64, i64* %8, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.apbps2_priv*, %struct.apbps2_priv** %5, align 8
  %52 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @iowrite32be(i32 0, i32* %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.apbps2_priv*, %struct.apbps2_priv** %5, align 8
  %58 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @serio_interrupt(i32 %59, i64 %60, i64 %61)
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %9, align 4
  br label %13

64:                                               ; preds = %13
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i64 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @serio_interrupt(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
