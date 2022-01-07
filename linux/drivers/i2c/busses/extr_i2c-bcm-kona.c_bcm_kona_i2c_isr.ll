; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i32, i64 }

@ISR_OFFSET = common dso_local global i64 0, align 8
@ISR_RESERVED_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ISR_NOACK_MASK = common dso_local global i32 0, align 4
@TXFCR_FIFO_FLUSH_MASK = common dso_local global i32 0, align 4
@TXFCR_FIFO_EN_MASK = common dso_local global i32 0, align 4
@TXFCR_OFFSET = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm_kona_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bcm_kona_i2c_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.bcm_kona_i2c_dev*
  store %struct.bcm_kona_i2c_dev* %9, %struct.bcm_kona_i2c_dev** %6, align 8
  %10 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %11 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ISR_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ISR_RESERVED_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ISR_NOACK_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* @TXFCR_FIFO_FLUSH_MASK, align 4
  %30 = load i32, i32* @TXFCR_FIFO_EN_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %33 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TXFCR_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ISR_RESERVED_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %44 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ISR_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %50 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %49, i32 0, i32 0
  %51 = call i32 @complete(i32* %50)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %38, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
