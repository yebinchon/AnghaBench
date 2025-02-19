; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_setup_smbus_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_setup_smbus_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_smbus_alert_setup = type { i32 }
%struct.i2c_board_info = type { %struct.i2c_smbus_alert_setup*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @i2c_setup_smbus_alert(%struct.i2c_adapter* %0, %struct.i2c_smbus_alert_setup* %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_smbus_alert_setup*, align 8
  %5 = alloca %struct.i2c_board_info, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store %struct.i2c_smbus_alert_setup* %1, %struct.i2c_smbus_alert_setup** %4, align 8
  %6 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 0
  %7 = load %struct.i2c_smbus_alert_setup*, %struct.i2c_smbus_alert_setup** %4, align 8
  store %struct.i2c_smbus_alert_setup* %7, %struct.i2c_smbus_alert_setup** %6, align 8
  %8 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 1
  store i32 0, i32* %8, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %9, %struct.i2c_board_info* %5)
  ret %struct.i2c_client* %10
}

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
