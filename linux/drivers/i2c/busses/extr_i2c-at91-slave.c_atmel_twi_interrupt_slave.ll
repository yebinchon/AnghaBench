; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-slave.c_atmel_twi_interrupt_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-slave.c_atmel_twi_interrupt_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_dev = type { i32, i64 }

@AT91_TWI_SR = common dso_local global i32 0, align 4
@AT91_TWI_IMR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AT91_TWI_SVACC = common dso_local global i32 0, align 4
@AT91_TWI_SVREAD = common dso_local global i32 0, align 4
@I2C_SLAVE_READ_REQUESTED = common dso_local global i32 0, align 4
@AT91_TWI_THR = common dso_local global i64 0, align 8
@AT91_TWI_IER = common dso_local global i32 0, align 4
@AT91_TWI_TXRDY = common dso_local global i32 0, align 4
@AT91_TWI_EOSACC = common dso_local global i32 0, align 4
@I2C_SLAVE_WRITE_REQUESTED = common dso_local global i32 0, align 4
@AT91_TWI_RXRDY = common dso_local global i32 0, align 4
@AT91_TWI_IDR = common dso_local global i32 0, align 4
@I2C_SLAVE_READ_PROCESSED = common dso_local global i32 0, align 4
@AT91_TWI_RHR = common dso_local global i64 0, align 8
@I2C_SLAVE_WRITE_RECEIVED = common dso_local global i32 0, align 4
@I2C_SLAVE_STOP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_twi_interrupt_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_twi_interrupt_slave(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.at91_twi_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.at91_twi_dev*
  store %struct.at91_twi_dev* %11, %struct.at91_twi_dev** %6, align 8
  %12 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %13 = load i32, i32* @AT91_TWI_SR, align 4
  %14 = call i32 @at91_twi_read(%struct.at91_twi_dev* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %17 = load i32, i32* @AT91_TWI_IMR, align 4
  %18 = call i32 @at91_twi_read(%struct.at91_twi_dev* %16, i32 %17)
  %19 = and i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %130

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AT91_TWI_SVACC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AT91_TWI_SVREAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %36 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I2C_SLAVE_READ_REQUESTED, align 4
  %39 = call i32 @i2c_slave_event(i32 %37, i32 %38, i32* %9)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %42 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AT91_TWI_THR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writeb_relaxed(i32 %40, i64 %45)
  %47 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %48 = load i32, i32* @AT91_TWI_IER, align 4
  %49 = load i32, i32* @AT91_TWI_TXRDY, align 4
  %50 = load i32, i32* @AT91_TWI_EOSACC, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @at91_twi_write(%struct.at91_twi_dev* %47, i32 %48, i32 %51)
  br label %65

53:                                               ; preds = %29
  %54 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %55 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I2C_SLAVE_WRITE_REQUESTED, align 4
  %58 = call i32 @i2c_slave_event(i32 %56, i32 %57, i32* %9)
  %59 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %60 = load i32, i32* @AT91_TWI_IER, align 4
  %61 = load i32, i32* @AT91_TWI_RXRDY, align 4
  %62 = load i32, i32* @AT91_TWI_EOSACC, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @at91_twi_write(%struct.at91_twi_dev* %59, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %53, %34
  %66 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %67 = load i32, i32* @AT91_TWI_IDR, align 4
  %68 = load i32, i32* @AT91_TWI_SVACC, align 4
  %69 = call i32 @at91_twi_write(%struct.at91_twi_dev* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %24
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @AT91_TWI_TXRDY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %77 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I2C_SLAVE_READ_PROCESSED, align 4
  %80 = call i32 @i2c_slave_event(i32 %78, i32 %79, i32* %9)
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %83 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AT91_TWI_THR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writeb_relaxed(i32 %81, i64 %86)
  br label %88

88:                                               ; preds = %75, %70
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @AT91_TWI_RXRDY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %95 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AT91_TWI_RHR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readb_relaxed(i64 %98)
  store i32 %99, i32* %9, align 4
  %100 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %101 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @I2C_SLAVE_WRITE_RECEIVED, align 4
  %104 = call i32 @i2c_slave_event(i32 %102, i32 %103, i32* %9)
  br label %105

105:                                              ; preds = %93, %88
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @AT91_TWI_EOSACC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %112 = load i32, i32* @AT91_TWI_IDR, align 4
  %113 = load i32, i32* @AT91_TWI_TXRDY, align 4
  %114 = load i32, i32* @AT91_TWI_RXRDY, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @AT91_TWI_EOSACC, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @at91_twi_write(%struct.at91_twi_dev* %111, i32 %112, i32 %117)
  %119 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %120 = load i32, i32* @AT91_TWI_IER, align 4
  %121 = load i32, i32* @AT91_TWI_SVACC, align 4
  %122 = call i32 @at91_twi_write(%struct.at91_twi_dev* %119, i32 %120, i32 %121)
  %123 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %6, align 8
  %124 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @I2C_SLAVE_STOP, align 4
  %127 = call i32 @i2c_slave_event(i32 %125, i32 %126, i32* %9)
  br label %128

128:                                              ; preds = %110, %105
  %129 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %22
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @at91_twi_read(%struct.at91_twi_dev*, i32) #1

declare dso_local i32 @i2c_slave_event(i32, i32, i32*) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @at91_twi_write(%struct.at91_twi_dev*, i32, i32) #1

declare dso_local i32 @readb_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
