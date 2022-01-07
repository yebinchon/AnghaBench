; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_neigh_add_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_neigh_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_neigh = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_dev_priv = type { i32 }
%struct.rdma_netdev = type { i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)* }
%struct.net_device.0 = type opaque
%struct.ipoib_path = type { i32, %struct.TYPE_3__*, i32 }

@IPOIB_MAX_PATH_REC_QUEUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"queue length limit %d. Packet drop.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipoib_neigh* (%struct.sk_buff*, i32*, %struct.net_device*)* @neigh_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipoib_neigh* @neigh_add_path(%struct.sk_buff* %0, i32* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.ipoib_neigh*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  %9 = alloca %struct.rdma_netdev*, align 8
  %10 = alloca %struct.ipoib_path*, align 8
  %11 = alloca %struct.ipoib_neigh*, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %13)
  store %struct.ipoib_dev_priv* %14, %struct.ipoib_dev_priv** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %15)
  store %struct.rdma_netdev* %16, %struct.rdma_netdev** %9, align 8
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call %struct.ipoib_neigh* @ipoib_neigh_alloc(i32* %21, %struct.net_device* %22)
  store %struct.ipoib_neigh* %23, %struct.ipoib_neigh** %11, align 8
  %24 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %25 = icmp ne %struct.ipoib_neigh* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %3
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %36)
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %4, align 8
  br label %228

38:                                               ; preds = %3
  %39 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %40 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %39, i32 0, i32 3
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %49 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  store %struct.ipoib_neigh* %52, %struct.ipoib_neigh** %4, align 8
  br label %228

53:                                               ; preds = %38
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = call %struct.ipoib_path* @__path_find(%struct.net_device* %54, i32* %56)
  store %struct.ipoib_path* %57, %struct.ipoib_path** %10, align 8
  %58 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %59 = icmp ne %struct.ipoib_path* %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %53
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = call %struct.ipoib_path* @path_rec_create(%struct.net_device* %61, i32* %63)
  store %struct.ipoib_path* %64, %struct.ipoib_path** %10, align 8
  %65 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %66 = icmp ne %struct.ipoib_path* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %211

68:                                               ; preds = %60
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %71 = call i32 @__path_add(%struct.net_device* %69, %struct.ipoib_path* %70)
  br label %72

72:                                               ; preds = %68, %53
  %73 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %74 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %73, i32 0, i32 3
  %75 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %76 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %75, i32 0, i32 2
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  %78 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %79 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = icmp ne %struct.TYPE_3__* %80, null
  br i1 %81, label %82, label %173

82:                                               ; preds = %72
  %83 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %84 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %173

89:                                               ; preds = %82
  %90 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %91 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = call i32 @kref_get(i32* %93)
  %95 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %96 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %99 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %98, i32 0, i32 2
  store %struct.TYPE_3__* %97, %struct.TYPE_3__** %99, align 8
  %100 = load %struct.net_device*, %struct.net_device** %7, align 8
  %101 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %102 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @ipoib_cm_enabled(%struct.net_device* %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %147

106:                                              ; preds = %89
  %107 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %108 = call i32 @ipoib_cm_get(%struct.ipoib_neigh* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %114 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %115 = call i32 @ipoib_cm_create_tx(%struct.net_device* %112, %struct.ipoib_path* %113, %struct.ipoib_neigh* %114)
  %116 = call i32 @ipoib_cm_set(%struct.ipoib_neigh* %111, i32 %115)
  br label %117

117:                                              ; preds = %110, %106
  %118 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %119 = call i32 @ipoib_cm_get(%struct.ipoib_neigh* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %123 = call i32 @ipoib_neigh_free(%struct.ipoib_neigh* %122)
  br label %214

124:                                              ; preds = %117
  %125 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %126 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %125, i32 0, i32 0
  %127 = call i64 @skb_queue_len(i32* %126)
  %128 = load i64, i64* @IPOIB_MAX_PATH_REC_QUEUE, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %133 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @push_pseudo_header(%struct.sk_buff* %131, i32 %134)
  %136 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %137 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %136, i32 0, i32 0
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = call i32 @__skb_queue_tail(i32* %137, %struct.sk_buff* %138)
  br label %146

140:                                              ; preds = %124
  %141 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %142 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %143 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %142, i32 0, i32 0
  %144 = call i64 @skb_queue_len(i32* %143)
  %145 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %144)
  br label %214

146:                                              ; preds = %130
  br label %172

147:                                              ; preds = %89
  %148 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %149 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %148, i32 0, i32 0
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = load %struct.rdma_netdev*, %struct.rdma_netdev** %9, align 8
  %153 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %152, i32 0, i32 0
  %154 = load i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)*, i32 (%struct.net_device.0*, %struct.sk_buff*, i32, i32)** %153, align 8
  %155 = load %struct.net_device*, %struct.net_device** %7, align 8
  %156 = bitcast %struct.net_device* %155 to %struct.net_device.0*
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %159 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %158, i32 0, i32 1
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @IPOIB_QPN(i32* %163)
  %165 = call i32 %154(%struct.net_device.0* %156, %struct.sk_buff* %157, i32 %162, i32 %164)
  %166 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %167 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %166, i32 0, i32 1
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 4
  %170 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %171 = call i32 @ipoib_neigh_put(%struct.ipoib_neigh* %170)
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %4, align 8
  br label %228

172:                                              ; preds = %146
  br label %204

173:                                              ; preds = %82, %72
  %174 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %175 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %174, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %175, align 8
  %176 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %177 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %173
  %181 = load %struct.net_device*, %struct.net_device** %7, align 8
  %182 = load %struct.ipoib_path*, %struct.ipoib_path** %10, align 8
  %183 = call i64 @path_rec_start(%struct.net_device* %181, %struct.ipoib_path* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %211

186:                                              ; preds = %180, %173
  %187 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %188 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %187, i32 0, i32 0
  %189 = call i64 @skb_queue_len(i32* %188)
  %190 = load i64, i64* @IPOIB_MAX_PATH_REC_QUEUE, align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %186
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %195 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @push_pseudo_header(%struct.sk_buff* %193, i32 %196)
  %198 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %199 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %198, i32 0, i32 0
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %201 = call i32 @__skb_queue_tail(i32* %199, %struct.sk_buff* %200)
  br label %203

202:                                              ; preds = %186
  br label %214

203:                                              ; preds = %192
  br label %204

204:                                              ; preds = %203, %172
  %205 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %206 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %205, i32 0, i32 0
  %207 = load i64, i64* %12, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  %209 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %210 = call i32 @ipoib_neigh_put(%struct.ipoib_neigh* %209)
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %4, align 8
  br label %228

211:                                              ; preds = %185, %67
  %212 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %213 = call i32 @ipoib_neigh_free(%struct.ipoib_neigh* %212)
  br label %214

214:                                              ; preds = %211, %202, %140, %121
  %215 = load %struct.net_device*, %struct.net_device** %7, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  %220 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %221 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %220)
  %222 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %223 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %222, i32 0, i32 0
  %224 = load i64, i64* %12, align 8
  %225 = call i32 @spin_unlock_irqrestore(i32* %223, i64 %224)
  %226 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %227 = call i32 @ipoib_neigh_put(%struct.ipoib_neigh* %226)
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %4, align 8
  br label %228

228:                                              ; preds = %214, %204, %147, %47, %26
  %229 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %4, align 8
  ret %struct.ipoib_neigh* %229
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipoib_neigh* @ipoib_neigh_alloc(i32*, %struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.ipoib_path* @__path_find(%struct.net_device*, i32*) #1

declare dso_local %struct.ipoib_path* @path_rec_create(%struct.net_device*, i32*) #1

declare dso_local i32 @__path_add(%struct.net_device*, %struct.ipoib_path*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @ipoib_cm_enabled(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_cm_get(%struct.ipoib_neigh*) #1

declare dso_local i32 @ipoib_cm_set(%struct.ipoib_neigh*, i32) #1

declare dso_local i32 @ipoib_cm_create_tx(%struct.net_device*, %struct.ipoib_path*, %struct.ipoib_neigh*) #1

declare dso_local i32 @ipoib_neigh_free(%struct.ipoib_neigh*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @push_pseudo_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i64) #1

declare dso_local i32 @IPOIB_QPN(i32*) #1

declare dso_local i32 @ipoib_neigh_put(%struct.ipoib_neigh*) #1

declare dso_local i64 @path_rec_start(%struct.net_device*, %struct.ipoib_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
