; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rockchip_mbox = type { %struct.rockchip_mbox_chan*, i64 }
%struct.rockchip_mbox_chan = type { i64, i32* }

@MAILBOX_B2A_INTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @rockchip_mbox_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_mbox_shutdown(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.rockchip_mbox*, align 8
  %4 = alloca %struct.rockchip_mbox_chan*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %5 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %6 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.rockchip_mbox* @dev_get_drvdata(i32 %9)
  store %struct.rockchip_mbox* %10, %struct.rockchip_mbox** %3, align 8
  %11 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %3, align 8
  %12 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %11, i32 0, i32 0
  %13 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %12, align 8
  store %struct.rockchip_mbox_chan* %13, %struct.rockchip_mbox_chan** %4, align 8
  %14 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %3, align 8
  %15 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAILBOX_B2A_INTEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 0, i64 %18)
  %20 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %3, align 8
  %21 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %20, i32 0, i32 0
  %22 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %21, align 8
  %23 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %4, align 8
  %24 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %22, i64 %25
  %27 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local %struct.rockchip_mbox* @dev_get_drvdata(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
