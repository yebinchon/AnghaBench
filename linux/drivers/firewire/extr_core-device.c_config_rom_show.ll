; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_config_rom_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_config_rom_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fw_device = type { i32, i32 }

@fw_device_rwsem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @config_rom_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @config_rom_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fw_device*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.fw_device* @fw_device(%struct.device* %9)
  store %struct.fw_device* %10, %struct.fw_device** %7, align 8
  %11 = call i32 @down_read(i32* @fw_device_rwsem)
  %12 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %13 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %19 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @memcpy(i8* %17, i32 %20, i64 %21)
  %23 = call i32 @up_read(i32* @fw_device_rwsem)
  %24 = load i64, i64* %8, align 8
  ret i64 %24
}

declare dso_local %struct.fw_device* @fw_device(%struct.device*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
