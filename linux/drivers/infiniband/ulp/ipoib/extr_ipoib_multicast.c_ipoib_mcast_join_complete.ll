; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { i32, %struct.ipoib_mcast* }
%struct.ipoib_mcast = type { i32, i32, i32, i32, %struct.ib_sa_multicast*, i32, %struct.TYPE_5__, i32, %struct.net_device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, %struct.ipoib_mcast* }

@.str = private unnamed_addr constant [40 x i8] c"%sjoin completion for %pI6 (status %d)\0A\00", align 1
@IPOIB_MCAST_FLAG_SENDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sendonly \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENETRESET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%smulticast join failed for %pI6, status %d\0A\00", align 1
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_sa_multicast*)* @ipoib_mcast_join_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_join_complete(i32 %0, %struct.ib_sa_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_sa_multicast*, align 8
  %5 = alloca %struct.ipoib_mcast*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ib_sa_multicast* %1, %struct.ib_sa_multicast** %4, align 8
  %9 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %4, align 8
  %10 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %9, i32 0, i32 1
  %11 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  store %struct.ipoib_mcast* %11, %struct.ipoib_mcast** %5, align 8
  %12 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %13 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %12, i32 0, i32 8
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %15)
  store %struct.ipoib_dev_priv* %16, %struct.ipoib_dev_priv** %7, align 8
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %18 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %19 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %20 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %19, i32 0, i32 3
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %26 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ENETRESET, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %188

37:                                               ; preds = %2
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %42 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %4, align 8
  %43 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %42, i32 0, i32 0
  %44 = call i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast* %41, i32* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %45
  %49 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %50 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @jiffies, align 4
  %52 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %53 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 3
  %57 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %56, align 8
  %58 = icmp eq %struct.ipoib_mcast* %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_irq(i32* %61)
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %64 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %67 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %66, i32 0, i32 1
  %68 = call i32 @queue_work(i32 %65, i32* %67)
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %70 = call i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv* %69, %struct.ipoib_mcast* null, i32 0)
  br label %192

71:                                               ; preds = %48
  br label %187

72:                                               ; preds = %45
  %73 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %74 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %75 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %74, i32 0, i32 3
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br label %83

83:                                               ; preds = %78, %72
  %84 = phi i1 [ false, %72 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %87 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 20
  br i1 %89, label %90, label %144

90:                                               ; preds = %83
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %100, %95, %90
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %105 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %106 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %107 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %106, i32 0, i32 3
  %108 = call i64 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %112 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %113 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %111, i32 %116, i32 %117)
  br label %135

119:                                              ; preds = %100
  %120 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %121 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %122 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %123 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %122, i32 0, i32 3
  %124 = call i64 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %128 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %129 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %127, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %119, %103
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %140 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %138, %135
  br label %144

144:                                              ; preds = %143, %83
  %145 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %146 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %147 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %146, i32 0, i32 3
  %148 = call i64 @test_bit(i32 %145, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %144
  %151 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %152 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sge i32 %153, 2
  br i1 %154, label %155, label %179

155:                                              ; preds = %150
  %156 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %157 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.net_device*, %struct.net_device** %6, align 8
  %159 = call i32 @netif_tx_lock_bh(%struct.net_device* %158)
  br label %160

160:                                              ; preds = %166, %155
  %161 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %162 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %161, i32 0, i32 5
  %163 = call i32 @skb_queue_empty(i32* %162)
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load %struct.net_device*, %struct.net_device** %6, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %173 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %172, i32 0, i32 5
  %174 = call i32 @skb_dequeue(i32* %173)
  %175 = call i32 @dev_kfree_skb_any(i32 %174)
  br label %160

176:                                              ; preds = %160
  %177 = load %struct.net_device*, %struct.net_device** %6, align 8
  %178 = call i32 @netif_tx_unlock_bh(%struct.net_device* %177)
  br label %186

179:                                              ; preds = %150, %144
  %180 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %181 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %180, i32 0, i32 0
  %182 = call i32 @spin_lock_irq(i32* %181)
  %183 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %184 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %185 = call i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv* %183, %struct.ipoib_mcast* %184, i32 1)
  br label %192

186:                                              ; preds = %176
  br label %187

187:                                              ; preds = %186, %71
  br label %188

188:                                              ; preds = %187, %36
  %189 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %190 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %189, i32 0, i32 0
  %191 = call i32 @spin_lock_irq(i32* %190)
  br label %192

192:                                              ; preds = %188, %179, %59
  %193 = load i32, i32* %3, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %197 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %196, i32 0, i32 4
  store %struct.ib_sa_multicast* null, %struct.ib_sa_multicast** %197, align 8
  br label %202

198:                                              ; preds = %192
  %199 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %4, align 8
  %200 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %201 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %200, i32 0, i32 4
  store %struct.ib_sa_multicast* %199, %struct.ib_sa_multicast** %201, align 8
  br label %202

202:                                              ; preds = %198, %195
  %203 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %204 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %205 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %204, i32 0, i32 3
  %206 = call i32 @clear_bit(i32 %203, i32* %205)
  %207 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %208 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %207, i32 0, i32 0
  %209 = call i32 @spin_unlock_irq(i32* %208)
  %210 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %211 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %210, i32 0, i32 2
  %212 = call i32 @complete(i32* %211)
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv*, %struct.ipoib_mcast*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i8*, i32, i32) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
