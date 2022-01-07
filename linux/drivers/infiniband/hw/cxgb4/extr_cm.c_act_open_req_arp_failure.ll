; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_act_open_req_arp_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_act_open_req_arp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.c4iw_ep = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ARP failure during connect\0A\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@DEAD = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@FAKE_CPL_PUT_EP_SAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*)* @act_open_req_arp_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @act_open_req_arp_failure(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.c4iw_ep*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.c4iw_ep*
  store %struct.c4iw_ep* %8, %struct.c4iw_ep** %5, align 8
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %11 = load i32, i32* @EHOSTUNREACH, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @connect_reply_upcall(%struct.c4iw_ep* %10, i32 %12)
  %14 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %15 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %14, i32 0, i32 1
  %16 = load i32, i32* @DEAD, align 4
  %17 = call i32 @__state_set(%struct.TYPE_12__* %15, i32 %16)
  %18 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %19 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %27 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = bitcast i32* %28 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %29, %struct.sockaddr_in6** %6, align 8
  %30 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %31 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @cxgb4_clip_release(i32 %39, i32* %42, i32 1)
  br label %44

44:                                               ; preds = %25, %2
  %45 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %46 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %51 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @xa_erase_irq(i32* %49, i32 %52)
  %54 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %55 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %63 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @cxgb4_free_atid(i32 %61, i32 %64)
  %66 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load i32, i32* @FAKE_CPL_PUT_EP_SAFE, align 4
  %69 = call i32 @queue_arp_failure_cpl(%struct.c4iw_ep* %66, %struct.sk_buff* %67, i32 %68)
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @connect_reply_upcall(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @__state_set(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cxgb4_clip_release(i32, i32*, i32) #1

declare dso_local i32 @xa_erase_irq(i32*, i32) #1

declare dso_local i32 @cxgb4_free_atid(i32, i32) #1

declare dso_local i32 @queue_arp_failure_cpl(%struct.c4iw_ep*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
