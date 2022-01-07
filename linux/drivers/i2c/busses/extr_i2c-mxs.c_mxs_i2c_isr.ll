; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_i2c_dev = type { i64, i32 }

@MXS_I2C_CTRL1 = common dso_local global i64 0, align 8
@MXS_I2C_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_EARLY_TERM_IRQ = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_MASTER_LOSS_IRQ = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_SLAVE_STOP_IRQ = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_SLAVE_IRQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_CLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mxs_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mxs_i2c_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mxs_i2c_dev*
  store %struct.mxs_i2c_dev* %9, %struct.mxs_i2c_dev** %6, align 8
  %10 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %11 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MXS_I2C_CTRL1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load i32, i32* @MXS_I2C_IRQ_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %31 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %49

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MXS_I2C_CTRL1_EARLY_TERM_IRQ, align 4
  %35 = load i32, i32* @MXS_I2C_CTRL1_MASTER_LOSS_IRQ, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MXS_I2C_CTRL1_SLAVE_STOP_IRQ, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MXS_I2C_CTRL1_SLAVE_IRQ, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %33, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  %46 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %47 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %52 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MXS_I2C_CTRL1_CLR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
