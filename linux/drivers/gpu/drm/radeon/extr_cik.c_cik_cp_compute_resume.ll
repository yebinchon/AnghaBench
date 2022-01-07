; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_compute_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_compute_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.bonaire_mqd = type { i32, i32*, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CP_CPF_DEBUG = common dso_local global i32 0, align 4
@MEC_HPD_SIZE = common dso_local global i32 0, align 4
@CP_HPD_EOP_BASE_ADDR = common dso_local global i32 0, align 4
@CP_HPD_EOP_BASE_ADDR_HI = common dso_local global i32 0, align 4
@CP_HPD_EOP_VMID = common dso_local global i32 0, align 4
@CP_HPD_EOP_CONTROL = common dso_local global i32 0, align 4
@EOP_SIZE_MASK = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"(%d) create MQD bo failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"(%d) pin MQD bo failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"(%d) map MQD bo failed\0A\00", align 1
@CP_PQ_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@WPTR_POLL_EN = common dso_local global i32 0, align 4
@CP_HQD_PQ_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@DOORBELL_EN = common dso_local global i32 0, align 4
@CP_HQD_ACTIVE = common dso_local global i32 0, align 4
@CP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@CP_HQD_PQ_RPTR = common dso_local global i32 0, align 4
@CP_HQD_PQ_WPTR = common dso_local global i32 0, align 4
@CP_MQD_BASE_ADDR = common dso_local global i32 0, align 4
@CP_MQD_BASE_ADDR_HI = common dso_local global i32 0, align 4
@CP_MQD_CONTROL = common dso_local global i32 0, align 4
@MQD_VMID_MASK = common dso_local global i32 0, align 4
@CP_HQD_PQ_BASE = common dso_local global i32 0, align 4
@CP_HQD_PQ_BASE_HI = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL = common dso_local global i32 0, align 4
@QUEUE_SIZE_MASK = common dso_local global i32 0, align 4
@RPTR_BLOCK_SIZE_MASK = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@UNORD_DISPATCH = common dso_local global i32 0, align 4
@ROQ_PQ_IB_FLIP = common dso_local global i32 0, align 4
@PQ_VOLATILE = common dso_local global i32 0, align 4
@PRIV_STATE = common dso_local global i32 0, align 4
@KMD_QUEUE = common dso_local global i32 0, align 4
@CIK_WB_CP1_WPTR_OFFSET = common dso_local global i32 0, align 4
@CIK_WB_CP2_WPTR_OFFSET = common dso_local global i32 0, align 4
@CP_HQD_PQ_WPTR_POLL_ADDR = common dso_local global i32 0, align 4
@CP_HQD_PQ_WPTR_POLL_ADDR_HI = common dso_local global i32 0, align 4
@RADEON_WB_CP1_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_WB_CP2_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_HQD_PQ_RPTR_REPORT_ADDR = common dso_local global i32 0, align 4
@CP_HQD_PQ_RPTR_REPORT_ADDR_HI = common dso_local global i32 0, align 4
@DOORBELL_OFFSET_MASK = common dso_local global i32 0, align 4
@DOORBELL_SOURCE = common dso_local global i32 0, align 4
@DOORBELL_HIT = common dso_local global i32 0, align 4
@CP_HQD_VMID = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_cp_compute_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_cp_compute_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.bonaire_mqd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 1, i32* %9, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @cik_cp_compute_start(%struct.radeon_device* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %725

24:                                               ; preds = %1
  %25 = load i32, i32* @CP_CPF_DEBUG, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, 8388608
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @CP_CPF_DEBUG, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %99, %24
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %40, %44
  %46 = icmp slt i32 %36, %45
  br i1 %46, label %47, label %102

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 4
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 2
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  store i32 %60, i32* %17, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @cik_srbm_select(%struct.radeon_device* %61, i32 %62, i32 %63, i32 0, i32 0)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MEC_HPD_SIZE, align 4
  %71 = mul nsw i32 %69, %70
  %72 = mul nsw i32 %71, 2
  %73 = add nsw i32 %68, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @CP_HPD_EOP_BASE_ADDR, align 4
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 8
  %77 = call i32 @WREG32(i32 %74, i32 %76)
  %78 = load i32, i32* @CP_HPD_EOP_BASE_ADDR_HI, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @upper_32_bits(i32 %79)
  %81 = ashr i32 %80, 8
  %82 = call i32 @WREG32(i32 %78, i32 %81)
  %83 = load i32, i32* @CP_HPD_EOP_VMID, align 4
  %84 = call i32 @WREG32(i32 %83, i32 0)
  %85 = load i32, i32* @CP_HPD_EOP_CONTROL, align 4
  %86 = call i32 @RREG32(i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @EOP_SIZE_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* @MEC_HPD_SIZE, align 4
  %92 = sdiv i32 %91, 8
  %93 = call i32 @order_base_2(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @CP_HPD_EOP_CONTROL, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @WREG32(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %59
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %35

102:                                              ; preds = %35
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = call i32 @cik_srbm_select(%struct.radeon_device* %103, i32 0, i32 0, i32 0, i32 0)
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %721, %102
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %724

111:                                              ; preds = %108
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @CAYMAN_RING_TYPE_CP1_INDEX, align 4
  store i32 %115, i32* %7, align 4
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @CAYMAN_RING_TYPE_CP2_INDEX, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %150

128:                                              ; preds = %118
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = load i32, i32* @PAGE_SIZE, align 4
  %131 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 6
  %139 = call i32 @radeon_bo_create(%struct.radeon_device* %129, i32 88, i32 %130, i32 1, i32 %131, i32 0, i32* null, i32* null, i32** %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %128
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @dev_warn(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %2, align 4
  br label %725

149:                                              ; preds = %128
  br label %150

150:                                              ; preds = %149, %118
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @radeon_bo_reserve(i32* %158, i32 0)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %150
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = call i32 @cik_cp_compute_fini(%struct.radeon_device* %166)
  %168 = load i32, i32* %4, align 4
  store i32 %168, i32* %2, align 4
  br label %725

169:                                              ; preds = %150
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %179 = call i32 @radeon_bo_pin(i32* %177, i32 %178, i32* %11)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %169
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @dev_warn(i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %189 = call i32 @cik_cp_compute_fini(%struct.radeon_device* %188)
  %190 = load i32, i32* %4, align 4
  store i32 %190, i32* %2, align 4
  br label %725

191:                                              ; preds = %169
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 1
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 6
  %199 = load i32*, i32** %198, align 8
  %200 = bitcast i32** %14 to i8**
  %201 = call i32 @radeon_bo_kmap(i32* %199, i8** %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %191
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @dev_warn(i32 %207, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  %210 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %211 = call i32 @cik_cp_compute_fini(%struct.radeon_device* %210)
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* %2, align 4
  br label %725

213:                                              ; preds = %191
  %214 = load i32*, i32** %14, align 8
  %215 = call i32 @memset(i32* %214, i32 0, i32 88)
  %216 = load i32*, i32** %14, align 8
  %217 = bitcast i32* %216 to %struct.bonaire_mqd*
  store %struct.bonaire_mqd* %217, %struct.bonaire_mqd** %15, align 8
  %218 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %219 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %218, i32 0, i32 0
  store i32 -1070528512, i32* %219, align 8
  %220 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %221 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 -1, i32* %223, align 4
  %224 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %225 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 -1, i32* %227, align 4
  %228 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %229 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  store i32 -1, i32* %231, align 4
  %232 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %233 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  store i32 -1, i32* %235, align 4
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %236, i32 0, i32 2
  %238 = call i32 @mutex_lock(i32* %237)
  %239 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %240 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 1
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 1
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 1
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @cik_srbm_select(%struct.radeon_device* %239, i32 %247, i32 %255, i32 %263, i32 0)
  %265 = load i32, i32* @CP_PQ_WPTR_POLL_CNTL, align 4
  %266 = call i32 @RREG32(i32 %265)
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* @WPTR_POLL_EN, align 4
  %268 = xor i32 %267, -1
  %269 = load i32, i32* %8, align 4
  %270 = and i32 %269, %268
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* @CP_PQ_WPTR_POLL_CNTL, align 4
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @WREG32(i32 %271, i32 %272)
  %274 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %275 = call i32 @RREG32(i32 %274)
  %276 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %277 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  store i32 %275, i32* %278, align 8
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %213
  %282 = load i32, i32* @DOORBELL_EN, align 4
  %283 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %284 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %282
  store i32 %287, i32* %285, align 8
  br label %296

288:                                              ; preds = %213
  %289 = load i32, i32* @DOORBELL_EN, align 4
  %290 = xor i32 %289, -1
  %291 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %292 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = and i32 %294, %290
  store i32 %295, i32* %293, align 8
  br label %296

296:                                              ; preds = %288, %281
  %297 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %298 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %299 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @WREG32(i32 %297, i32 %301)
  %303 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %304 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  store i32 0, i32* %305, align 4
  %306 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %307 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 2
  store i32 0, i32* %308, align 8
  %309 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %310 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 3
  store i32 0, i32* %311, align 4
  %312 = load i32, i32* @CP_HQD_ACTIVE, align 4
  %313 = call i32 @RREG32(i32 %312)
  %314 = and i32 %313, 1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %355

316:                                              ; preds = %296
  %317 = load i32, i32* @CP_HQD_DEQUEUE_REQUEST, align 4
  %318 = call i32 @WREG32(i32 %317, i32 1)
  store i32 0, i32* %6, align 4
  br label %319

319:                                              ; preds = %333, %316
  %320 = load i32, i32* %6, align 4
  %321 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %322 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp slt i32 %320, %323
  br i1 %324, label %325, label %336

325:                                              ; preds = %319
  %326 = load i32, i32* @CP_HQD_ACTIVE, align 4
  %327 = call i32 @RREG32(i32 %326)
  %328 = and i32 %327, 1
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %325
  br label %336

331:                                              ; preds = %325
  %332 = call i32 @udelay(i32 1)
  br label %333

333:                                              ; preds = %331
  %334 = load i32, i32* %6, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %6, align 4
  br label %319

336:                                              ; preds = %330, %319
  %337 = load i32, i32* @CP_HQD_DEQUEUE_REQUEST, align 4
  %338 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %339 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @WREG32(i32 %337, i32 %341)
  %343 = load i32, i32* @CP_HQD_PQ_RPTR, align 4
  %344 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %345 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @WREG32(i32 %343, i32 %347)
  %349 = load i32, i32* @CP_HQD_PQ_WPTR, align 4
  %350 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %351 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @WREG32(i32 %349, i32 %353)
  br label %355

355:                                              ; preds = %336, %296
  %356 = load i32, i32* %11, align 4
  %357 = and i32 %356, -4
  %358 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %359 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 4
  store i32 %357, i32* %360, align 8
  %361 = load i32, i32* %11, align 4
  %362 = call i32 @upper_32_bits(i32 %361)
  %363 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %364 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 5
  store i32 %362, i32* %365, align 4
  %366 = load i32, i32* @CP_MQD_BASE_ADDR, align 4
  %367 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %368 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @WREG32(i32 %366, i32 %370)
  %372 = load i32, i32* @CP_MQD_BASE_ADDR_HI, align 4
  %373 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %374 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @WREG32(i32 %372, i32 %376)
  %378 = load i32, i32* @CP_MQD_CONTROL, align 4
  %379 = call i32 @RREG32(i32 %378)
  %380 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %381 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 6
  store i32 %379, i32* %382, align 8
  %383 = load i32, i32* @MQD_VMID_MASK, align 4
  %384 = xor i32 %383, -1
  %385 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %386 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 8
  %389 = and i32 %388, %384
  store i32 %389, i32* %387, align 8
  %390 = load i32, i32* @CP_MQD_CONTROL, align 4
  %391 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %392 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 6
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @WREG32(i32 %390, i32 %394)
  %396 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %397 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %396, i32 0, i32 1
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %397, align 8
  %399 = load i32, i32* %7, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = ashr i32 %403, 8
  store i32 %404, i32* %10, align 4
  %405 = load i32, i32* %10, align 4
  %406 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %407 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 7
  store i32 %405, i32* %408, align 4
  %409 = load i32, i32* %10, align 4
  %410 = call i32 @upper_32_bits(i32 %409)
  %411 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %412 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 8
  store i32 %410, i32* %413, align 8
  %414 = load i32, i32* @CP_HQD_PQ_BASE, align 4
  %415 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %416 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %415, i32 0, i32 3
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 7
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @WREG32(i32 %414, i32 %418)
  %420 = load i32, i32* @CP_HQD_PQ_BASE_HI, align 4
  %421 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %422 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %421, i32 0, i32 3
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 8
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @WREG32(i32 %420, i32 %424)
  %426 = load i32, i32* @CP_HQD_PQ_CONTROL, align 4
  %427 = call i32 @RREG32(i32 %426)
  %428 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %429 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %428, i32 0, i32 3
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 9
  store i32 %427, i32* %430, align 4
  %431 = load i32, i32* @QUEUE_SIZE_MASK, align 4
  %432 = load i32, i32* @RPTR_BLOCK_SIZE_MASK, align 4
  %433 = or i32 %431, %432
  %434 = xor i32 %433, -1
  %435 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %436 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %435, i32 0, i32 3
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 9
  %438 = load i32, i32* %437, align 4
  %439 = and i32 %438, %434
  store i32 %439, i32* %437, align 4
  %440 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %441 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %440, i32 0, i32 1
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %441, align 8
  %443 = load i32, i32* %7, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = sdiv i32 %447, 8
  %449 = call i32 @order_base_2(i32 %448)
  %450 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %451 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %450, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 9
  %453 = load i32, i32* %452, align 4
  %454 = or i32 %453, %449
  store i32 %454, i32* %452, align 4
  %455 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %456 = sdiv i32 %455, 8
  %457 = call i32 @order_base_2(i32 %456)
  %458 = shl i32 %457, 8
  %459 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %460 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %459, i32 0, i32 3
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 9
  %462 = load i32, i32* %461, align 4
  %463 = or i32 %462, %458
  store i32 %463, i32* %461, align 4
  %464 = load i32, i32* @UNORD_DISPATCH, align 4
  %465 = load i32, i32* @ROQ_PQ_IB_FLIP, align 4
  %466 = or i32 %464, %465
  %467 = load i32, i32* @PQ_VOLATILE, align 4
  %468 = or i32 %466, %467
  %469 = xor i32 %468, -1
  %470 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %471 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %470, i32 0, i32 3
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 9
  %473 = load i32, i32* %472, align 4
  %474 = and i32 %473, %469
  store i32 %474, i32* %472, align 4
  %475 = load i32, i32* @PRIV_STATE, align 4
  %476 = load i32, i32* @KMD_QUEUE, align 4
  %477 = or i32 %475, %476
  %478 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %479 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %478, i32 0, i32 3
  %480 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %479, i32 0, i32 9
  %481 = load i32, i32* %480, align 4
  %482 = or i32 %481, %477
  store i32 %482, i32* %480, align 4
  %483 = load i32, i32* @CP_HQD_PQ_CONTROL, align 4
  %484 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %485 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %484, i32 0, i32 3
  %486 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i32 0, i32 9
  %487 = load i32, i32* %486, align 4
  %488 = call i32 @WREG32(i32 %483, i32 %487)
  %489 = load i32, i32* %5, align 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %355
  %492 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %493 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %492, i32 0, i32 3
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @CIK_WB_CP1_WPTR_OFFSET, align 4
  %497 = add nsw i32 %495, %496
  store i32 %497, i32* %13, align 4
  br label %505

498:                                              ; preds = %355
  %499 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %500 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %499, i32 0, i32 3
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* @CIK_WB_CP2_WPTR_OFFSET, align 4
  %504 = add nsw i32 %502, %503
  store i32 %504, i32* %13, align 4
  br label %505

505:                                              ; preds = %498, %491
  %506 = load i32, i32* %13, align 4
  %507 = and i32 %506, -4
  %508 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %509 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %508, i32 0, i32 3
  %510 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %509, i32 0, i32 10
  store i32 %507, i32* %510, align 8
  %511 = load i32, i32* %13, align 4
  %512 = call i32 @upper_32_bits(i32 %511)
  %513 = and i32 %512, 65535
  %514 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %515 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %514, i32 0, i32 3
  %516 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %515, i32 0, i32 11
  store i32 %513, i32* %516, align 4
  %517 = load i32, i32* @CP_HQD_PQ_WPTR_POLL_ADDR, align 4
  %518 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %519 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %518, i32 0, i32 3
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %519, i32 0, i32 10
  %521 = load i32, i32* %520, align 8
  %522 = call i32 @WREG32(i32 %517, i32 %521)
  %523 = load i32, i32* @CP_HQD_PQ_WPTR_POLL_ADDR_HI, align 4
  %524 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %525 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %524, i32 0, i32 3
  %526 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %525, i32 0, i32 11
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @WREG32(i32 %523, i32 %527)
  %529 = load i32, i32* %5, align 4
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %538

531:                                              ; preds = %505
  %532 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %533 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %532, i32 0, i32 3
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @RADEON_WB_CP1_RPTR_OFFSET, align 4
  %537 = add nsw i32 %535, %536
  store i32 %537, i32* %13, align 4
  br label %545

538:                                              ; preds = %505
  %539 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %540 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %539, i32 0, i32 3
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = load i32, i32* @RADEON_WB_CP2_RPTR_OFFSET, align 4
  %544 = add nsw i32 %542, %543
  store i32 %544, i32* %13, align 4
  br label %545

545:                                              ; preds = %538, %531
  %546 = load i32, i32* %13, align 4
  %547 = and i32 %546, -4
  %548 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %549 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %548, i32 0, i32 3
  %550 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %549, i32 0, i32 12
  store i32 %547, i32* %550, align 8
  %551 = load i32, i32* %13, align 4
  %552 = call i32 @upper_32_bits(i32 %551)
  %553 = and i32 %552, 65535
  %554 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %555 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %554, i32 0, i32 3
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %555, i32 0, i32 13
  store i32 %553, i32* %556, align 4
  %557 = load i32, i32* @CP_HQD_PQ_RPTR_REPORT_ADDR, align 4
  %558 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %559 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %558, i32 0, i32 3
  %560 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %559, i32 0, i32 12
  %561 = load i32, i32* %560, align 8
  %562 = call i32 @WREG32(i32 %557, i32 %561)
  %563 = load i32, i32* @CP_HQD_PQ_RPTR_REPORT_ADDR_HI, align 4
  %564 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %565 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %564, i32 0, i32 3
  %566 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %565, i32 0, i32 13
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @WREG32(i32 %563, i32 %567)
  %569 = load i32, i32* %9, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %613

571:                                              ; preds = %545
  %572 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %573 = call i32 @RREG32(i32 %572)
  %574 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %575 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %574, i32 0, i32 3
  %576 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %575, i32 0, i32 0
  store i32 %573, i32* %576, align 8
  %577 = load i32, i32* @DOORBELL_OFFSET_MASK, align 4
  %578 = xor i32 %577, -1
  %579 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %580 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %579, i32 0, i32 3
  %581 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = and i32 %582, %578
  store i32 %583, i32* %581, align 8
  %584 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %585 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %584, i32 0, i32 1
  %586 = load %struct.TYPE_8__*, %struct.TYPE_8__** %585, align 8
  %587 = load i32, i32* %7, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %586, i64 %588
  %590 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %589, i32 0, i32 7
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @DOORBELL_OFFSET(i32 %591)
  %593 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %594 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %593, i32 0, i32 3
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = or i32 %596, %592
  store i32 %597, i32* %595, align 8
  %598 = load i32, i32* @DOORBELL_EN, align 4
  %599 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %600 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %599, i32 0, i32 3
  %601 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = or i32 %602, %598
  store i32 %603, i32* %601, align 8
  %604 = load i32, i32* @DOORBELL_SOURCE, align 4
  %605 = load i32, i32* @DOORBELL_HIT, align 4
  %606 = or i32 %604, %605
  %607 = xor i32 %606, -1
  %608 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %609 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %608, i32 0, i32 3
  %610 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = and i32 %611, %607
  store i32 %612, i32* %610, align 8
  br label %617

613:                                              ; preds = %545
  %614 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %615 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %614, i32 0, i32 3
  %616 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %615, i32 0, i32 0
  store i32 0, i32* %616, align 8
  br label %617

617:                                              ; preds = %613, %571
  %618 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %619 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %620 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %619, i32 0, i32 3
  %621 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = call i32 @WREG32(i32 %618, i32 %622)
  %624 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %625 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %624, i32 0, i32 1
  %626 = load %struct.TYPE_8__*, %struct.TYPE_8__** %625, align 8
  %627 = load i32, i32* %7, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %626, i64 %628
  %630 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %629, i32 0, i32 4
  store i32 0, i32* %630, align 8
  %631 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %632 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %631, i32 0, i32 1
  %633 = load %struct.TYPE_8__*, %struct.TYPE_8__** %632, align 8
  %634 = load i32, i32* %7, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %633, i64 %635
  %637 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %636, i32 0, i32 4
  %638 = load i32, i32* %637, align 8
  %639 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %640 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %639, i32 0, i32 3
  %641 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %640, i32 0, i32 3
  store i32 %638, i32* %641, align 4
  %642 = load i32, i32* @CP_HQD_PQ_WPTR, align 4
  %643 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %644 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %643, i32 0, i32 3
  %645 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %644, i32 0, i32 3
  %646 = load i32, i32* %645, align 4
  %647 = call i32 @WREG32(i32 %642, i32 %646)
  %648 = load i32, i32* @CP_HQD_PQ_RPTR, align 4
  %649 = call i32 @RREG32(i32 %648)
  %650 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %651 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %650, i32 0, i32 3
  %652 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %651, i32 0, i32 2
  store i32 %649, i32* %652, align 8
  %653 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %654 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %653, i32 0, i32 3
  %655 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %654, i32 0, i32 14
  store i32 0, i32* %655, align 8
  %656 = load i32, i32* @CP_HQD_VMID, align 4
  %657 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %658 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %657, i32 0, i32 3
  %659 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %658, i32 0, i32 14
  %660 = load i32, i32* %659, align 8
  %661 = call i32 @WREG32(i32 %656, i32 %660)
  %662 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %663 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %662, i32 0, i32 3
  %664 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %663, i32 0, i32 15
  store i32 1, i32* %664, align 4
  %665 = load i32, i32* @CP_HQD_ACTIVE, align 4
  %666 = load %struct.bonaire_mqd*, %struct.bonaire_mqd** %15, align 8
  %667 = getelementptr inbounds %struct.bonaire_mqd, %struct.bonaire_mqd* %666, i32 0, i32 3
  %668 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %667, i32 0, i32 15
  %669 = load i32, i32* %668, align 4
  %670 = call i32 @WREG32(i32 %665, i32 %669)
  %671 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %672 = call i32 @cik_srbm_select(%struct.radeon_device* %671, i32 0, i32 0, i32 0, i32 0)
  %673 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %674 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %673, i32 0, i32 2
  %675 = call i32 @mutex_unlock(i32* %674)
  %676 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %677 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %676, i32 0, i32 1
  %678 = load %struct.TYPE_8__*, %struct.TYPE_8__** %677, align 8
  %679 = load i32, i32* %7, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %678, i64 %680
  %682 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %681, i32 0, i32 6
  %683 = load i32*, i32** %682, align 8
  %684 = call i32 @radeon_bo_kunmap(i32* %683)
  %685 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %686 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %685, i32 0, i32 1
  %687 = load %struct.TYPE_8__*, %struct.TYPE_8__** %686, align 8
  %688 = load i32, i32* %7, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %687, i64 %689
  %691 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %690, i32 0, i32 6
  %692 = load i32*, i32** %691, align 8
  %693 = call i32 @radeon_bo_unreserve(i32* %692)
  %694 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %695 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %694, i32 0, i32 1
  %696 = load %struct.TYPE_8__*, %struct.TYPE_8__** %695, align 8
  %697 = load i32, i32* %7, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %696, i64 %698
  %700 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %699, i32 0, i32 5
  store i32 1, i32* %700, align 4
  %701 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %702 = load i32, i32* %7, align 4
  %703 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %704 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %703, i32 0, i32 1
  %705 = load %struct.TYPE_8__*, %struct.TYPE_8__** %704, align 8
  %706 = load i32, i32* %7, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %705, i64 %707
  %709 = call i32 @radeon_ring_test(%struct.radeon_device* %701, i32 %702, %struct.TYPE_8__* %708)
  store i32 %709, i32* %4, align 4
  %710 = load i32, i32* %4, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %720

712:                                              ; preds = %617
  %713 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %714 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %713, i32 0, i32 1
  %715 = load %struct.TYPE_8__*, %struct.TYPE_8__** %714, align 8
  %716 = load i32, i32* %7, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %715, i64 %717
  %719 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %718, i32 0, i32 5
  store i32 0, i32* %719, align 4
  br label %720

720:                                              ; preds = %712, %617
  br label %721

721:                                              ; preds = %720
  %722 = load i32, i32* %5, align 4
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %5, align 4
  br label %108

724:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %725

725:                                              ; preds = %724, %204, %182, %165, %142, %22
  %726 = load i32, i32* %2, align 4
  ret i32 %726
}

declare dso_local i32 @cik_cp_compute_start(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cik_srbm_select(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @radeon_bo_reserve(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cik_cp_compute_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_pin(i32*, i32, i32*) #1

declare dso_local i32 @radeon_bo_kmap(i32*, i8**) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DOORBELL_OFFSET(i32) #1

declare dso_local i32 @radeon_bo_kunmap(i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32*) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
