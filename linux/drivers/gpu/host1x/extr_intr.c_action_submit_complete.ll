; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_action_submit_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_action_submit_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_waitlist = type { i32, i32, %struct.host1x_channel* }
%struct.host1x_channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_waitlist*)* @action_submit_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @action_submit_complete(%struct.host1x_waitlist* %0) #0 {
  %2 = alloca %struct.host1x_waitlist*, align 8
  %3 = alloca %struct.host1x_channel*, align 8
  store %struct.host1x_waitlist* %0, %struct.host1x_waitlist** %2, align 8
  %4 = load %struct.host1x_waitlist*, %struct.host1x_waitlist** %2, align 8
  %5 = getelementptr inbounds %struct.host1x_waitlist, %struct.host1x_waitlist* %4, i32 0, i32 2
  %6 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  store %struct.host1x_channel* %6, %struct.host1x_channel** %3, align 8
  %7 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  %8 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %7, i32 0, i32 1
  %9 = call i32 @host1x_cdma_update(i32* %8)
  %10 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  %11 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_name(i32 %12)
  %14 = load %struct.host1x_waitlist*, %struct.host1x_waitlist** %2, align 8
  %15 = getelementptr inbounds %struct.host1x_waitlist, %struct.host1x_waitlist* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.host1x_waitlist*, %struct.host1x_waitlist** %2, align 8
  %18 = getelementptr inbounds %struct.host1x_waitlist, %struct.host1x_waitlist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @trace_host1x_channel_submit_complete(i32 %13, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @host1x_cdma_update(i32*) #1

declare dso_local i32 @trace_host1x_channel_submit_complete(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
