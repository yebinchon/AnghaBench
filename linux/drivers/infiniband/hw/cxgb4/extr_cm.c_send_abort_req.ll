; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_send_abort_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_send_abort_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@abort_arp_failure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_ep*)* @send_abort_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_abort_req(%struct.c4iw_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  %6 = call i32 @roundup(i32 4, i32 16)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %8 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = call %struct.sk_buff* @skb_dequeue(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %12 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %13 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %11, i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
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
  br label %47

25:                                               ; preds = %1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %29 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %32 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %35 = load i32, i32* @abort_arp_failure, align 4
  %36 = call i32 @cxgb_mk_abort_req(%struct.sk_buff* %26, i32 %27, i32 %30, i32 %33, %struct.c4iw_ep* %34, i32 %35)
  %37 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %38 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @c4iw_l2t_send(i32* %41, %struct.sk_buff* %42, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %25, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cxgb_mk_abort_req(%struct.sk_buff*, i32, i32, i32, %struct.c4iw_ep*, i32) #1

declare dso_local i32 @c4iw_l2t_send(i32*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
