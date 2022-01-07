; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-slave.c_at91_reg_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-slave.c_at91_reg_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.at91_twi_dev = type { i32, i32, %struct.i2c_client* }

@EBUSY = common dso_local global i32 0, align 4
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AT91_TWI_IER = common dso_local global i32 0, align 4
@AT91_TWI_SVACC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"entered slave mode (ADR=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @at91_reg_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_reg_slave(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.at91_twi_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.at91_twi_dev* @i2c_get_adapdata(i32 %7)
  store %struct.at91_twi_dev* %8, %struct.at91_twi_dev** %4, align 8
  %9 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %10 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %9, i32 0, i32 2
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %12 = icmp ne %struct.i2c_client* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EAFNOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %16
  %27 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %28 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pm_runtime_get_sync(i32 %29)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %33 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %32, i32 0, i32 2
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AT91_TWI_SMR_SADR(i32 %36)
  %38 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %39 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %41 = call i32 @at91_init_twi_bus(%struct.at91_twi_dev* %40)
  %42 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %43 = load i32, i32* @AT91_TWI_IER, align 4
  %44 = load i32, i32* @AT91_TWI_SVACC, align 4
  %45 = call i32 @at91_twi_write(%struct.at91_twi_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %47 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_info(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %26, %23, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.at91_twi_dev* @i2c_get_adapdata(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @AT91_TWI_SMR_SADR(i32) #1

declare dso_local i32 @at91_init_twi_bus(%struct.at91_twi_dev*) #1

declare dso_local i32 @at91_twi_write(%struct.at91_twi_dev*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
