; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_context_mapping_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_context_mapping_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i64*, i32, %struct.dma_pte* }
%struct.dma_pte = type { i32 }
%struct.intel_iommu = type { i64, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)*, i32 (%struct.intel_iommu.1*, i64, i64, i32, i32)* }
%struct.intel_iommu.0 = type opaque
%struct.intel_iommu.1 = type opaque
%struct.pasid_table = type { %struct.dma_pte* }
%struct.device_domain_info = type { i64, i64 }
%struct.context_entry = type { i32 }

@CONTEXT_TT_MULTI_LEVEL = common dso_local global i32 0, align 4
@hw_pass_through = common dso_local global i64 0, align 8
@CONTEXT_TT_PASS_THROUGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Set context mapping for %02x:%02x.%d\0A\00", align 1
@device_domain_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_CCMD_MASK_NOBIT = common dso_local global i32 0, align 4
@DMA_CCMD_DEVICE_INVL = common dso_local global i32 0, align 4
@DMA_TLB_DSI_FLUSH = common dso_local global i32 0, align 4
@PASID_RID2PASID = common dso_local global i32 0, align 4
@CONTEXT_TT_DEV_IOTLB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.intel_iommu*, %struct.pasid_table*, i64, i64)* @domain_context_mapping_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_context_mapping_one(%struct.dmar_domain* %0, %struct.intel_iommu* %1, %struct.pasid_table* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dmar_domain*, align 8
  %7 = alloca %struct.intel_iommu*, align 8
  %8 = alloca %struct.pasid_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.device_domain_info*, align 8
  %14 = alloca %struct.context_entry*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.dma_pte*, align 8
  %20 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %6, align 8
  store %struct.intel_iommu* %1, %struct.intel_iommu** %7, align 8
  store %struct.pasid_table* %2, %struct.pasid_table** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %21 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %22 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %25 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* @CONTEXT_TT_MULTI_LEVEL, align 4
  store i32 %29, i32* %12, align 4
  store %struct.device_domain_info* null, %struct.device_domain_info** %13, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load i64, i64* @hw_pass_through, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %38 = call i64 @domain_type_is_si(%struct.dmar_domain* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @CONTEXT_TT_PASS_THROUGH, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %36, %5
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @PCI_SLOT(i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @PCI_FUNC(i64 %46)
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %45, i32 %47)
  %49 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %50 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %49, i32 0, i32 2
  %51 = load %struct.dma_pte*, %struct.dma_pte** %50, align 8
  %52 = icmp ne %struct.dma_pte* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load i64, i64* %15, align 8
  %57 = call i32 @spin_lock_irqsave(i32* @device_domain_lock, i64 %56)
  %58 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %59 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %58, i32 0, i32 3
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %16, align 4
  %63 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call %struct.context_entry* @iommu_context_addr(%struct.intel_iommu* %63, i64 %64, i64 %65, i32 1)
  store %struct.context_entry* %66, %struct.context_entry** %14, align 8
  %67 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %68 = icmp ne %struct.context_entry* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %42
  br label %278

70:                                               ; preds = %42
  store i32 0, i32* %16, align 4
  %71 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %72 = call i64 @context_present(%struct.context_entry* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %278

75:                                               ; preds = %70
  %76 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %77 = call i64 @context_copied(%struct.context_entry* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %81 = call i64 @context_domain_id(%struct.context_entry* %80)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %84 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @cap_ndoms(i32 %85)
  %87 = icmp slt i64 %82, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %79
  %89 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %90 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32 (%struct.intel_iommu.1*, i64, i64, i32, i32)*, i32 (%struct.intel_iommu.1*, i64, i64, i32, i32)** %91, align 8
  %93 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %94 = bitcast %struct.intel_iommu* %93 to %struct.intel_iommu.1*
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %9, align 8
  %97 = shl i64 %96, 8
  %98 = load i64, i64* %10, align 8
  %99 = or i64 %97, %98
  %100 = load i32, i32* @DMA_CCMD_MASK_NOBIT, align 4
  %101 = load i32, i32* @DMA_CCMD_DEVICE_INVL, align 4
  %102 = call i32 %92(%struct.intel_iommu.1* %94, i64 %95, i64 %99, i32 %100, i32 %101)
  %103 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %104 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)*, i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)** %105, align 8
  %107 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %108 = bitcast %struct.intel_iommu* %107 to %struct.intel_iommu.0*
  %109 = load i64, i64* %17, align 8
  %110 = load i32, i32* @DMA_TLB_DSI_FLUSH, align 4
  %111 = call i32 %106(%struct.intel_iommu.0* %108, i64 %109, i32 0, i32 0, i32 %110)
  br label %112

112:                                              ; preds = %88, %79
  br label %113

113:                                              ; preds = %112, %75
  %114 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %115 = call i32 @context_clear_entry(%struct.context_entry* %114)
  %116 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %117 = call i64 @sm_supported(%struct.intel_iommu* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %167

119:                                              ; preds = %113
  %120 = load %struct.pasid_table*, %struct.pasid_table** %8, align 8
  %121 = icmp ne %struct.pasid_table* %120, null
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @WARN_ON(i32 %123)
  %125 = load %struct.pasid_table*, %struct.pasid_table** %8, align 8
  %126 = call i64 @context_get_sm_pds(%struct.pasid_table* %125)
  store i64 %126, i64* %18, align 8
  %127 = load %struct.pasid_table*, %struct.pasid_table** %8, align 8
  %128 = getelementptr inbounds %struct.pasid_table, %struct.pasid_table* %127, i32 0, i32 0
  %129 = load %struct.dma_pte*, %struct.dma_pte** %128, align 8
  %130 = call i64 @virt_to_phys(%struct.dma_pte* %129)
  %131 = trunc i64 %130 to i32
  %132 = load i64, i64* %18, align 8
  %133 = call i32 @context_pdts(i64 %132)
  %134 = or i32 %131, %133
  %135 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %136 = getelementptr inbounds %struct.context_entry, %struct.context_entry* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %138 = load i32, i32* @PASID_RID2PASID, align 4
  %139 = call i32 @context_set_sm_rid2pasid(%struct.context_entry* %137, i32 %138)
  %140 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %141 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call %struct.device_domain_info* @iommu_support_dev_iotlb(%struct.dmar_domain* %140, %struct.intel_iommu* %141, i64 %142, i64 %143)
  store %struct.device_domain_info* %144, %struct.device_domain_info** %13, align 8
  %145 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %146 = icmp ne %struct.device_domain_info* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %119
  %148 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %149 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %154 = call i32 @context_set_sm_dte(%struct.context_entry* %153)
  br label %155

155:                                              ; preds = %152, %147, %119
  %156 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %157 = icmp ne %struct.device_domain_info* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %160 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %165 = call i32 @context_set_sm_pre(%struct.context_entry* %164)
  br label %166

166:                                              ; preds = %163, %158, %155
  br label %236

167:                                              ; preds = %113
  %168 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %169 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %168, i32 0, i32 2
  %170 = load %struct.dma_pte*, %struct.dma_pte** %169, align 8
  store %struct.dma_pte* %170, %struct.dma_pte** %19, align 8
  %171 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %172 = load i64, i64* %11, align 8
  %173 = call i32 @context_set_domain_id(%struct.context_entry* %171, i64 %172)
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @CONTEXT_TT_PASS_THROUGH, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %226

177:                                              ; preds = %167
  %178 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %179 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %20, align 4
  br label %181

181:                                              ; preds = %198, %177
  %182 = load i32, i32* %20, align 4
  %183 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %184 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp sgt i32 %182, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %181
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %16, align 4
  %190 = load %struct.dma_pte*, %struct.dma_pte** %19, align 8
  %191 = call i32 @dma_pte_addr(%struct.dma_pte* %190)
  %192 = call %struct.dma_pte* @phys_to_virt(i32 %191)
  store %struct.dma_pte* %192, %struct.dma_pte** %19, align 8
  %193 = load %struct.dma_pte*, %struct.dma_pte** %19, align 8
  %194 = call i32 @dma_pte_present(%struct.dma_pte* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %187
  br label %278

197:                                              ; preds = %187
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %20, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %20, align 4
  br label %181

201:                                              ; preds = %181
  %202 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %203 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %204 = load i64, i64* %9, align 8
  %205 = load i64, i64* %10, align 8
  %206 = call %struct.device_domain_info* @iommu_support_dev_iotlb(%struct.dmar_domain* %202, %struct.intel_iommu* %203, i64 %204, i64 %205)
  store %struct.device_domain_info* %206, %struct.device_domain_info** %13, align 8
  %207 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %208 = icmp ne %struct.device_domain_info* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %201
  %210 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %211 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @CONTEXT_TT_DEV_IOTLB, align 4
  store i32 %215, i32* %12, align 4
  br label %218

216:                                              ; preds = %209, %201
  %217 = load i32, i32* @CONTEXT_TT_MULTI_LEVEL, align 4
  store i32 %217, i32* %12, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %220 = load %struct.dma_pte*, %struct.dma_pte** %19, align 8
  %221 = call i64 @virt_to_phys(%struct.dma_pte* %220)
  %222 = call i32 @context_set_address_root(%struct.context_entry* %219, i64 %221)
  %223 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %224 = load i32, i32* %20, align 4
  %225 = call i32 @context_set_address_width(%struct.context_entry* %223, i32 %224)
  br label %232

226:                                              ; preds = %167
  %227 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %228 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %229 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @context_set_address_width(%struct.context_entry* %227, i32 %230)
  br label %232

232:                                              ; preds = %226, %218
  %233 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @context_set_translation_type(%struct.context_entry* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %166
  %237 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %238 = call i32 @context_set_fault_enable(%struct.context_entry* %237)
  %239 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %240 = call i32 @context_set_present(%struct.context_entry* %239)
  %241 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %242 = load %struct.context_entry*, %struct.context_entry** %14, align 8
  %243 = call i32 @domain_flush_cache(%struct.dmar_domain* %241, %struct.context_entry* %242, i32 4)
  %244 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %245 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @cap_caching_mode(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %272

249:                                              ; preds = %236
  %250 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %251 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  %253 = load i32 (%struct.intel_iommu.1*, i64, i64, i32, i32)*, i32 (%struct.intel_iommu.1*, i64, i64, i32, i32)** %252, align 8
  %254 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %255 = bitcast %struct.intel_iommu* %254 to %struct.intel_iommu.1*
  %256 = load i64, i64* %9, align 8
  %257 = shl i64 %256, 8
  %258 = load i64, i64* %10, align 8
  %259 = or i64 %257, %258
  %260 = load i32, i32* @DMA_CCMD_MASK_NOBIT, align 4
  %261 = load i32, i32* @DMA_CCMD_DEVICE_INVL, align 4
  %262 = call i32 %253(%struct.intel_iommu.1* %255, i64 0, i64 %259, i32 %260, i32 %261)
  %263 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %264 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  %266 = load i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)*, i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)** %265, align 8
  %267 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %268 = bitcast %struct.intel_iommu* %267 to %struct.intel_iommu.0*
  %269 = load i64, i64* %11, align 8
  %270 = load i32, i32* @DMA_TLB_DSI_FLUSH, align 4
  %271 = call i32 %266(%struct.intel_iommu.0* %268, i64 %269, i32 0, i32 0, i32 %270)
  br label %275

272:                                              ; preds = %236
  %273 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %274 = call i32 @iommu_flush_write_buffer(%struct.intel_iommu* %273)
  br label %275

275:                                              ; preds = %272, %249
  %276 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %277 = call i32 @iommu_enable_dev_iotlb(%struct.device_domain_info* %276)
  store i32 0, i32* %16, align 4
  br label %278

278:                                              ; preds = %275, %196, %74, %69
  %279 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %280 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %279, i32 0, i32 3
  %281 = call i32 @spin_unlock(i32* %280)
  %282 = load i64, i64* %15, align 8
  %283 = call i32 @spin_unlock_irqrestore(i32* @device_domain_lock, i64 %282)
  %284 = load i32, i32* %16, align 4
  ret i32 %284
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @domain_type_is_si(%struct.dmar_domain*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i64) #1

declare dso_local i32 @PCI_FUNC(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.context_entry* @iommu_context_addr(%struct.intel_iommu*, i64, i64, i32) #1

declare dso_local i64 @context_present(%struct.context_entry*) #1

declare dso_local i64 @context_copied(%struct.context_entry*) #1

declare dso_local i64 @context_domain_id(%struct.context_entry*) #1

declare dso_local i64 @cap_ndoms(i32) #1

declare dso_local i32 @context_clear_entry(%struct.context_entry*) #1

declare dso_local i64 @sm_supported(%struct.intel_iommu*) #1

declare dso_local i64 @context_get_sm_pds(%struct.pasid_table*) #1

declare dso_local i64 @virt_to_phys(%struct.dma_pte*) #1

declare dso_local i32 @context_pdts(i64) #1

declare dso_local i32 @context_set_sm_rid2pasid(%struct.context_entry*, i32) #1

declare dso_local %struct.device_domain_info* @iommu_support_dev_iotlb(%struct.dmar_domain*, %struct.intel_iommu*, i64, i64) #1

declare dso_local i32 @context_set_sm_dte(%struct.context_entry*) #1

declare dso_local i32 @context_set_sm_pre(%struct.context_entry*) #1

declare dso_local i32 @context_set_domain_id(%struct.context_entry*, i64) #1

declare dso_local %struct.dma_pte* @phys_to_virt(i32) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

declare dso_local i32 @dma_pte_present(%struct.dma_pte*) #1

declare dso_local i32 @context_set_address_root(%struct.context_entry*, i64) #1

declare dso_local i32 @context_set_address_width(%struct.context_entry*, i32) #1

declare dso_local i32 @context_set_translation_type(%struct.context_entry*, i32) #1

declare dso_local i32 @context_set_fault_enable(%struct.context_entry*) #1

declare dso_local i32 @context_set_present(%struct.context_entry*) #1

declare dso_local i32 @domain_flush_cache(%struct.dmar_domain*, %struct.context_entry*, i32) #1

declare dso_local i64 @cap_caching_mode(i32) #1

declare dso_local i32 @iommu_flush_write_buffer(%struct.intel_iommu*) #1

declare dso_local i32 @iommu_enable_dev_iotlb(%struct.device_domain_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
