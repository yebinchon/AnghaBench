; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_fw_core_remove_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_fw_core_remove_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_descriptor = type { i64, i32 }

@card_mutex = common dso_local global i32 0, align 4
@config_rom_length = common dso_local global i32 0, align 4
@descriptor_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_core_remove_descriptor(%struct.fw_descriptor* %0) #0 {
  %2 = alloca %struct.fw_descriptor*, align 8
  store %struct.fw_descriptor* %0, %struct.fw_descriptor** %2, align 8
  %3 = call i32 @mutex_lock(i32* @card_mutex)
  %4 = load %struct.fw_descriptor*, %struct.fw_descriptor** %2, align 8
  %5 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %4, i32 0, i32 1
  %6 = call i32 @list_del(i32* %5)
  %7 = load %struct.fw_descriptor*, %struct.fw_descriptor** %2, align 8
  %8 = call i64 @required_space(%struct.fw_descriptor* %7)
  %9 = load i32, i32* @config_rom_length, align 4
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* @config_rom_length, align 4
  %13 = load i32, i32* @descriptor_count, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @descriptor_count, align 4
  %15 = load %struct.fw_descriptor*, %struct.fw_descriptor** %2, align 8
  %16 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @descriptor_count, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @descriptor_count, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = call i32 (...) @update_config_roms()
  %24 = call i32 @mutex_unlock(i32* @card_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @required_space(%struct.fw_descriptor*) #1

declare dso_local i32 @update_config_roms(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
