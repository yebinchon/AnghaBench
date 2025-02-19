; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hil_mlcs_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hil_mlcs_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@hil_mlcs_probe = common dso_local global i32 0, align 4
@hil_mlcs_tasklet = common dso_local global i32 0, align 4
@hil_mlcs_kicker = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hil_mlcs_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hil_mlcs_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 1, i32* @hil_mlcs_probe, align 4
  %3 = call i32 @tasklet_schedule(i32* @hil_mlcs_tasklet)
  %4 = call i32 @timer_pending(i32* @hil_mlcs_kicker)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @HZ, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @mod_timer(i32* @hil_mlcs_kicker, i64 %9)
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
