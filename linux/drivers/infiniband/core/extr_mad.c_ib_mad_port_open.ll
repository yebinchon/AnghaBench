; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_port_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_port_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad_port_private = type { i32, i32, i32*, i32, i32, i32, %struct.ib_device*, i32 }

@IB_MGMT_MAD_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@OPA_MGMT_MAD_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mad_sendq_size = common dso_local global i32 0, align 4
@mad_recvq_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Couldn't create ib_mad PD\0A\00", align 1
@IB_POLL_UNBOUND_WORKQUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't create ib_mad CQ\0A\00", align 1
@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ib_mad%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ib_mad_port_list_lock = common dso_local global i32 0, align 4
@ib_mad_port_list = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Couldn't start port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32)* @ib_mad_port_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_mad_port_open(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_port_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @rdma_max_mad_size(%struct.ib_device* %12, i32 %13)
  %15 = load i64, i64* @IB_MGMT_MAD_SIZE, align 8
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %229

23:                                               ; preds = %2
  %24 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @rdma_cap_opa_mad(%struct.ib_device* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @rdma_max_mad_size(%struct.ib_device* %29, i32 %30)
  %32 = load i64, i64* @OPA_MGMT_MAD_SIZE, align 8
  %33 = icmp slt i64 %31, %32
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %229

42:                                               ; preds = %34
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.ib_mad_port_private* @kzalloc(i32 48, i32 %43)
  store %struct.ib_mad_port_private* %44, %struct.ib_mad_port_private** %8, align 8
  %45 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %46 = icmp ne %struct.ib_mad_port_private* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %229

50:                                               ; preds = %42
  %51 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %52 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %53 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %52, i32 0, i32 6
  store %struct.ib_device* %51, %struct.ib_device** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %56 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %58 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %57, i32 0, i32 7
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %61 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %62 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = call i32 @init_mad_qp(%struct.ib_mad_port_private* %60, i32* %64)
  %66 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %67 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %68 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = call i32 @init_mad_qp(%struct.ib_mad_port_private* %66, i32* %70)
  %72 = load i32, i32* @mad_sendq_size, align 4
  %73 = load i32, i32* @mad_recvq_size, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @rdma_cap_ib_smi(%struct.ib_device* %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %50
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %50
  %84 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %85 = call i32 @ib_alloc_pd(%struct.ib_device* %84, i32 0)
  %86 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %87 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %89 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IS_ERR(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %95 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %94, i32 0, i32 0
  %96 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %98 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %6, align 4
  br label %225

101:                                              ; preds = %83
  %102 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %103 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %102, i32 0, i32 6
  %104 = load %struct.ib_device*, %struct.ib_device** %103, align 8
  %105 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @IB_POLL_UNBOUND_WORKQUEUE, align 4
  %108 = call i32 @ib_alloc_cq(%struct.ib_device* %104, %struct.ib_mad_port_private* %105, i32 %106, i32 0, i32 %107)
  %109 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %110 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %112 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @IS_ERR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %101
  %117 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %118 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %117, i32 0, i32 0
  %119 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %121 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @PTR_ERR(i32 %122)
  store i32 %123, i32* %6, align 4
  br label %220

124:                                              ; preds = %101
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %129 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* @IB_QPT_SMI, align 4
  %133 = call i32 @create_mad_qp(i32* %131, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %205

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %124
  %139 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %140 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* @IB_QPT_GSI, align 4
  %144 = call i32 @create_mad_qp(i32* %142, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %199

148:                                              ; preds = %138
  %149 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @snprintf(i8* %149, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %153 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %154 = call i32 @alloc_ordered_workqueue(i8* %152, i32 %153)
  %155 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %156 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %158 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %148
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %6, align 4
  br label %193

164:                                              ; preds = %148
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @spin_lock_irqsave(i32* @ib_mad_port_list_lock, i64 %165)
  %167 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %168 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %167, i32 0, i32 5
  %169 = call i32 @list_add_tail(i32* %168, i32* @ib_mad_port_list)
  %170 = load i64, i64* %9, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* @ib_mad_port_list_lock, i64 %170)
  %172 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %173 = call i32 @ib_mad_port_start(%struct.ib_mad_port_private* %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %164
  %177 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %178 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %177, i32 0, i32 0
  %179 = call i32 @dev_err(i32* %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %181

180:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %229

181:                                              ; preds = %176
  %182 = load i64, i64* %9, align 8
  %183 = call i32 @spin_lock_irqsave(i32* @ib_mad_port_list_lock, i64 %182)
  %184 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %185 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %184, i32 0, i32 5
  %186 = call i32 @list_del_init(i32* %185)
  %187 = load i64, i64* %9, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* @ib_mad_port_list_lock, i64 %187)
  %189 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %190 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @destroy_workqueue(i32 %191)
  br label %193

193:                                              ; preds = %181, %161
  %194 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %195 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = call i32 @destroy_mad_qp(i32* %197)
  br label %199

199:                                              ; preds = %193, %147
  %200 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %201 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = call i32 @destroy_mad_qp(i32* %203)
  br label %205

205:                                              ; preds = %199, %136
  %206 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %207 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @ib_free_cq(i32 %208)
  %210 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %211 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = call i32 @cleanup_recv_queue(i32* %213)
  %215 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %216 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = call i32 @cleanup_recv_queue(i32* %218)
  br label %220

220:                                              ; preds = %205, %116
  %221 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %222 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ib_dealloc_pd(i32 %223)
  br label %225

225:                                              ; preds = %220, %93
  %226 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %227 = call i32 @kfree(%struct.ib_mad_port_private* %226)
  %228 = load i32, i32* %6, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %225, %180, %47, %39, %20
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @rdma_max_mad_size(%struct.ib_device*, i32) #1

declare dso_local i64 @rdma_cap_opa_mad(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_mad_port_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_mad_qp(%struct.ib_mad_port_private*, i32*) #1

declare dso_local i32 @rdma_cap_ib_smi(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_alloc_pd(%struct.ib_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ib_alloc_cq(%struct.ib_device*, %struct.ib_mad_port_private*, i32, i32, i32) #1

declare dso_local i32 @create_mad_qp(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_mad_port_start(%struct.ib_mad_port_private*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @destroy_mad_qp(i32*) #1

declare dso_local i32 @ib_free_cq(i32) #1

declare dso_local i32 @cleanup_recv_queue(i32*) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

declare dso_local i32 @kfree(%struct.ib_mad_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
