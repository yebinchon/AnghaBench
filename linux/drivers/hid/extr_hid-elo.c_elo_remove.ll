; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.elo_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @elo_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elo_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.elo_priv*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = call %struct.elo_priv* @hid_get_drvdata(%struct.hid_device* %4)
  store %struct.elo_priv* %5, %struct.elo_priv** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = call i32 @hid_hw_stop(%struct.hid_device* %6)
  %8 = load %struct.elo_priv*, %struct.elo_priv** %3, align 8
  %9 = getelementptr inbounds %struct.elo_priv, %struct.elo_priv* %8, i32 0, i32 0
  %10 = call i32 @cancel_delayed_work_sync(i32* %9)
  %11 = load %struct.elo_priv*, %struct.elo_priv** %3, align 8
  %12 = call i32 @kfree(%struct.elo_priv* %11)
  ret void
}

declare dso_local %struct.elo_priv* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.elo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
