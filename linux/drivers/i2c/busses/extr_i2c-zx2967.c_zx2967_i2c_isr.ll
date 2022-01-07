; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i32, i32 }

@REG_STAT = common dso_local global i32 0, align 4
@I2C_INT_MASK = common dso_local global i32 0, align 4
@I2C_SR_EDEVICE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@I2C_SR_EDATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_TRANS_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zx2967_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zx2967_i2c*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.zx2967_i2c*
  store %struct.zx2967_i2c* %8, %struct.zx2967_i2c** %6, align 8
  %9 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %6, align 8
  %10 = load i32, i32* @REG_STAT, align 4
  %11 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %9, i32 %10)
  %12 = load i32, i32* @I2C_INT_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %6, align 8
  %15 = call i32 @zx2967_i2c_isr_clr(%struct.zx2967_i2c* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @I2C_SR_EDEVICE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %6, align 8
  %24 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @I2C_SR_EDATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %6, align 8
  %34 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %45

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @I2C_TRANS_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %6, align 8
  %42 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %44

43:                                               ; preds = %35
  br label %50

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %6, align 8
  %48 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %47, i32 0, i32 0
  %49 = call i32 @complete(i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %51
}

declare dso_local i32 @zx2967_i2c_readl(%struct.zx2967_i2c*, i32) #1

declare dso_local i32 @zx2967_i2c_isr_clr(%struct.zx2967_i2c*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
