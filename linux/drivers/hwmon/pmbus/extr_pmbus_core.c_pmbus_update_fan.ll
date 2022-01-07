; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_update_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_update_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@pmbus_fan_config_registers = common dso_local global i32* null, align 8
@pmbus_fan_command_registers = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmbus_update_fan(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** @pmbus_fan_config_registers, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %17, i32 %18, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %66

29:                                               ; preds = %6
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %29
  %42 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** @pmbus_fan_config_registers, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @pmbus_write_byte_data(%struct.i2c_client* %42, i32 %43, i32 %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %7, align 4
  br label %66

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** @pmbus_fan_command_registers, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @_pmbus_write_word_data(%struct.i2c_client* %57, i32 %58, i32 %63, i32 %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %56, %53, %27
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_write_byte_data(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @_pmbus_write_word_data(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
