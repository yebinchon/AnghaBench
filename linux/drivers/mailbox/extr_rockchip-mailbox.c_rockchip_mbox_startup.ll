; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rockchip_mbox = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAILBOX_B2A_INTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @rockchip_mbox_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_mbox_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.rockchip_mbox*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %4 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %5 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.rockchip_mbox* @dev_get_drvdata(i32 %8)
  store %struct.rockchip_mbox* %9, %struct.rockchip_mbox** %3, align 8
  %10 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %3, align 8
  %11 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %3, align 8
  %17 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAILBOX_B2A_INTEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i32 %15, i64 %20)
  ret i32 0
}

declare dso_local %struct.rockchip_mbox* @dev_get_drvdata(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
