; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-core.c_at91_init_twi_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-core.c_at91_init_twi_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_dev = type { i64 }

@AT91_TWI_CR = common dso_local global i32 0, align 4
@AT91_TWI_SWRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @at91_init_twi_bus(%struct.at91_twi_dev* %0) #0 {
  %2 = alloca %struct.at91_twi_dev*, align 8
  store %struct.at91_twi_dev* %0, %struct.at91_twi_dev** %2, align 8
  %3 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %4 = call i32 @at91_disable_twi_interrupts(%struct.at91_twi_dev* %3)
  %5 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %6 = load i32, i32* @AT91_TWI_CR, align 4
  %7 = load i32, i32* @AT91_TWI_SWRST, align 4
  %8 = call i32 @at91_twi_write(%struct.at91_twi_dev* %5, i32 %6, i32 %7)
  %9 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %10 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %15 = call i32 @at91_init_twi_bus_slave(%struct.at91_twi_dev* %14)
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %18 = call i32 @at91_init_twi_bus_master(%struct.at91_twi_dev* %17)
  br label %19

19:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @at91_disable_twi_interrupts(%struct.at91_twi_dev*) #1

declare dso_local i32 @at91_twi_write(%struct.at91_twi_dev*, i32, i32) #1

declare dso_local i32 @at91_init_twi_bus_slave(%struct.at91_twi_dev*) #1

declare dso_local i32 @at91_init_twi_bus_master(%struct.at91_twi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
