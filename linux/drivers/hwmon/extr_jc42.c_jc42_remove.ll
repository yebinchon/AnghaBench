; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.jc42_data = type { i32, i32 }

@JC42_CFG_HYST_MASK = common dso_local global i32 0, align 4
@JC42_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @jc42_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jc42_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.jc42_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.jc42_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.jc42_data* %6, %struct.jc42_data** %3, align 8
  %7 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %8 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @JC42_CFG_HYST_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %14 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @JC42_CFG_HYST_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %12, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %22 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @JC42_CFG_HYST_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %28 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @JC42_CFG_HYST_MASK, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %26, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = load i32, i32* @JC42_REG_CONFIG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local %struct.jc42_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
