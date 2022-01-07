; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_isr_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_isr_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i2c_dw_isr_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_isr_slave(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dw_i2c_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dw_i2c_dev*
  store %struct.dw_i2c_dev* %8, %struct.dw_i2c_dev** %5, align 8
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %5, align 8
  %10 = call i32 @i2c_dw_read_clear_intrbits_slave(%struct.dw_i2c_dev* %9)
  %11 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %5, align 8
  %12 = call i32 @i2c_dw_irq_handler_slave(%struct.dw_i2c_dev* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %5, align 8
  %17 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %16, i32 0, i32 0
  %18 = call i32 @complete(i32* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @IRQ_RETVAL(i32 %20)
  ret i32 %21
}

declare dso_local i32 @i2c_dw_read_clear_intrbits_slave(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_irq_handler_slave(%struct.dw_i2c_dev*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
