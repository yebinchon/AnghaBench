; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_setled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_setled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca9532_led = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.pca9532_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pca9532_led*)* @pca9532_setled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca9532_setled(%struct.pca9532_led* %0) #0 {
  %2 = alloca %struct.pca9532_led*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.pca9532_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.pca9532_led* %0, %struct.pca9532_led** %2, align 8
  %7 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %8 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.pca9532_data* %11, %struct.pca9532_data** %4, align 8
  %12 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %13 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %18 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %23 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @LED_REG(i32 %21, i32 %24)
  %26 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %20, i32 %25)
  store i8 %26, i8* %6, align 1
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %30 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @LED_NUM(i32 %31)
  %33 = mul nsw i32 %32, 2
  %34 = shl i32 3, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %28, %35
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %6, align 1
  %38 = load i8, i8* %6, align 1
  %39 = sext i8 %38 to i32
  %40 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %41 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %44 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @LED_NUM(i32 %45)
  %47 = mul nsw i32 %46, 2
  %48 = shl i32 %42, %47
  %49 = or i32 %39, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %6, align 1
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %54 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @LED_REG(i32 %52, i32 %55)
  %57 = load i8, i8* %6, align 1
  %58 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %51, i32 %56, i8 signext %57)
  %59 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %60 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  ret void
}

declare dso_local %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @LED_REG(i32, i32) #1

declare dso_local i32 @LED_NUM(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i8 signext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
