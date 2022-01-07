; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_set_lizard_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_set_lizard_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.steam_device = type { i32 }

@STEAM_CMD_DEFAULT_MAPPINGS = common dso_local global i32 0, align 4
@STEAM_CMD_DEFAULT_MOUSE = common dso_local global i32 0, align 4
@STEAM_REG_RPAD_MARGIN = common dso_local global i32 0, align 4
@STEAM_CMD_CLEAR_MAPPINGS = common dso_local global i32 0, align 4
@STEAM_REG_RPAD_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.steam_device*, i32)* @steam_set_lizard_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steam_set_lizard_mode(%struct.steam_device* %0, i32 %1) #0 {
  %3 = alloca %struct.steam_device*, align 8
  %4 = alloca i32, align 4
  store %struct.steam_device* %0, %struct.steam_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %9 = load i32, i32* @STEAM_CMD_DEFAULT_MAPPINGS, align 4
  %10 = call i32 @steam_send_report_byte(%struct.steam_device* %8, i32 %9)
  %11 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %12 = load i32, i32* @STEAM_CMD_DEFAULT_MOUSE, align 4
  %13 = call i32 @steam_send_report_byte(%struct.steam_device* %11, i32 %12)
  %14 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %15 = load i32, i32* @STEAM_REG_RPAD_MARGIN, align 4
  %16 = call i32 (%struct.steam_device*, i32, i32, i32, ...) @steam_write_registers(%struct.steam_device* %14, i32 %15, i32 1, i32 0)
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %19 = load i32, i32* @STEAM_CMD_CLEAR_MAPPINGS, align 4
  %20 = call i32 @steam_send_report_byte(%struct.steam_device* %18, i32 %19)
  %21 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %22 = load i32, i32* @STEAM_REG_RPAD_MODE, align 4
  %23 = load i32, i32* @STEAM_REG_RPAD_MARGIN, align 4
  %24 = call i32 (%struct.steam_device*, i32, i32, i32, ...) @steam_write_registers(%struct.steam_device* %21, i32 %22, i32 7, i32 %23, i32 0, i32 0)
  br label %25

25:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @steam_send_report_byte(%struct.steam_device*, i32) #1

declare dso_local i32 @steam_write_registers(%struct.steam_device*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
