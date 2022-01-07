; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { i32, i32, i32, %struct.tegra_smmu_soc*, %struct.tegra_mc*, %struct.device*, i32, i32, i32, i8* }
%struct.device = type { i32 }
%struct.tegra_smmu_soc = type { i32, i64, i64, i32 }
%struct.tegra_mc = type { %struct.TYPE_2__*, i32, %struct.tegra_smmu* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"address bits: %u, PFN mask: %#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"TLB lines: %u, mask: %#lx\0A\00", align 1
@SMMU_PTC_CONFIG_ENABLE = common dso_local global i32 0, align 4
@SMMU_PTC_CONFIG = common dso_local global i32 0, align 4
@SMMU_TLB_CONFIG_HIT_UNDER_MISS = common dso_local global i32 0, align 4
@SMMU_TLB_CONFIG_ROUND_ROBIN_ARBITRATION = common dso_local global i32 0, align 4
@SMMU_TLB_CONFIG = common dso_local global i32 0, align 4
@SMMU_CONFIG_ENABLE = common dso_local global i32 0, align 4
@SMMU_CONFIG = common dso_local global i32 0, align 4
@tegra_smmu_ops = common dso_local global i32 0, align 4
@platform_bus_type = common dso_local global i32 0, align 4
@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tegra_smmu* @tegra_smmu_probe(%struct.device* %0, %struct.tegra_smmu_soc* %1, %struct.tegra_mc* %2) #0 {
  %4 = alloca %struct.tegra_smmu*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tegra_smmu_soc*, align 8
  %7 = alloca %struct.tegra_mc*, align 8
  %8 = alloca %struct.tegra_smmu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.tegra_smmu_soc* %1, %struct.tegra_smmu_soc** %6, align 8
  store %struct.tegra_mc* %2, %struct.tegra_mc** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(%struct.device* %12, i64 64, i32 %13)
  %15 = bitcast i8* %14 to %struct.tegra_smmu*
  store %struct.tegra_smmu* %15, %struct.tegra_smmu** %8, align 8
  %16 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %17 = icmp ne %struct.tegra_smmu* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.tegra_smmu* @ERR_PTR(i32 %20)
  store %struct.tegra_smmu* %21, %struct.tegra_smmu** %4, align 8
  br label %205

22:                                               ; preds = %3
  %23 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %24 = load %struct.tegra_mc*, %struct.tegra_mc** %7, align 8
  %25 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %24, i32 0, i32 2
  store %struct.tegra_smmu* %23, %struct.tegra_smmu** %25, align 8
  %26 = load %struct.tegra_smmu_soc*, %struct.tegra_smmu_soc** %6, align 8
  %27 = getelementptr inbounds %struct.tegra_smmu_soc, %struct.tegra_smmu_soc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BITS_TO_LONGS(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kzalloc(%struct.device* %32, i64 %33, i32 %34)
  %36 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %37 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %39 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %38, i32 0, i32 9
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %22
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.tegra_smmu* @ERR_PTR(i32 %44)
  store %struct.tegra_smmu* %45, %struct.tegra_smmu** %4, align 8
  br label %205

46:                                               ; preds = %22
  %47 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %48 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %47, i32 0, i32 8
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %51 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %50, i32 0, i32 7
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.tegra_mc*, %struct.tegra_mc** %7, align 8
  %54 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %57 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.tegra_smmu_soc*, %struct.tegra_smmu_soc** %6, align 8
  %59 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %60 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %59, i32 0, i32 3
  store %struct.tegra_smmu_soc* %58, %struct.tegra_smmu_soc** %60, align 8
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %63 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %62, i32 0, i32 5
  store %struct.device* %61, %struct.device** %63, align 8
  %64 = load %struct.tegra_mc*, %struct.tegra_mc** %7, align 8
  %65 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %66 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %65, i32 0, i32 4
  store %struct.tegra_mc* %64, %struct.tegra_mc** %66, align 8
  %67 = load %struct.tegra_mc*, %struct.tegra_mc** %7, align 8
  %68 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @BIT_MASK(i32 %73)
  %75 = sub nsw i32 %74, 1
  %76 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %77 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load %struct.tegra_mc*, %struct.tegra_mc** %7, align 8
  %80 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %85 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %89 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %88, i32 0, i32 3
  %90 = load %struct.tegra_smmu_soc*, %struct.tegra_smmu_soc** %89, align 8
  %91 = getelementptr inbounds %struct.tegra_smmu_soc, %struct.tegra_smmu_soc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 1
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %96 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %99 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %98, i32 0, i32 3
  %100 = load %struct.tegra_smmu_soc*, %struct.tegra_smmu_soc** %99, align 8
  %101 = getelementptr inbounds %struct.tegra_smmu_soc, %struct.tegra_smmu_soc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %104 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load i32, i32* @SMMU_PTC_CONFIG_ENABLE, align 4
  %108 = call i32 @SMMU_PTC_CONFIG_INDEX_MAP(i32 63)
  %109 = or i32 %107, %108
  store i32 %109, i32* %10, align 4
  %110 = load %struct.tegra_smmu_soc*, %struct.tegra_smmu_soc** %6, align 8
  %111 = getelementptr inbounds %struct.tegra_smmu_soc, %struct.tegra_smmu_soc* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %46
  %115 = call i32 @SMMU_PTC_CONFIG_REQ_LIMIT(i32 8)
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %114, %46
  %119 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @SMMU_PTC_CONFIG, align 4
  %122 = call i32 @smmu_writel(%struct.tegra_smmu* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @SMMU_TLB_CONFIG_HIT_UNDER_MISS, align 4
  %124 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %125 = call i32 @SMMU_TLB_CONFIG_ACTIVE_LINES(%struct.tegra_smmu* %124)
  %126 = or i32 %123, %125
  store i32 %126, i32* %10, align 4
  %127 = load %struct.tegra_smmu_soc*, %struct.tegra_smmu_soc** %6, align 8
  %128 = getelementptr inbounds %struct.tegra_smmu_soc, %struct.tegra_smmu_soc* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = load i32, i32* @SMMU_TLB_CONFIG_ROUND_ROBIN_ARBITRATION, align 4
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %131, %118
  %136 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @SMMU_TLB_CONFIG, align 4
  %139 = call i32 @smmu_writel(%struct.tegra_smmu* %136, i32 %137, i32 %138)
  %140 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %141 = call i32 @smmu_flush_ptc_all(%struct.tegra_smmu* %140)
  %142 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %143 = call i32 @smmu_flush_tlb(%struct.tegra_smmu* %142)
  %144 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %145 = load i32, i32* @SMMU_CONFIG_ENABLE, align 4
  %146 = load i32, i32* @SMMU_CONFIG, align 4
  %147 = call i32 @smmu_writel(%struct.tegra_smmu* %144, i32 %145, i32 %146)
  %148 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %149 = call i32 @smmu_flush(%struct.tegra_smmu* %148)
  %150 = call i32 (...) @tegra_smmu_ahb_enable()
  %151 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %152 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %151, i32 0, i32 2
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = load %struct.device*, %struct.device** %5, align 8
  %155 = call i32 @dev_name(%struct.device* %154)
  %156 = call i32 @iommu_device_sysfs_add(i32* %152, %struct.device* %153, i32* null, i32 %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %135
  %160 = load i32, i32* %11, align 4
  %161 = call %struct.tegra_smmu* @ERR_PTR(i32 %160)
  store %struct.tegra_smmu* %161, %struct.tegra_smmu** %4, align 8
  br label %205

162:                                              ; preds = %135
  %163 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %164 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %163, i32 0, i32 2
  %165 = call i32 @iommu_device_set_ops(i32* %164, i32* @tegra_smmu_ops)
  %166 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %167 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %166, i32 0, i32 2
  %168 = load %struct.device*, %struct.device** %5, align 8
  %169 = getelementptr inbounds %struct.device, %struct.device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @iommu_device_set_fwnode(i32* %167, i32 %170)
  %172 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %173 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %172, i32 0, i32 2
  %174 = call i32 @iommu_device_register(i32* %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %162
  %178 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %179 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %178, i32 0, i32 2
  %180 = call i32 @iommu_device_sysfs_remove(i32* %179)
  %181 = load i32, i32* %11, align 4
  %182 = call %struct.tegra_smmu* @ERR_PTR(i32 %181)
  store %struct.tegra_smmu* %182, %struct.tegra_smmu** %4, align 8
  br label %205

183:                                              ; preds = %162
  %184 = call i32 @bus_set_iommu(i32* @platform_bus_type, i32* @tegra_smmu_ops)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %189 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %188, i32 0, i32 2
  %190 = call i32 @iommu_device_unregister(i32* %189)
  %191 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %192 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %191, i32 0, i32 2
  %193 = call i32 @iommu_device_sysfs_remove(i32* %192)
  %194 = load i32, i32* %11, align 4
  %195 = call %struct.tegra_smmu* @ERR_PTR(i32 %194)
  store %struct.tegra_smmu* %195, %struct.tegra_smmu** %4, align 8
  br label %205

196:                                              ; preds = %183
  %197 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %198 = call i64 @IS_ENABLED(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  %202 = call i32 @tegra_smmu_debugfs_init(%struct.tegra_smmu* %201)
  br label %203

203:                                              ; preds = %200, %196
  %204 = load %struct.tegra_smmu*, %struct.tegra_smmu** %8, align 8
  store %struct.tegra_smmu* %204, %struct.tegra_smmu** %4, align 8
  br label %205

205:                                              ; preds = %203, %187, %177, %159, %42, %18
  %206 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  ret %struct.tegra_smmu* %206
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i64, i32) #1

declare dso_local %struct.tegra_smmu* @ERR_PTR(i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @SMMU_PTC_CONFIG_INDEX_MAP(i32) #1

declare dso_local i32 @SMMU_PTC_CONFIG_REQ_LIMIT(i32) #1

declare dso_local i32 @smmu_writel(%struct.tegra_smmu*, i32, i32) #1

declare dso_local i32 @SMMU_TLB_CONFIG_ACTIVE_LINES(%struct.tegra_smmu*) #1

declare dso_local i32 @smmu_flush_ptc_all(%struct.tegra_smmu*) #1

declare dso_local i32 @smmu_flush_tlb(%struct.tegra_smmu*) #1

declare dso_local i32 @smmu_flush(%struct.tegra_smmu*) #1

declare dso_local i32 @tegra_smmu_ahb_enable(...) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.device*, i32*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @iommu_device_sysfs_remove(i32*) #1

declare dso_local i32 @bus_set_iommu(i32*, i32*) #1

declare dso_local i32 @iommu_device_unregister(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @tegra_smmu_debugfs_init(%struct.tegra_smmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
