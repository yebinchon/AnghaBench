; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_i2c_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@I2C_CR = common dso_local global i64 0, align 8
@I2C_CR_PE = common dso_local global i32 0, align 4
@I2C_NO_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmk_i2c_dev*)* @init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hw(%struct.nmk_i2c_dev* %0) #0 {
  %2 = alloca %struct.nmk_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.nmk_i2c_dev* %0, %struct.nmk_i2c_dev** %2, align 8
  %4 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %5 = call i32 @flush_i2c_fifo(%struct.nmk_i2c_dev* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I2C_CR, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @I2C_CR_PE, align 4
  %16 = call i32 @i2c_clr_bit(i64 %14, i32 %15)
  %17 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %18 = call i32 @disable_all_interrupts(%struct.nmk_i2c_dev* %17)
  %19 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %20 = call i32 @clear_all_interrupts(%struct.nmk_i2c_dev* %19)
  %21 = load i32, i32* @I2C_NO_OPERATION, align 4
  %22 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %23 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  br label %25

25:                                               ; preds = %9, %8
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @flush_i2c_fifo(%struct.nmk_i2c_dev*) #1

declare dso_local i32 @i2c_clr_bit(i64, i32) #1

declare dso_local i32 @disable_all_interrupts(%struct.nmk_i2c_dev*) #1

declare dso_local i32 @clear_all_interrupts(%struct.nmk_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
