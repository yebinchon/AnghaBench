; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_run_poll_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_run_poll_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32, i32, i64, i32 (%struct.gameport*)* }
%struct.timer_list = type { i32 }

@poll_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@gameport = common dso_local global %struct.gameport* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @gameport_run_poll_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gameport_run_poll_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.gameport*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.gameport*, %struct.gameport** %3, align 8
  %5 = ptrtoint %struct.gameport* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @poll_timer, align 4
  %8 = call %struct.gameport* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.gameport* %8, %struct.gameport** %3, align 8
  %9 = load %struct.gameport*, %struct.gameport** %3, align 8
  %10 = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 3
  %11 = load i32 (%struct.gameport*)*, i32 (%struct.gameport*)** %10, align 8
  %12 = load %struct.gameport*, %struct.gameport** %3, align 8
  %13 = call i32 %11(%struct.gameport* %12)
  %14 = load %struct.gameport*, %struct.gameport** %3, align 8
  %15 = getelementptr inbounds %struct.gameport, %struct.gameport* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.gameport*, %struct.gameport** %3, align 8
  %20 = getelementptr inbounds %struct.gameport, %struct.gameport* %19, i32 0, i32 1
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.gameport*, %struct.gameport** %3, align 8
  %23 = getelementptr inbounds %struct.gameport, %struct.gameport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = add nsw i64 %21, %25
  %27 = call i32 @mod_timer(i32* %20, i64 %26)
  br label %28

28:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.gameport* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
