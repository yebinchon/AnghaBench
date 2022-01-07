; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_disable_fan_smart_tach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_disable_fan_smart_tach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32 }

@LM93_REG_SF_TACH_TO_PWM = common dso_local global i32 0, align 4
@LM93_REG_SFC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.lm93_data*, i32)* @lm93_disable_fan_smart_tach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm93_disable_fan_smart_tach(%struct.i2c_client* %0, %struct.lm93_data* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.lm93_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.lm93_data* %1, %struct.lm93_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @LM93_REG_SF_TACH_TO_PWM, align 4
  %11 = call i8* @lm93_read_byte(%struct.i2c_client* %9, i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %13, %14
  %16 = and i32 %15, 85
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 4
  %21 = ashr i32 %20, 1
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 16
  %26 = ashr i32 %25, 2
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 64
  %31 = ashr i32 %30, 3
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @LM93_REG_SFC2, align 4
  %36 = call i8* @lm93_read_byte(%struct.i2c_client* %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.lm93_data*, %struct.lm93_data** %5, align 8
  %39 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.lm93_data*, %struct.lm93_data** %5, align 8
  %43 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* @LM93_REG_SFC2, align 4
  %48 = load %struct.lm93_data*, %struct.lm93_data** %5, align 8
  %49 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @lm93_write_byte(%struct.i2c_client* %46, i32 %47, i32 %50)
  ret void
}

declare dso_local i8* @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
