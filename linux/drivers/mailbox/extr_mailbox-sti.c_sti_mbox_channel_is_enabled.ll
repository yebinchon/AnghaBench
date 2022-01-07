; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_channel_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_channel_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.sti_channel* }
%struct.sti_channel = type { i32, i32, %struct.sti_mbox_device* }
%struct.sti_mbox_device = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @sti_mbox_channel_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_mbox_channel_is_enabled(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.sti_channel*, align 8
  %4 = alloca %struct.sti_mbox_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 0
  %9 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  store %struct.sti_channel* %9, %struct.sti_channel** %3, align 8
  %10 = load %struct.sti_channel*, %struct.sti_channel** %3, align 8
  %11 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %10, i32 0, i32 2
  %12 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %11, align 8
  store %struct.sti_mbox_device* %12, %struct.sti_mbox_device** %4, align 8
  %13 = load %struct.sti_channel*, %struct.sti_channel** %3, align 8
  %14 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sti_channel*, %struct.sti_channel** %3, align 8
  %17 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %4, align 8
  %20 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  ret i32 %28
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
