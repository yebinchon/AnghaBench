; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_write_next_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_write_next_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_dev = type { i64, i32*, i32, i32, i64 }

@AT91_TWI_THR = common dso_local global i64 0, align 8
@AT91_TWI_CR = common dso_local global i32 0, align 4
@AT91_TWI_STOP = common dso_local global i32 0, align 4
@AT91_TWI_IDR = common dso_local global i32 0, align 4
@AT91_TWI_TXRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wrote 0x%x, to go %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_twi_dev*)* @at91_twi_write_next_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_twi_write_next_byte(%struct.at91_twi_dev* %0) #0 {
  %2 = alloca %struct.at91_twi_dev*, align 8
  store %struct.at91_twi_dev* %0, %struct.at91_twi_dev** %2, align 8
  %3 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %4 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %55

8:                                                ; preds = %1
  %9 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %10 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %14 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AT91_TWI_THR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writeb_relaxed(i32 %12, i64 %17)
  %19 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %20 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %8
  %25 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %26 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %31 = load i32, i32* @AT91_TWI_CR, align 4
  %32 = load i32, i32* @AT91_TWI_STOP, align 4
  %33 = call i32 @at91_twi_write(%struct.at91_twi_dev* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %36 = load i32, i32* @AT91_TWI_IDR, align 4
  %37 = load i32, i32* @AT91_TWI_TXRDY, align 4
  %38 = call i32 @at91_twi_write(%struct.at91_twi_dev* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %8
  %40 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %41 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %44 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %48 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %49)
  %51 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %52 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %52, align 8
  br label %55

55:                                               ; preds = %39, %7
  ret void
}

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @at91_twi_write(%struct.at91_twi_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
