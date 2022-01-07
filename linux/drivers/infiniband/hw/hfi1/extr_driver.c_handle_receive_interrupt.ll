; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_handle_receive_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_handle_receive_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i64, i32, i64, i32, i32, %struct.TYPE_2__*, i64, %struct.hfi1_devdata* }
%struct.TYPE_2__ = type { i64 }
%struct.hfi1_devdata = type { i64, i32 }
%struct.hfi1_packet = type { i64, i64, i32, i32* }

@RCV_PKT_OK = common dso_local global i32 0, align 4
@HFI1_CTRL_CTXT = common dso_local global i32 0, align 4
@DMA_RTAIL = common dso_local global i32 0, align 4
@RCV_PKT_DONE = common dso_local global i32 0, align 4
@DROP_PACKET_OFF = common dso_local global i32 0, align 4
@DROP_PACKET_ON = common dso_local global i64 0, align 8
@HLS_UP_ARMED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Switching to NO_DMA_RTAIL\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Switching to DMA_RTAIL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_receive_interrupt(%struct.hfi1_ctxtdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfi1_packet, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %15, i32 0, i32 7
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  store %struct.hfi1_devdata* %17, %struct.hfi1_devdata** %5, align 8
  %18 = load i32, i32* @RCV_PKT_OK, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HFI1_CTRL_CTXT, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  store i32 %25, i32* %7, align 4
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %27 = call i32 @init_packet(%struct.hfi1_ctxtdata* %26, %struct.hfi1_packet* %9)
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DMA_RTAIL, align 4
  %32 = call i32 @HFI1_CAP_KGET_MASK(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @rhf_rcv_seq(i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @RCV_PKT_DONE, align 4
  store i32 %44, i32* %8, align 4
  br label %246

45:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  br label %74

46:                                               ; preds = %2
  %47 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %48 = call i64 @get_rcvhdrtail(%struct.hfi1_ctxtdata* %47)
  store i64 %48, i64* %6, align 8
  %49 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @RCV_PKT_DONE, align 4
  store i32 %54, i32* %8, align 4
  br label %246

55:                                               ; preds = %46
  %56 = call i32 (...) @smp_rmb()
  %57 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %58 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HFI1_CTRL_CTXT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @rhf_rcv_seq(i32 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %68 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %62
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %45
  %75 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %76 = call i32 @prescan_rxq(%struct.hfi1_ctxtdata* %75, %struct.hfi1_packet* %9)
  br label %77

77:                                               ; preds = %237, %74
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @RCV_PKT_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %240

81:                                               ; preds = %77
  %82 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %83 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %88 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %87, i32 0, i32 1
  %89 = load i32, i32* @DROP_PACKET_OFF, align 4
  %90 = call i64 @atomic_xchg(i32* %88, i32 %89)
  %91 = load i64, i64* @DROP_PACKET_ON, align 8
  %92 = icmp eq i64 %90, %91
  br label %93

93:                                               ; preds = %86, %81
  %94 = phi i1 [ false, %81 ], [ %92, %86 ]
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %93
  %99 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %100 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %102
  store i64 %105, i64* %103, align 8
  %106 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %107 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %114 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 3
  store i32* %117, i32** %118, align 8
  %119 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @rhf_to_cpu(i32* %120)
  %122 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 2
  store i32 %121, i32* %122, align 8
  br label %150

123:                                              ; preds = %93
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @skip_rcv_packet(%struct.hfi1_packet* %9, i32 %127)
  store i32 %128, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %149

129:                                              ; preds = %123
  %130 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %131 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %130, i32 0, i32 5
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @HLS_UP_ARMED, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %129
  %141 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %142 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %143 = call i64 @set_armed_to_active(%struct.hfi1_ctxtdata* %141, %struct.hfi1_packet* %9, %struct.hfi1_devdata* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %246

146:                                              ; preds = %140, %129
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @process_rcv_packet(%struct.hfi1_packet* %9, i32 %147)
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %146, %126
  br label %150

150:                                              ; preds = %149, %98
  %151 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %152 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DMA_RTAIL, align 4
  %155 = call i32 @HFI1_CAP_KGET_MASK(i32 %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %189, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @rhf_rcv_seq(i32 %159)
  store i64 %160, i64* %13, align 8
  %161 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %162 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %162, align 8
  %165 = icmp sgt i64 %164, 13
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %168 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %167, i32 0, i32 0
  store i64 1, i64* %168, align 8
  br label %169

169:                                              ; preds = %166, %157
  %170 = load i64, i64* %13, align 8
  %171 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %172 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %170, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i32, i32* @RCV_PKT_DONE, align 4
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %175, %169
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %182 = call i32 @dd_dev_info(%struct.hfi1_devdata* %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %183 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %184 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %185 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @set_nodma_rtail(%struct.hfi1_devdata* %183, i32 %186)
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %180, %177
  br label %237

189:                                              ; preds = %150
  %190 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %6, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* @RCV_PKT_DONE, align 4
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %194, %189
  %197 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %198 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @HFI1_CTRL_CTXT, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %225

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @rhf_rcv_seq(i32 %204)
  store i64 %205, i64* %14, align 8
  %206 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %207 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %207, align 8
  %210 = icmp sgt i64 %209, 13
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %213 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %212, i32 0, i32 0
  store i64 1, i64* %213, align 8
  br label %214

214:                                              ; preds = %211, %202
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %214
  %218 = load i64, i64* %14, align 8
  %219 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %220 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %218, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 1, i32* %10, align 4
  br label %224

224:                                              ; preds = %223, %217, %214
  br label %225

225:                                              ; preds = %224, %196
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %230 = call i32 @dd_dev_info(%struct.hfi1_devdata* %229, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %231 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %232 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %233 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @set_dma_rtail(%struct.hfi1_devdata* %231, i32 %234)
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %228, %225
  br label %237

237:                                              ; preds = %236, %188
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @process_rcv_update(i32 %238, %struct.hfi1_packet* %9)
  br label %77

240:                                              ; preds = %77
  %241 = call i32 @process_rcv_qp_work(%struct.hfi1_packet* %9)
  %242 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %9, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %245 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %244, i32 0, i32 2
  store i64 %243, i64* %245, align 8
  br label %246

246:                                              ; preds = %240, %145, %53, %43
  %247 = call i32 @finish_packet(%struct.hfi1_packet* %9)
  %248 = load i32, i32* %8, align 4
  ret i32 %248
}

declare dso_local i32 @init_packet(%struct.hfi1_ctxtdata*, %struct.hfi1_packet*) #1

declare dso_local i32 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i64 @rhf_rcv_seq(i32) #1

declare dso_local i64 @get_rcvhdrtail(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @prescan_rxq(%struct.hfi1_ctxtdata*, %struct.hfi1_packet*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @rhf_to_cpu(i32*) #1

declare dso_local i32 @skip_rcv_packet(%struct.hfi1_packet*, i32) #1

declare dso_local i64 @set_armed_to_active(%struct.hfi1_ctxtdata*, %struct.hfi1_packet*, %struct.hfi1_devdata*) #1

declare dso_local i32 @process_rcv_packet(%struct.hfi1_packet*, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @set_nodma_rtail(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @set_dma_rtail(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @process_rcv_update(i32, %struct.hfi1_packet*) #1

declare dso_local i32 @process_rcv_qp_work(%struct.hfi1_packet*) #1

declare dso_local i32 @finish_packet(%struct.hfi1_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
