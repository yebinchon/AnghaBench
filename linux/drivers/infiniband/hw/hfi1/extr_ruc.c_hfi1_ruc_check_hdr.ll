; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ruc.c_hfi1_ruc_check_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ruc.c_hfi1_ruc_check_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.hfi1_packet = type { i64, i64, i64, i32, i64, %struct.TYPE_9__*, i32, %struct.rvt_qp* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.rvt_qp = type { i64, i64, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ib_global_route = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }

@IB_MIG_ARMED = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@RHF_RCV_TYPE_BYPASS = common dso_local global i64 0, align 8
@IB_MIG_REARM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_ruc_check_hdr(%struct.hfi1_ibport* %0, %struct.hfi1_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_ibport*, align 8
  %5 = alloca %struct.hfi1_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_global_route*, align 8
  %16 = alloca %struct.ib_global_route*, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %4, align 8
  store %struct.hfi1_packet* %1, %struct.hfi1_packet** %5, align 8
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %18 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %17, i32 0, i32 7
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %18, align 8
  store %struct.rvt_qp* %19, %struct.rvt_qp** %8, align 8
  %20 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %21 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 2
  %25 = call i64 @rdma_ah_get_sl(i32* %24)
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %29 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %32 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %35 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %38 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %41 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %44 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_MIG_ARMED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %166

48:                                               ; preds = %2
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %166

51:                                               ; preds = %48
  %52 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %53 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %52, i32 0, i32 5
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 5
  %59 = call i32 @rdma_ah_get_ah_flags(i32* %58)
  %60 = load i32, i32* @IB_AH_GRH, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %65 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RHF_RCV_TYPE_BYPASS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %285

70:                                               ; preds = %63, %56
  br label %119

71:                                               ; preds = %51
  %72 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %73 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %72, i32 0, i32 5
  %74 = call i32 @rdma_ah_get_ah_flags(i32* %73)
  %75 = load i32, i32* @IB_AH_GRH, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %285

79:                                               ; preds = %71
  %80 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %81 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %80, i32 0, i32 5
  %82 = call %struct.ib_global_route* @rdma_ah_read_grh(i32* %81)
  store %struct.ib_global_route* %82, %struct.ib_global_route** %15, align 8
  %83 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %84 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %85 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @get_sguid(%struct.hfi1_ibport* %83, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %89 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %88, i32 0, i32 5
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %93 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @gid_ok(i32* %91, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %285

100:                                              ; preds = %79
  %101 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %102 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %101, i32 0, i32 5
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %106 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %111 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @gid_ok(i32* %104, i32 %109, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %285

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %70
  %120 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %121 = call %struct.TYPE_13__* @ppd_from_ibp(%struct.hfi1_ibport* %120)
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @rcv_pkey_check(%struct.TYPE_13__* %121, i32 %122, i32 %123, i64 %124)
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %119
  %129 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %133 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %10, align 8
  %138 = call i32 @hfi1_bad_pkey(%struct.hfi1_ibport* %129, i32 %130, i64 %131, i32 0, i32 %135, i64 %136, i64 %137)
  store i32 1, i32* %3, align 4
  br label %285

139:                                              ; preds = %119
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %142 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %141, i32 0, i32 5
  %143 = call i64 @rdma_ah_get_dlid(i32* %142)
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %139
  %146 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %147 = call %struct.TYPE_13__* @ppd_from_ibp(%struct.hfi1_ibport* %146)
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %151 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %150, i32 0, i32 5
  %152 = call i64 @rdma_ah_get_port_num(i32* %151)
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145, %139
  store i32 1, i32* %3, align 4
  br label %285

155:                                              ; preds = %145
  %156 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %157 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %156, i32 0, i32 4
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @spin_lock_irqsave(i32* %157, i64 %158)
  %160 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %161 = call i32 @hfi1_migrate_qp(%struct.rvt_qp* %160)
  %162 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %163 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %162, i32 0, i32 4
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  br label %284

166:                                              ; preds = %48, %2
  %167 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %168 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %167, i32 0, i32 5
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = icmp ne %struct.TYPE_9__* %169, null
  br i1 %170, label %186, label %171

171:                                              ; preds = %166
  %172 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %173 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %172, i32 0, i32 2
  %174 = call i32 @rdma_ah_get_ah_flags(i32* %173)
  %175 = load i32, i32* @IB_AH_GRH, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %180 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @RHF_RCV_TYPE_BYPASS, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  store i32 1, i32* %3, align 4
  br label %285

185:                                              ; preds = %178, %171
  br label %234

186:                                              ; preds = %166
  %187 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %188 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %187, i32 0, i32 2
  %189 = call i32 @rdma_ah_get_ah_flags(i32* %188)
  %190 = load i32, i32* @IB_AH_GRH, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %186
  store i32 1, i32* %3, align 4
  br label %285

194:                                              ; preds = %186
  %195 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %196 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %195, i32 0, i32 2
  %197 = call %struct.ib_global_route* @rdma_ah_read_grh(i32* %196)
  store %struct.ib_global_route* %197, %struct.ib_global_route** %16, align 8
  %198 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %199 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %200 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @get_sguid(%struct.hfi1_ibport* %198, i32 %201)
  store i32 %202, i32* %6, align 4
  %203 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %204 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %203, i32 0, i32 5
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %208 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @gid_ok(i32* %206, i32 %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %194
  store i32 1, i32* %3, align 4
  br label %285

215:                                              ; preds = %194
  %216 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %217 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %216, i32 0, i32 5
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %221 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %226 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @gid_ok(i32* %219, i32 %224, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %215
  store i32 1, i32* %3, align 4
  br label %285

233:                                              ; preds = %215
  br label %234

234:                                              ; preds = %233, %185
  %235 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %236 = call %struct.TYPE_13__* @ppd_from_ibp(%struct.hfi1_ibport* %235)
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i64, i64* %11, align 8
  %240 = call i32 @rcv_pkey_check(%struct.TYPE_13__* %236, i32 %237, i32 %238, i64 %239)
  %241 = call i64 @unlikely(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %234
  %244 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %245 = load i32, i32* %14, align 4
  %246 = load i64, i64* %12, align 8
  %247 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %248 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i64, i64* %11, align 8
  %252 = load i64, i64* %10, align 8
  %253 = call i32 @hfi1_bad_pkey(%struct.hfi1_ibport* %244, i32 %245, i64 %246, i32 0, i32 %250, i64 %251, i64 %252)
  store i32 1, i32* %3, align 4
  br label %285

254:                                              ; preds = %234
  %255 = load i64, i64* %11, align 8
  %256 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %257 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %256, i32 0, i32 2
  %258 = call i64 @rdma_ah_get_dlid(i32* %257)
  %259 = icmp ne i64 %255, %258
  br i1 %259, label %269, label %260

260:                                              ; preds = %254
  %261 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %262 = call %struct.TYPE_13__* @ppd_from_ibp(%struct.hfi1_ibport* %261)
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %266 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %264, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %260, %254
  store i32 1, i32* %3, align 4
  br label %285

270:                                              ; preds = %260
  %271 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %272 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @IB_MIG_REARM, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %283

276:                                              ; preds = %270
  %277 = load i32, i32* %13, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %276
  %280 = load i64, i64* @IB_MIG_ARMED, align 8
  %281 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %282 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  br label %283

283:                                              ; preds = %279, %276, %270
  br label %284

284:                                              ; preds = %283, %155
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %284, %269, %243, %232, %214, %193, %184, %154, %128, %117, %99, %78, %69
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i64 @rdma_ah_get_sl(i32*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(i32*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(i32*) #1

declare dso_local i32 @get_sguid(%struct.hfi1_ibport*, i32) #1

declare dso_local i32 @gid_ok(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcv_pkey_check(%struct.TYPE_13__*, i32, i32, i64) #1

declare dso_local %struct.TYPE_13__* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @hfi1_bad_pkey(%struct.hfi1_ibport*, i32, i64, i32, i32, i64, i64) #1

declare dso_local i64 @rdma_ah_get_dlid(i32*) #1

declare dso_local i64 @rdma_ah_get_port_num(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hfi1_migrate_qp(%struct.rvt_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
