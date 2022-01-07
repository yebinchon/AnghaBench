; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cbus-gpio.c_cbus_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cbus-gpio.c_cbus_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbus_host = type { i32, i32, i32, i32, i32 }

@CBUS_ADDR_BITS = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@CBUS_REG_BITS = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [26 x i8] c"failed setting direction\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed receiving data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbus_host*, i8, i32, i32, i32)* @cbus_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbus_transfer(%struct.cbus_host* %0, i8 signext %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cbus_host*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cbus_host* %0, %struct.cbus_host** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %14 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %13, i32 0, i32 0
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %18 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpiod_set_value(i32 %19, i32 0)
  %21 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %22 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_direction_output(i32 %23, i32 1)
  %25 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CBUS_ADDR_BITS, align 4
  %28 = call i32 @cbus_send_data(%struct.cbus_host* %25, i32 %26, i32 %27)
  %29 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @I2C_SMBUS_READ, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @cbus_send_bit(%struct.cbus_host* %29, i32 %35)
  %37 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @CBUS_REG_BITS, align 4
  %40 = call i32 @cbus_send_data(%struct.cbus_host* %37, i32 %38, i32 %39)
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %5
  %47 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @cbus_send_data(%struct.cbus_host* %47, i32 %48, i32 16)
  store i32 0, i32* %12, align 4
  br label %77

50:                                               ; preds = %5
  %51 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %52 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gpiod_direction_input(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %59 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %90

62:                                               ; preds = %50
  %63 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %64 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gpiod_set_value(i32 %65, i32 1)
  %67 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %68 = call i32 @cbus_receive_word(%struct.cbus_host* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %73 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %90

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %79 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @gpiod_set_value(i32 %80, i32 1)
  %82 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %83 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gpiod_set_value(i32 %84, i32 1)
  %86 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %87 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @gpiod_set_value(i32 %88, i32 0)
  br label %90

90:                                               ; preds = %77, %71, %57
  %91 = load %struct.cbus_host*, %struct.cbus_host** %6, align 8
  %92 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %91, i32 0, i32 0
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @cbus_send_data(%struct.cbus_host*, i32, i32) #1

declare dso_local i32 @cbus_send_bit(%struct.cbus_host*, i32) #1

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cbus_receive_word(%struct.cbus_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
