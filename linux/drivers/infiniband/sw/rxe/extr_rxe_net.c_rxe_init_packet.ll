; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_init_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_init_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, %struct.net_device* }
%struct.net_device = type opaque
%struct.rxe_dev = type { i32 }
%struct.rxe_av = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rxe_pkt_info = type { i32, i32, i32, %struct.rxe_dev* }
%struct.ib_gid_attr = type opaque

@RDMA_NETWORK_IPV4 = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@RXE_GRH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @rxe_init_packet(%struct.rxe_dev* %0, %struct.rxe_av* %1, i32 %2, %struct.rxe_pkt_info* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxe_dev*, align 8
  %7 = alloca %struct.rxe_av*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rxe_pkt_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.ib_gid_attr*, align 8
  %14 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %6, align 8
  store %struct.rxe_av* %1, %struct.rxe_av** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rxe_pkt_info* %3, %struct.rxe_pkt_info** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  store i32 1, i32* %14, align 4
  %15 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %16 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %15, i32 0, i32 0
  %17 = load %struct.rxe_av*, %struct.rxe_av** %7, align 8
  %18 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.net_device* @rdma_get_gid_attr(i32* %16, i32 1, i32 %20)
  %22 = bitcast %struct.net_device* %21 to %struct.ib_gid_attr*
  store %struct.ib_gid_attr* %22, %struct.ib_gid_attr** %13, align 8
  %23 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %13, align 8
  %24 = bitcast %struct.ib_gid_attr* %23 to %struct.net_device*
  %25 = call i64 @IS_ERR(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %122

28:                                               ; preds = %4
  %29 = load %struct.rxe_av*, %struct.rxe_av** %7, align 8
  %30 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RDMA_NETWORK_IPV4, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @ETH_HLEN, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 4
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  br label %46

40:                                               ; preds = %28
  %41 = load i32, i32* @ETH_HLEN, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = add i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = call i32 (...) @rcu_read_lock()
  %48 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %13, align 8
  %49 = bitcast %struct.ib_gid_attr* %48 to %struct.net_device*
  %50 = call %struct.net_device* @rdma_read_gid_attr_ndev_rcu(%struct.net_device* %49)
  store %struct.net_device* %50, %struct.net_device** %12, align 8
  %51 = load %struct.net_device*, %struct.net_device** %12, align 8
  %52 = call i64 @IS_ERR(%struct.net_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 (...) @rcu_read_unlock()
  br label %117

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = load %struct.net_device*, %struct.net_device** %12, align 8
  %62 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %61)
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.sk_buff* @alloc_skb(i64 %63, i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %11, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = icmp ne %struct.sk_buff* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = call i32 (...) @rcu_read_unlock()
  br label %117

74:                                               ; preds = %56
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = load %struct.net_device*, %struct.net_device** %12, align 8
  %79 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %78)
  %80 = add nsw i64 %77, %79
  %81 = call i32 @skb_reserve(%struct.sk_buff* %75, i64 %80)
  %82 = load %struct.net_device*, %struct.net_device** %12, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  store %struct.net_device* %82, %struct.net_device** %84, align 8
  %85 = call i32 (...) @rcu_read_unlock()
  %86 = load %struct.rxe_av*, %struct.rxe_av** %7, align 8
  %87 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RDMA_NETWORK_IPV4, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %74
  %92 = load i32, i32* @ETH_P_IP, align 4
  %93 = call i8* @htons(i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %101

96:                                               ; preds = %74
  %97 = load i32, i32* @ETH_P_IPV6, align 4
  %98 = call i8* @htons(i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %103 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %104 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %103, i32 0, i32 3
  store %struct.rxe_dev* %102, %struct.rxe_dev** %104, align 8
  %105 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %106 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @skb_put_zero(%struct.sk_buff* %107, i32 %108)
  %110 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %111 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @RXE_GRH_MASK, align 4
  %113 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %114 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %101, %72, %54
  %118 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %13, align 8
  %119 = bitcast %struct.ib_gid_attr* %118 to %struct.net_device*
  %120 = call i32 @rdma_put_gid_attr(%struct.net_device* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %121, %struct.sk_buff** %5, align 8
  br label %122

122:                                              ; preds = %117, %27
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %123
}

declare dso_local %struct.net_device* @rdma_get_gid_attr(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rdma_read_gid_attr_ndev_rcu(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @rdma_put_gid_attr(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
