; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i64, i32 }

@ADV7533 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*)* @adv7511_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_power_off(%struct.adv7511* %0) #0 {
  %2 = alloca %struct.adv7511*, align 8
  store %struct.adv7511* %0, %struct.adv7511** %2, align 8
  %3 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %4 = call i32 @__adv7511_power_off(%struct.adv7511* %3)
  %5 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %6 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ADV7533, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %12 = call i32 @adv7533_dsi_power_off(%struct.adv7511* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %15 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  ret void
}

declare dso_local i32 @__adv7511_power_off(%struct.adv7511*) #1

declare dso_local i32 @adv7533_dsi_power_off(%struct.adv7511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
