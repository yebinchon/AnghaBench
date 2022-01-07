; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_channel_bctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_channel_bctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32 }
%struct.mISDN_ctrl_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bchannel*, %struct.mISDN_ctrl_req*)* @channel_bctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_bctrl(%struct.bchannel* %0, %struct.mISDN_ctrl_req* %1) #0 {
  %3 = alloca %struct.bchannel*, align 8
  %4 = alloca %struct.mISDN_ctrl_req*, align 8
  store %struct.bchannel* %0, %struct.bchannel** %3, align 8
  store %struct.mISDN_ctrl_req* %1, %struct.mISDN_ctrl_req** %4, align 8
  %5 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %6 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %7 = call i32 @mISDN_ctrl_bchannel(%struct.bchannel* %5, %struct.mISDN_ctrl_req* %6)
  ret i32 %7
}

declare dso_local i32 @mISDN_ctrl_bchannel(%struct.bchannel*, %struct.mISDN_ctrl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
