; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_abort_arp_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_abort_arp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.c4iw_rdev }
%struct.c4iw_rdev = type { i32 }
%struct.cpl_abort_req = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rdev %p\0A\00", align 1
@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@DEAD = common dso_local global i32 0, align 4
@FAKE_CPL_PUT_EP_SAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*)* @abort_arp_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_arp_failure(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c4iw_ep*, align 8
  %7 = alloca %struct.c4iw_rdev*, align 8
  %8 = alloca %struct.cpl_abort_req*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.c4iw_ep*
  store %struct.c4iw_ep* %10, %struct.c4iw_ep** %6, align 8
  %11 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %12 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.c4iw_rdev* %15, %struct.c4iw_rdev** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.cpl_abort_req* @cplhdr(%struct.sk_buff* %16)
  store %struct.cpl_abort_req* %17, %struct.cpl_abort_req** %8, align 8
  %18 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.c4iw_rdev* %18)
  %20 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  %21 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %8, align 8
  %22 = getelementptr inbounds %struct.cpl_abort_req, %struct.cpl_abort_req* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @skb_get(%struct.sk_buff* %23)
  %25 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @c4iw_ofld_send(%struct.c4iw_rdev* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %32 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %31, i32 0, i32 0
  %33 = load i32, i32* @DEAD, align 4
  %34 = call i32 @__state_set(%struct.TYPE_4__* %32, i32 %33)
  %35 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @FAKE_CPL_PUT_EP_SAFE, align 4
  %38 = call i32 @queue_arp_failure_cpl(%struct.c4iw_ep* %35, %struct.sk_buff* %36, i32 %37)
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %39, %30
  ret void
}

declare dso_local %struct.cpl_abort_req* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_rdev*) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @c4iw_ofld_send(%struct.c4iw_rdev*, %struct.sk_buff*) #1

declare dso_local i32 @__state_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @queue_arp_failure_cpl(%struct.c4iw_ep*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
