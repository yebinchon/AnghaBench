; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_peer_abort_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_peer_abort_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_abort_req_rss = type { %struct.c4iw_ep* }
%struct.c4iw_ep = type { %struct.TYPE_2__, %struct.c4iw_ep* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Abort on non-existent endpoint, tid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Negative advice on abort- tid %u status %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ep %p tid %u state %u\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @peer_abort_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peer_abort_intr(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_abort_req_rss*, align 8
  %7 = alloca %struct.c4iw_ep*, align 8
  %8 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff* %9)
  store %struct.cpl_abort_req_rss* %10, %struct.cpl_abort_req_rss** %6, align 8
  %11 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %12 = call i32 @GET_TID(%struct.cpl_abort_req_rss* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev* %13, i32 %14)
  store %struct.c4iw_ep* %15, %struct.c4iw_ep** %7, align 8
  %16 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %17 = icmp ne %struct.c4iw_ep* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @kfree_skb(%struct.sk_buff* %21)
  store i32 0, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %25 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %24, i32 0, i32 0
  %26 = load %struct.c4iw_ep*, %struct.c4iw_ep** %25, align 8
  %27 = call i64 @cxgb_is_neg_adv(%struct.c4iw_ep* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %31 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %30, i32 0, i32 1
  %32 = load %struct.c4iw_ep*, %struct.c4iw_ep** %31, align 8
  %33 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %34 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %33, i32 0, i32 0
  %35 = load %struct.c4iw_ep*, %struct.c4iw_ep** %34, align 8
  %36 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %37 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %36, i32 0, i32 0
  %38 = load %struct.c4iw_ep*, %struct.c4iw_ep** %37, align 8
  %39 = call i32 @neg_adv_str(%struct.c4iw_ep* %38)
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %32, %struct.c4iw_ep* %35, i32 %39)
  br label %58

41:                                               ; preds = %23
  %42 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 1
  %45 = load %struct.c4iw_ep*, %struct.c4iw_ep** %44, align 8
  %46 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %47 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.c4iw_ep* %42, %struct.c4iw_ep* %45, i32 %49)
  %51 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %52 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ECONNRESET, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 @c4iw_wake_up_noref(i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %41, %29
  %59 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @sched(%struct.c4iw_dev* %59, %struct.sk_buff* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_abort_req_rss*) #1

declare dso_local %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @cxgb_is_neg_adv(%struct.c4iw_ep*) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, %struct.c4iw_ep*, i32) #1

declare dso_local i32 @neg_adv_str(%struct.c4iw_ep*) #1

declare dso_local i32 @c4iw_wake_up_noref(i32, i32) #1

declare dso_local i32 @sched(%struct.c4iw_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
