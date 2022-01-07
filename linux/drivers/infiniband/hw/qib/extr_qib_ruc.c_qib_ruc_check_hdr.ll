; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_ruc_check_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_ruc_check_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ib_header = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.rvt_qp = type { i64, i64, i32, %struct.TYPE_15__, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.ib_global_route = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }

@IB_MIG_ARMED = common dso_local global i64 0, align 8
@IB_BTH_MIG_REQ = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_MIG_REARM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_ruc_check_hdr(%struct.qib_ibport* %0, %struct.ib_header* %1, i32 %2, %struct.rvt_qp* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_ibport*, align 8
  %8 = alloca %struct.ib_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rvt_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ib_global_route*, align 8
  %15 = alloca %struct.ib_global_route*, align 8
  store %struct.qib_ibport* %0, %struct.qib_ibport** %7, align 8
  store %struct.ib_header* %1, %struct.ib_header** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.rvt_qp* %3, %struct.rvt_qp** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IB_MIG_ARMED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %155

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @IB_BTH_MIG_REQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %155

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %31 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %30, i32 0, i32 6
  %32 = call i32 @rdma_ah_get_ah_flags(i32* %31)
  %33 = load i32, i32* @IB_AH_GRH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %290

37:                                               ; preds = %29
  br label %88

38:                                               ; preds = %26
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %40 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %39, i32 0, i32 6
  %41 = call i32 @rdma_ah_get_ah_flags(i32* %40)
  %42 = load i32, i32* @IB_AH_GRH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %290

46:                                               ; preds = %38
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %48 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %47, i32 0, i32 6
  %49 = call %struct.ib_global_route* @rdma_ah_read_grh(i32* %48)
  store %struct.ib_global_route* %49, %struct.ib_global_route** %14, align 8
  %50 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %51 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %52 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @get_sguid(%struct.qib_ibport* %50, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %56 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %61 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @gid_ok(i32* %59, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %46
  br label %290

68:                                               ; preds = %46
  %69 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %70 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %75 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %80 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @gid_ok(i32* %73, i32 %78, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %68
  br label %290

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %37
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %91 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %92 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @qib_get_pkey(%struct.qib_ibport* %90, i32 %93)
  %95 = call i32 @qib_pkey_ok(i32 %89, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %123, label %97

97:                                               ; preds = %88
  %98 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %101 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be16_to_cpu(i32 %104)
  %106 = ashr i32 %105, 4
  %107 = and i32 %106, 15
  %108 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %109 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %113 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %118 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @qib_bad_pkey(%struct.qib_ibport* %98, i32 %99, i32 %107, i32 0, i32 %111, i32 %116, i32 %121)
  br label %290

123:                                              ; preds = %88
  %124 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %125 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @be16_to_cpu(i32 %128)
  %130 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %131 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %130, i32 0, i32 6
  %132 = call i32 @rdma_ah_get_dlid(i32* %131)
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %143, label %134

134:                                              ; preds = %123
  %135 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %136 = call %struct.TYPE_16__* @ppd_from_ibp(%struct.qib_ibport* %135)
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %140 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %139, i32 0, i32 6
  %141 = call i64 @rdma_ah_get_port_num(i32* %140)
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %134, %123
  br label %290

144:                                              ; preds = %134
  %145 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %146 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %145, i32 0, i32 5
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %150 = call i32 @qib_migrate_qp(%struct.rvt_qp* %149)
  %151 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %152 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %151, i32 0, i32 5
  %153 = load i64, i64* %13, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  br label %289

155:                                              ; preds = %21, %5
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %160 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %159, i32 0, i32 2
  %161 = call i32 @rdma_ah_get_ah_flags(i32* %160)
  %162 = load i32, i32* @IB_AH_GRH, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %290

166:                                              ; preds = %158
  br label %217

167:                                              ; preds = %155
  %168 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %169 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %168, i32 0, i32 2
  %170 = call i32 @rdma_ah_get_ah_flags(i32* %169)
  %171 = load i32, i32* @IB_AH_GRH, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  br label %290

175:                                              ; preds = %167
  %176 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %177 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %176, i32 0, i32 2
  %178 = call %struct.ib_global_route* @rdma_ah_read_grh(i32* %177)
  store %struct.ib_global_route* %178, %struct.ib_global_route** %15, align 8
  %179 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %180 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %181 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @get_sguid(%struct.qib_ibport* %179, i32 %182)
  store i32 %183, i32* %12, align 4
  %184 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %185 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %190 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @gid_ok(i32* %188, i32 %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %175
  br label %290

197:                                              ; preds = %175
  %198 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %199 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %204 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %209 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @gid_ok(i32* %202, i32 %207, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %197
  br label %290

216:                                              ; preds = %197
  br label %217

217:                                              ; preds = %216, %166
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %220 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %221 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @qib_get_pkey(%struct.qib_ibport* %219, i32 %222)
  %224 = call i32 @qib_pkey_ok(i32 %218, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %252, label %226

226:                                              ; preds = %217
  %227 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %228 = load i32, i32* %11, align 4
  %229 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %230 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @be16_to_cpu(i32 %233)
  %235 = ashr i32 %234, 4
  %236 = and i32 %235, 15
  %237 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %238 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %242 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %247 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @qib_bad_pkey(%struct.qib_ibport* %227, i32 %228, i32 %236, i32 0, i32 %240, i32 %245, i32 %250)
  br label %290

252:                                              ; preds = %217
  %253 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %254 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 3
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @be16_to_cpu(i32 %257)
  %259 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %260 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %259, i32 0, i32 2
  %261 = call i32 @rdma_ah_get_dlid(i32* %260)
  %262 = icmp ne i32 %258, %261
  br i1 %262, label %272, label %263

263:                                              ; preds = %252
  %264 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %265 = call %struct.TYPE_16__* @ppd_from_ibp(%struct.qib_ibport* %264)
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %269 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %267, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %263, %252
  br label %290

273:                                              ; preds = %263
  %274 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %275 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @IB_MIG_REARM, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %288

279:                                              ; preds = %273
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @IB_BTH_MIG_REQ, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %279
  %285 = load i64, i64* @IB_MIG_ARMED, align 8
  %286 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %287 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %286, i32 0, i32 0
  store i64 %285, i64* %287, align 8
  br label %288

288:                                              ; preds = %284, %279, %273
  br label %289

289:                                              ; preds = %288, %144
  store i32 0, i32* %6, align 4
  br label %291

290:                                              ; preds = %272, %226, %215, %196, %174, %165, %143, %97, %86, %67, %45, %36
  store i32 1, i32* %6, align 4
  br label %291

291:                                              ; preds = %290, %289
  %292 = load i32, i32* %6, align 4
  ret i32 %292
}

declare dso_local i32 @rdma_ah_get_ah_flags(i32*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(i32*) #1

declare dso_local i32 @get_sguid(%struct.qib_ibport*, i32) #1

declare dso_local i32 @gid_ok(i32*, i32, i32) #1

declare dso_local i32 @qib_pkey_ok(i32, i32) #1

declare dso_local i32 @qib_get_pkey(%struct.qib_ibport*, i32) #1

declare dso_local i32 @qib_bad_pkey(%struct.qib_ibport*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_get_dlid(i32*) #1

declare dso_local %struct.TYPE_16__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i64 @rdma_ah_get_port_num(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_migrate_qp(%struct.rvt_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
