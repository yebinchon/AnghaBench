; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_rx_data = type { i32 }
%struct.sock = type { i32 }

@RSS_HDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't find conn. for hwtid %u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@chtls_recv_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sk_buff*)* @chtls_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_rx_data(%struct.chtls_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_rx_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.cpl_rx_data* @cplhdr(%struct.sk_buff* %9)
  %11 = load i32, i32* @RSS_HDR, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cpl_rx_data, %struct.cpl_rx_data* %10, i64 %12
  store %struct.cpl_rx_data* %13, %struct.cpl_rx_data** %6, align 8
  %14 = load %struct.cpl_rx_data*, %struct.cpl_rx_data** %6, align 8
  %15 = call i32 @GET_TID(%struct.cpl_rx_data* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %17 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.sock* @lookup_tid(i32 %18, i32 %19)
  store %struct.sock* %20, %struct.sock** %8, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = icmp ne %struct.sock* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @skb_dst_set(%struct.sk_buff* %33, i32* null)
  %35 = load i32, i32* @chtls_recv_data, align 4
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @process_cpl_msg(i32 %35, %struct.sock* %36, %struct.sk_buff* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.cpl_rx_data* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_rx_data*) #1

declare dso_local %struct.sock* @lookup_tid(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @process_cpl_msg(i32, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
