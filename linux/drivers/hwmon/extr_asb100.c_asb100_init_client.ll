; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.asb100_data = type { i32 }

@ASB100_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @asb100_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asb100_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.asb100_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.asb100_data* %5, %struct.asb100_data** %3, align 8
  %6 = call i32 (...) @vid_which_vrm()
  %7 = load %struct.asb100_data*, %struct.asb100_data** %3, align 8
  %8 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = load i32, i32* @ASB100_REG_CONFIG, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = load i32, i32* @ASB100_REG_CONFIG, align 4
  %13 = call i32 @asb100_read_value(%struct.i2c_client* %11, i32 %12)
  %14 = and i32 %13, 247
  %15 = or i32 %14, 1
  %16 = call i32 @asb100_write_value(%struct.i2c_client* %9, i32 %10, i32 %15)
  ret void
}

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @asb100_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @asb100_read_value(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
