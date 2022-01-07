; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_create_flowc_wr_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_create_flowc_wr_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.fw_flowc_wr = type { i32 }
%struct.chtls_sock = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, %struct.fw_flowc_wr*, i32)* @create_flowc_wr_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_flowc_wr_skb(%struct.sock* %0, %struct.fw_flowc_wr* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.fw_flowc_wr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chtls_sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.fw_flowc_wr* %1, %struct.fw_flowc_wr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %10)
  store %struct.chtls_sock* %11, %struct.chtls_sock** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sk_buff* @alloc_skb(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @__skb_put(%struct.sk_buff* %19, i32 %20)
  %22 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @memcpy(i32 %21, %struct.fw_flowc_wr* %22, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %27 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 1
  %30 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %25, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %4, align 8
  br label %34

34:                                               ; preds = %18, %17
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %35
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.fw_flowc_wr*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
