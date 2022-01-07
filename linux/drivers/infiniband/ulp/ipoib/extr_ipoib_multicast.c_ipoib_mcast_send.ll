; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_netdev = type { i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)* }
%struct.net_device.0 = type opaque
%struct.ipoib_mcast = type { %struct.TYPE_10__*, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ipoib_neigh = type { i32, %struct.TYPE_10__* }

@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"setting up send only multicast group for %pI6\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"unable to allocate memory for multicast structure\0A\00", align 1
@IPOIB_MCAST_FLAG_SENDONLY = common dso_local global i32 0, align 4
@IPOIB_MAX_MCAST_QUEUE = common dso_local global i64 0, align 8
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@IB_MULTICAST_QPN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_mcast_send(%struct.net_device* %0, i32* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.rdma_netdev*, align 8
  %9 = alloca %struct.ipoib_mcast*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ipoib_neigh*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %13)
  store %struct.ipoib_dev_priv* %14, %struct.ipoib_dev_priv** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %15)
  store %struct.rdma_netdev* %16, %struct.rdma_netdev** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %11, align 8
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %26 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %25, i32 0, i32 3
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* @IPOIB_MCAST_FLAG_ATTACHED, align 4
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @test_bit(i32 %35, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %34, %29, %3
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %48)
  br label %208

50:                                               ; preds = %34
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call %struct.ipoib_mcast* @__ipoib_mcast_find(%struct.net_device* %51, i8* %52)
  store %struct.ipoib_mcast* %53, %struct.ipoib_mcast** %9, align 8
  %54 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %55 = icmp ne %struct.ipoib_mcast* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %58 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %133, label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %63 = icmp ne %struct.ipoib_mcast* %62, null
  br i1 %63, label %102, label %64

64:                                               ; preds = %61
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.net_device* %68, i32 0)
  store %struct.ipoib_mcast* %69, %struct.ipoib_mcast** %9, align 8
  %70 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %71 = icmp ne %struct.ipoib_mcast* %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %64
  %73 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %74 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  br label %208

82:                                               ; preds = %64
  %83 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %84 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %85 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %84, i32 0, i32 2
  %86 = call i32 @set_bit(i32 %83, i32* %85)
  %87 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %88 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @memcpy(i32 %91, i8* %92, i32 4)
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %96 = call i32 @__ipoib_mcast_add(%struct.net_device* %94, %struct.ipoib_mcast* %95)
  %97 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %98 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %97, i32 0, i32 4
  %99 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %100 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %99, i32 0, i32 1
  %101 = call i32 @list_add_tail(i32* %98, i32* %100)
  br label %102

102:                                              ; preds = %82, %61
  %103 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %104 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %103, i32 0, i32 3
  %105 = call i64 @skb_queue_len(i32* %104)
  %106 = load i64, i64* @IPOIB_MAX_MCAST_QUEUE, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i32 @skb_push(%struct.sk_buff* %109, i32 4)
  %111 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %112 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %111, i32 0, i32 3
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = call i32 @skb_queue_tail(i32* %112, %struct.sk_buff* %113)
  br label %123

115:                                              ; preds = %102
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %115, %108
  %124 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %125 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %126 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %125, i32 0, i32 2
  %127 = call i32 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %131 = call i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv* %130, i32* null, i32 0)
  br label %132

132:                                              ; preds = %129, %123
  br label %207

133:                                              ; preds = %56
  %134 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %135 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %134, i32 0, i32 0
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = call %struct.ipoib_neigh* @ipoib_neigh_get(%struct.net_device* %138, i32* %139)
  store %struct.ipoib_neigh* %140, %struct.ipoib_neigh** %12, align 8
  %141 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %142 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %141, i32 0, i32 0
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @spin_lock_irqsave(i32* %142, i64 %143)
  %145 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %12, align 8
  %146 = icmp ne %struct.ipoib_neigh* %145, null
  br i1 %146, label %179, label %147

147:                                              ; preds = %133
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = call %struct.ipoib_neigh* @ipoib_neigh_alloc(i32* %148, %struct.net_device* %149)
  store %struct.ipoib_neigh* %150, %struct.ipoib_neigh** %12, align 8
  %151 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %12, align 8
  %152 = icmp ne %struct.ipoib_neigh* %151, null
  br i1 %152, label %153, label %178

153:                                              ; preds = %147
  %154 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %12, align 8
  %155 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %154, i32 0, i32 0
  %156 = call i64 @list_empty(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %153
  %159 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %160 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %159, i32 0, i32 0
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 3
  %163 = call i32 @kref_get(i32* %162)
  %164 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %165 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %12, align 8
  %168 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %167, i32 0, i32 1
  store %struct.TYPE_10__* %166, %struct.TYPE_10__** %168, align 8
  %169 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %12, align 8
  %170 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %169, i32 0, i32 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 4
  %173 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %12, align 8
  %174 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %173, i32 0, i32 0
  %175 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %176 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %175, i32 0, i32 1
  %177 = call i32 @list_add_tail(i32* %174, i32* %176)
  br label %178

178:                                              ; preds = %158, %153, %147
  br label %179

179:                                              ; preds = %178, %133
  %180 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %181 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %180, i32 0, i32 0
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  %184 = load %struct.rdma_netdev*, %struct.rdma_netdev** %8, align 8
  %185 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %184, i32 0, i32 0
  %186 = load i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)*, i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)** %185, align 8
  %187 = load %struct.net_device*, %struct.net_device** %4, align 8
  %188 = bitcast %struct.net_device* %187 to %struct.net_device.0*
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %191 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %190, i32 0, i32 0
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @IB_MULTICAST_QPN, align 4
  %196 = call i32 %186(%struct.net_device.0* %188, %struct.sk_buff* %189, i32 %194, i32 %195)
  %197 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  %198 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %197, i32 0, i32 0
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  store i32 %196, i32* %200, align 4
  %201 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %12, align 8
  %202 = icmp ne %struct.ipoib_neigh* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %179
  %204 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %12, align 8
  %205 = call i32 @ipoib_neigh_put(%struct.ipoib_neigh* %204)
  br label %206

206:                                              ; preds = %203, %179
  br label %213

207:                                              ; preds = %132
  br label %208

208:                                              ; preds = %207, %72, %42
  %209 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %210 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %209, i32 0, i32 0
  %211 = load i64, i64* %10, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  br label %213

213:                                              ; preds = %208, %206
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.ipoib_mcast* @__ipoib_mcast_find(%struct.net_device*, i8*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i8*) #1

declare dso_local %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__ipoib_mcast_add(%struct.net_device*, %struct.ipoib_mcast*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ipoib_neigh* @ipoib_neigh_get(%struct.net_device*, i32*) #1

declare dso_local %struct.ipoib_neigh* @ipoib_neigh_alloc(i32*, %struct.net_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @ipoib_neigh_put(%struct.ipoib_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
