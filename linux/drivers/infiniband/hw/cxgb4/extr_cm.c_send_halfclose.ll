; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_send_halfclose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_send_halfclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@arp_failure_discard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_ep*)* @send_halfclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_halfclose(%struct.c4iw_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_ep*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  %6 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = call i32 @roundup(i32 4, i32 16)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %12 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %13 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %11, i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %29 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %32 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @arp_failure_discard, align 4
  %35 = call i32 @cxgb_mk_close_con_req(%struct.sk_buff* %26, i32 %27, i32 %30, i32 %33, i32* null, i32 %34)
  %36 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %37 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %43 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @c4iw_l2t_send(i32* %40, %struct.sk_buff* %41, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %25, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cxgb_mk_close_con_req(%struct.sk_buff*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @c4iw_l2t_send(i32*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
