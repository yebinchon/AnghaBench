; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via686a_data = type { i32 }

@VIA686A_REG_CONFIG = common dso_local global i32 0, align 4
@VIA686A_REG_TEMP_MODE = common dso_local global i32 0, align 4
@VIA686A_TEMP_MODE_MASK = common dso_local global i32 0, align 4
@VIA686A_TEMP_MODE_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via686a_data*)* @via686a_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via686a_init_device(%struct.via686a_data* %0) #0 {
  %2 = alloca %struct.via686a_data*, align 8
  %3 = alloca i32, align 4
  store %struct.via686a_data* %0, %struct.via686a_data** %2, align 8
  %4 = load %struct.via686a_data*, %struct.via686a_data** %2, align 8
  %5 = load i32, i32* @VIA686A_REG_CONFIG, align 4
  %6 = call i32 @via686a_read_value(%struct.via686a_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.via686a_data*, %struct.via686a_data** %2, align 8
  %8 = load i32, i32* @VIA686A_REG_CONFIG, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 1
  %11 = and i32 %10, 127
  %12 = call i32 @via686a_write_value(%struct.via686a_data* %7, i32 %8, i32 %11)
  %13 = load %struct.via686a_data*, %struct.via686a_data** %2, align 8
  %14 = load i32, i32* @VIA686A_REG_TEMP_MODE, align 4
  %15 = call i32 @via686a_read_value(%struct.via686a_data* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.via686a_data*, %struct.via686a_data** %2, align 8
  %17 = load i32, i32* @VIA686A_REG_TEMP_MODE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @VIA686A_TEMP_MODE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, i32* @VIA686A_TEMP_MODE_CONTINUOUS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @via686a_write_value(%struct.via686a_data* %16, i32 %17, i32 %23)
  %25 = load %struct.via686a_data*, %struct.via686a_data** %2, align 8
  %26 = call i32 @via686a_update_fan_div(%struct.via686a_data* %25)
  ret void
}

declare dso_local i32 @via686a_read_value(%struct.via686a_data*, i32) #1

declare dso_local i32 @via686a_write_value(%struct.via686a_data*, i32, i32) #1

declare dso_local i32 @via686a_update_fan_div(%struct.via686a_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
