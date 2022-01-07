; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-slave.c_at91_init_twi_bus_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-slave.c_at91_init_twi_bus_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_dev = type { i64, i64 }

@AT91_TWI_CR = common dso_local global i32 0, align 4
@AT91_TWI_MSDIS = common dso_local global i64 0, align 8
@AT91_TWI_SMR = common dso_local global i32 0, align 4
@AT91_TWI_SVEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @at91_init_twi_bus_slave(%struct.at91_twi_dev* %0) #0 {
  %2 = alloca %struct.at91_twi_dev*, align 8
  store %struct.at91_twi_dev* %0, %struct.at91_twi_dev** %2, align 8
  %3 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %4 = load i32, i32* @AT91_TWI_CR, align 4
  %5 = load i64, i64* @AT91_TWI_MSDIS, align 8
  %6 = call i32 @at91_twi_write(%struct.at91_twi_dev* %3, i32 %4, i64 %5)
  %7 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %8 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %13 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %18 = load i32, i32* @AT91_TWI_SMR, align 4
  %19 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %20 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @at91_twi_write(%struct.at91_twi_dev* %17, i32 %18, i64 %21)
  %23 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %24 = load i32, i32* @AT91_TWI_CR, align 4
  %25 = load i64, i64* @AT91_TWI_SVEN, align 8
  %26 = call i32 @at91_twi_write(%struct.at91_twi_dev* %23, i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %16, %11, %1
  ret void
}

declare dso_local i32 @at91_twi_write(%struct.at91_twi_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
