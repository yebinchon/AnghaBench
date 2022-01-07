; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c___adv7511_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c___adv7511_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32 }

@ADV7511_REG_POWER = common dso_local global i32 0, align 4
@ADV7511_POWER_POWER_DOWN = common dso_local global i32 0, align 4
@ADV7511_INT1_DDC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*)* @__adv7511_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__adv7511_power_off(%struct.adv7511* %0) #0 {
  %2 = alloca %struct.adv7511*, align 8
  store %struct.adv7511* %0, %struct.adv7511** %2, align 8
  %3 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %4 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ADV7511_REG_POWER, align 4
  %7 = load i32, i32* @ADV7511_POWER_POWER_DOWN, align 4
  %8 = load i32, i32* @ADV7511_POWER_POWER_DOWN, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %11 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ADV7511_REG_INT_ENABLE(i32 1)
  %14 = load i32, i32* @ADV7511_INT1_DDC_ERROR, align 4
  %15 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %17 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regcache_mark_dirty(i32 %18)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADV7511_REG_INT_ENABLE(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
