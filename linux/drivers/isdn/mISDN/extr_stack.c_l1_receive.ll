; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_stack.c_l1_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_stack.c_l1_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mISDNchannel = type { i32 }
%struct.sk_buff = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mISDNchannel*, %struct.sk_buff*)* @l1_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l1_receive(%struct.mISDNchannel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mISDNchannel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.mISDNchannel* %0, %struct.mISDNchannel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.mISDNchannel*, %struct.mISDNchannel** %4, align 8
  %7 = getelementptr inbounds %struct.mISDNchannel, %struct.mISDNchannel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @__net_timestamp(%struct.sk_buff* %14)
  %16 = load %struct.mISDNchannel*, %struct.mISDNchannel** %4, align 8
  %17 = getelementptr inbounds %struct.mISDNchannel, %struct.mISDNchannel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @_queue_message(i32 %18, %struct.sk_buff* %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %13, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @_queue_message(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
