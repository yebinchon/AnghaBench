; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm77.c_lm77_write_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm77.c_lm77_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@LM77_REG_CONF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i64, i32)* @lm77_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm77_write_value(%struct.i2c_client* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @LM77_REG_CONF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %12, i64 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %17, i64 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
