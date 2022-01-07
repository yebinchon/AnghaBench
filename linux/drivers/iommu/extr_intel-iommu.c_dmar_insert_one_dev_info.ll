; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dmar_insert_one_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dmar_insert_one_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_domain_info* }
%struct.device_domain_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.device*, %struct.dmar_domain*, i32, i64, i32*, %struct.intel_iommu*, i64, i64, i64, i64 }
%struct.dmar_domain = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_ATS = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_PRI = common dso_local global i32 0, align 4
@device_domain_lock = common dso_local global i32 0, align 4
@device_domain_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PASID table allocation failed\0A\00", align 1
@hw_pass_through = common dso_local global i64 0, align 8
@PASID_RID2PASID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Setup RID2PASID failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Domain context map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_domain* (%struct.intel_iommu*, i32, i32, %struct.device*, %struct.dmar_domain*)* @dmar_insert_one_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_domain* @dmar_insert_one_dev_info(%struct.intel_iommu* %0, i32 %1, i32 %2, %struct.device* %3, %struct.dmar_domain* %4) #0 {
  %6 = alloca %struct.dmar_domain*, align 8
  %7 = alloca %struct.intel_iommu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.dmar_domain*, align 8
  %12 = alloca %struct.dmar_domain*, align 8
  %13 = alloca %struct.device_domain_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.device_domain_info*, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.device* %3, %struct.device** %10, align 8
  store %struct.dmar_domain* %4, %struct.dmar_domain** %11, align 8
  store %struct.dmar_domain* null, %struct.dmar_domain** %12, align 8
  %19 = call %struct.device_domain_info* (...) @alloc_devinfo_mem()
  store %struct.device_domain_info* %19, %struct.device_domain_info** %13, align 8
  %20 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %21 = icmp ne %struct.device_domain_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store %struct.dmar_domain* null, %struct.dmar_domain** %6, align 8
  br label %278

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %26 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %29 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %31 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %30, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %33 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %32, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %35 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %37 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %36, i32 0, i32 14
  store i64 0, i64* %37, align 8
  %38 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %39 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %38, i32 0, i32 15
  store i64 0, i64* %39, align 8
  %40 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %41 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %40, i32 0, i32 16
  store i64 0, i64* %41, align 8
  %42 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %43 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %42, i32 0, i32 13
  store i64 0, i64* %43, align 8
  %44 = load %struct.device*, %struct.device** %10, align 8
  %45 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %46 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %45, i32 0, i32 7
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  %48 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %49 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %48, i32 0, i32 8
  store %struct.dmar_domain* %47, %struct.dmar_domain** %49, align 8
  %50 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %51 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %52 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %51, i32 0, i32 12
  store %struct.intel_iommu* %50, %struct.intel_iommu** %52, align 8
  %53 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %54 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %53, i32 0, i32 11
  store i32* null, i32** %54, align 8
  %55 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %56 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %55, i32 0, i32 10
  store i64 0, i64* %56, align 8
  %57 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %58 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %57, i32 0, i32 9
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.device*, %struct.device** %10, align 8
  %61 = icmp ne %struct.device* %60, null
  br i1 %61, label %62, label %136

62:                                               ; preds = %23
  %63 = load %struct.device*, %struct.device** %10, align 8
  %64 = call i64 @dev_is_pci(%struct.device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %136

66:                                               ; preds = %62
  %67 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %68 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %67, i32 0, i32 7
  %69 = load %struct.device*, %struct.device** %68, align 8
  %70 = call %struct.pci_dev* @to_pci_dev(%struct.device* %69)
  store %struct.pci_dev* %70, %struct.pci_dev** %16, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %66
  %76 = call i32 (...) @pci_ats_disabled()
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %75
  %79 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %80 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ecap_dev_iotlb_support(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %86 = load i32, i32* @PCI_EXT_CAP_ID_ATS, align 4
  %87 = call i64 @pci_find_ext_capability(%struct.pci_dev* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %91 = call i64 @dmar_find_matched_atsr_unit(%struct.pci_dev* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %95 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %89, %84, %78, %75, %66
  %97 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %98 = call i64 @sm_supported(%struct.intel_iommu* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %96
  %101 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %102 = call i64 @pasid_supported(%struct.intel_iommu* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %106 = call i32 @pci_pasid_features(%struct.pci_dev* %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* %17, align 4
  %111 = or i32 %110, 1
  %112 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %113 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %100
  %116 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %117 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %122 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @ecap_prs(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %128 = load i32, i32* @PCI_EXT_CAP_ID_PRI, align 4
  %129 = call i64 @pci_find_ext_capability(%struct.pci_dev* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %133 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %132, i32 0, i32 4
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %126, %120, %115
  br label %135

135:                                              ; preds = %134, %96
  br label %136

136:                                              ; preds = %135, %62, %23
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @spin_lock_irqsave(i32* @device_domain_lock, i64 %137)
  %139 = load %struct.device*, %struct.device** %10, align 8
  %140 = icmp ne %struct.device* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.device*, %struct.device** %10, align 8
  %143 = call %struct.dmar_domain* @find_domain(%struct.device* %142)
  store %struct.dmar_domain* %143, %struct.dmar_domain** %12, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.dmar_domain*, %struct.dmar_domain** %12, align 8
  %146 = icmp ne %struct.dmar_domain* %145, null
  br i1 %146, label %164, label %147

147:                                              ; preds = %144
  %148 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %149 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call %struct.device_domain_info* @dmar_search_domain_by_dev_info(i32 %150, i32 %151, i32 %152)
  store %struct.device_domain_info* %153, %struct.device_domain_info** %18, align 8
  %154 = load %struct.device_domain_info*, %struct.device_domain_info** %18, align 8
  %155 = icmp ne %struct.device_domain_info* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load %struct.device_domain_info*, %struct.device_domain_info** %18, align 8
  %158 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %157, i32 0, i32 8
  %159 = load %struct.dmar_domain*, %struct.dmar_domain** %158, align 8
  store %struct.dmar_domain* %159, %struct.dmar_domain** %12, align 8
  %160 = load %struct.device*, %struct.device** %10, align 8
  %161 = load %struct.device_domain_info*, %struct.device_domain_info** %18, align 8
  %162 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %161, i32 0, i32 7
  store %struct.device* %160, %struct.device** %162, align 8
  br label %163

163:                                              ; preds = %156, %147
  br label %164

164:                                              ; preds = %163, %144
  %165 = load %struct.dmar_domain*, %struct.dmar_domain** %12, align 8
  %166 = icmp ne %struct.dmar_domain* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i64, i64* %14, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* @device_domain_lock, i64 %168)
  %170 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %171 = call i32 @free_devinfo_mem(%struct.device_domain_info* %170)
  %172 = load %struct.dmar_domain*, %struct.dmar_domain** %12, align 8
  store %struct.dmar_domain* %172, %struct.dmar_domain** %6, align 8
  br label %278

173:                                              ; preds = %164
  %174 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %175 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %174, i32 0, i32 0
  %176 = call i32 @spin_lock(i32* %175)
  %177 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  %178 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %179 = call i32 @domain_attach_iommu(%struct.dmar_domain* %177, %struct.intel_iommu* %178)
  store i32 %179, i32* %15, align 4
  %180 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %181 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %180, i32 0, i32 0
  %182 = call i32 @spin_unlock(i32* %181)
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %173
  %186 = load i64, i64* %14, align 8
  %187 = call i32 @spin_unlock_irqrestore(i32* @device_domain_lock, i64 %186)
  %188 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %189 = call i32 @free_devinfo_mem(%struct.device_domain_info* %188)
  store %struct.dmar_domain* null, %struct.dmar_domain** %6, align 8
  br label %278

190:                                              ; preds = %173
  %191 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %192 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %191, i32 0, i32 6
  %193 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  %194 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %193, i32 0, i32 0
  %195 = call i32 @list_add(i32* %192, i32* %194)
  %196 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %197 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %196, i32 0, i32 5
  %198 = call i32 @list_add(i32* %197, i32* @device_domain_list)
  %199 = load %struct.device*, %struct.device** %10, align 8
  %200 = icmp ne %struct.device* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %190
  %202 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  %203 = load %struct.device*, %struct.device** %10, align 8
  %204 = getelementptr inbounds %struct.device, %struct.device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  store %struct.device_domain_info* %202, %struct.device_domain_info** %205, align 8
  br label %206

206:                                              ; preds = %201, %190
  %207 = load i64, i64* %14, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* @device_domain_lock, i64 %207)
  %209 = load %struct.device*, %struct.device** %10, align 8
  %210 = icmp ne %struct.device* %209, null
  br i1 %210, label %211, label %263

211:                                              ; preds = %206
  %212 = load %struct.device*, %struct.device** %10, align 8
  %213 = call i64 @dev_is_pci(%struct.device* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %263

215:                                              ; preds = %211
  %216 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %217 = call i64 @sm_supported(%struct.intel_iommu* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %263

219:                                              ; preds = %215
  %220 = load %struct.device*, %struct.device** %10, align 8
  %221 = call i32 @intel_pasid_alloc_table(%struct.device* %220)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.device*, %struct.device** %10, align 8
  %226 = call i32 @dev_err(%struct.device* %225, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %227 = load %struct.device*, %struct.device** %10, align 8
  %228 = call i32 @dmar_remove_one_dev_info(%struct.device* %227)
  store %struct.dmar_domain* null, %struct.dmar_domain** %6, align 8
  br label %278

229:                                              ; preds = %219
  %230 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %231 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %230, i32 0, i32 0
  %232 = call i32 @spin_lock(i32* %231)
  %233 = load i64, i64* @hw_pass_through, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %229
  %236 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  %237 = call i64 @domain_type_is_si(%struct.dmar_domain* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %241 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  %242 = load %struct.device*, %struct.device** %10, align 8
  %243 = load i32, i32* @PASID_RID2PASID, align 4
  %244 = call i32 @intel_pasid_setup_pass_through(%struct.intel_iommu* %240, %struct.dmar_domain* %241, %struct.device* %242, i32 %243)
  store i32 %244, i32* %15, align 4
  br label %251

245:                                              ; preds = %235, %229
  %246 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %247 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  %248 = load %struct.device*, %struct.device** %10, align 8
  %249 = load i32, i32* @PASID_RID2PASID, align 4
  %250 = call i32 @intel_pasid_setup_second_level(%struct.intel_iommu* %246, %struct.dmar_domain* %247, %struct.device* %248, i32 %249)
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %245, %239
  %252 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %253 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %252, i32 0, i32 0
  %254 = call i32 @spin_unlock(i32* %253)
  %255 = load i32, i32* %15, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = load %struct.device*, %struct.device** %10, align 8
  %259 = call i32 @dev_err(%struct.device* %258, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %260 = load %struct.device*, %struct.device** %10, align 8
  %261 = call i32 @dmar_remove_one_dev_info(%struct.device* %260)
  store %struct.dmar_domain* null, %struct.dmar_domain** %6, align 8
  br label %278

262:                                              ; preds = %251
  br label %263

263:                                              ; preds = %262, %215, %211, %206
  %264 = load %struct.device*, %struct.device** %10, align 8
  %265 = icmp ne %struct.device* %264, null
  br i1 %265, label %266, label %276

266:                                              ; preds = %263
  %267 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  %268 = load %struct.device*, %struct.device** %10, align 8
  %269 = call i64 @domain_context_mapping(%struct.dmar_domain* %267, %struct.device* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load %struct.device*, %struct.device** %10, align 8
  %273 = call i32 @dev_err(%struct.device* %272, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %274 = load %struct.device*, %struct.device** %10, align 8
  %275 = call i32 @dmar_remove_one_dev_info(%struct.device* %274)
  store %struct.dmar_domain* null, %struct.dmar_domain** %6, align 8
  br label %278

276:                                              ; preds = %266, %263
  %277 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  store %struct.dmar_domain* %277, %struct.dmar_domain** %6, align 8
  br label %278

278:                                              ; preds = %276, %271, %257, %224, %185, %167, %22
  %279 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  ret %struct.dmar_domain* %279
}

declare dso_local %struct.device_domain_info* @alloc_devinfo_mem(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_ats_disabled(...) #1

declare dso_local i64 @ecap_dev_iotlb_support(i32) #1

declare dso_local i64 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i64 @dmar_find_matched_atsr_unit(%struct.pci_dev*) #1

declare dso_local i64 @sm_supported(%struct.intel_iommu*) #1

declare dso_local i64 @pasid_supported(%struct.intel_iommu*) #1

declare dso_local i32 @pci_pasid_features(%struct.pci_dev*) #1

declare dso_local i64 @ecap_prs(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.dmar_domain* @find_domain(%struct.device*) #1

declare dso_local %struct.device_domain_info* @dmar_search_domain_by_dev_info(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_devinfo_mem(%struct.device_domain_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @domain_attach_iommu(%struct.dmar_domain*, %struct.intel_iommu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @intel_pasid_alloc_table(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dmar_remove_one_dev_info(%struct.device*) #1

declare dso_local i64 @domain_type_is_si(%struct.dmar_domain*) #1

declare dso_local i32 @intel_pasid_setup_pass_through(%struct.intel_iommu*, %struct.dmar_domain*, %struct.device*, i32) #1

declare dso_local i32 @intel_pasid_setup_second_level(%struct.intel_iommu*, %struct.dmar_domain*, %struct.device*, i32) #1

declare dso_local i64 @domain_context_mapping(%struct.dmar_domain*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
