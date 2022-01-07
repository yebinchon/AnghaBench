; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i64, i32, i32 }

@ADV7533 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*)* @adv7511_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_power_on(%struct.adv7511* %0) #0 {
  %2 = alloca %struct.adv7511*, align 8
  store %struct.adv7511* %0, %struct.adv7511** %2, align 8
  %3 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %4 = call i32 @__adv7511_power_on(%struct.adv7511* %3)
  %5 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %6 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @regcache_sync(i32 %7)
  %9 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %10 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADV7533, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %16 = call i32 @adv7533_dsi_power_on(%struct.adv7511* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %19 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  ret void
}

declare dso_local i32 @__adv7511_power_on(%struct.adv7511*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @adv7533_dsi_power_on(%struct.adv7511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
