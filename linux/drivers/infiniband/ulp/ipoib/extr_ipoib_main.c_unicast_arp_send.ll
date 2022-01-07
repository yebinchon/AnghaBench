; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_unicast_arp_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_unicast_arp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_pseudo_header = type { i64 }
%struct.ipoib_dev_priv = type { i32, i32 }
%struct.rdma_netdev = type { i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)* }
%struct.net_device.0 = type opaque
%struct.ipoib_path = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@IPOIB_MAX_PATH_REC_QUEUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Send unicast ARP to %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, %struct.ipoib_pseudo_header*)* @unicast_arp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unicast_arp_send(%struct.sk_buff* %0, %struct.net_device* %1, %struct.ipoib_pseudo_header* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipoib_pseudo_header*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.rdma_netdev*, align 8
  %9 = alloca %struct.ipoib_path*, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.ipoib_pseudo_header* %2, %struct.ipoib_pseudo_header** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %13)
  store %struct.rdma_netdev* %14, %struct.rdma_netdev** %8, align 8
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %129

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.ipoib_pseudo_header*, %struct.ipoib_pseudo_header** %6, align 8
  %27 = getelementptr inbounds %struct.ipoib_pseudo_header, %struct.ipoib_pseudo_header* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 4
  %30 = call %struct.ipoib_path* @__path_find(%struct.net_device* %25, i64 %29)
  store %struct.ipoib_path* %30, %struct.ipoib_path** %9, align 8
  %31 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %32 = icmp ne %struct.ipoib_path* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  %34 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %35 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %40 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %98, label %45

45:                                               ; preds = %38, %33, %24
  %46 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %47 = icmp ne %struct.ipoib_path* %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load %struct.ipoib_pseudo_header*, %struct.ipoib_pseudo_header** %6, align 8
  %51 = getelementptr inbounds %struct.ipoib_pseudo_header, %struct.ipoib_pseudo_header* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 4
  %54 = call %struct.ipoib_path* @path_rec_create(%struct.net_device* %49, i64 %53)
  store %struct.ipoib_path* %54, %struct.ipoib_path** %9, align 8
  %55 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %56 = icmp ne %struct.ipoib_path* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %129

58:                                               ; preds = %48
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %61 = call i32 @__path_add(%struct.net_device* %59, %struct.ipoib_path* %60)
  br label %70

62:                                               ; preds = %45
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %64 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %65 = load %struct.ipoib_pseudo_header*, %struct.ipoib_pseudo_header** %6, align 8
  %66 = getelementptr inbounds %struct.ipoib_pseudo_header, %struct.ipoib_pseudo_header* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 4
  %69 = call i32 @init_path_rec(%struct.ipoib_dev_priv* %63, %struct.ipoib_path* %64, i64 %68)
  br label %70

70:                                               ; preds = %62, %58
  %71 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %72 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %78 = call i64 @path_rec_start(%struct.net_device* %76, %struct.ipoib_path* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %129

81:                                               ; preds = %75, %70
  %82 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %83 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %82, i32 0, i32 2
  %84 = call i64 @skb_queue_len(i32* %83)
  %85 = load i64, i64* @IPOIB_MAX_PATH_REC_QUEUE, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load %struct.ipoib_pseudo_header*, %struct.ipoib_pseudo_header** %6, align 8
  %90 = getelementptr inbounds %struct.ipoib_pseudo_header, %struct.ipoib_pseudo_header* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @push_pseudo_header(%struct.sk_buff* %88, i64 %91)
  %93 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %94 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %93, i32 0, i32 2
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @__skb_queue_tail(i32* %94, %struct.sk_buff* %95)
  br label %137

97:                                               ; preds = %81
  br label %129

98:                                               ; preds = %38
  %99 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %100 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %99, i32 0, i32 0
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %104 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %105 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %104, i32 0, i32 1
  %106 = call i32 @sa_path_get_dlid(i32* %105)
  %107 = call i32 @be32_to_cpu(i32 %106)
  %108 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load %struct.rdma_netdev*, %struct.rdma_netdev** %8, align 8
  %110 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %109, i32 0, i32 0
  %111 = load i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)*, i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)** %110, align 8
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = bitcast %struct.net_device* %112 to %struct.net_device.0*
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %116 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ipoib_pseudo_header*, %struct.ipoib_pseudo_header** %6, align 8
  %121 = getelementptr inbounds %struct.ipoib_pseudo_header, %struct.ipoib_pseudo_header* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @IPOIB_QPN(i64 %122)
  %124 = call i32 %111(%struct.net_device.0* %113, %struct.sk_buff* %114, i32 %119, i32 %123)
  %125 = load %struct.ipoib_path*, %struct.ipoib_path** %9, align 8
  %126 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  br label %142

129:                                              ; preds = %97, %80, %57, %23
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %129, %87
  %138 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %139 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %138, i32 0, i32 0
  %140 = load i64, i64* %10, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  br label %142

142:                                              ; preds = %137, %98
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipoib_path* @__path_find(%struct.net_device*, i64) #1

declare dso_local %struct.ipoib_path* @path_rec_create(%struct.net_device*, i64) #1

declare dso_local i32 @__path_add(%struct.net_device*, %struct.ipoib_path*) #1

declare dso_local i32 @init_path_rec(%struct.ipoib_dev_priv*, %struct.ipoib_path*, i64) #1

declare dso_local i64 @path_rec_start(%struct.net_device*, %struct.ipoib_path*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @push_pseudo_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @sa_path_get_dlid(i32*) #1

declare dso_local i32 @IPOIB_QPN(i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
