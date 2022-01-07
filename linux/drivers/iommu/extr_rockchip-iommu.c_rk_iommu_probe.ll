; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { i32, %struct.device }
%struct.rk_iommu = type { i64, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.device*, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"rockchip,disable-mmu-reset\00", align 1
@rk_iommu_clocks = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@rk_iommu_ops = common dso_local global i32 0, align 4
@dma_dev = common dso_local global %struct.device* null, align 8
@platform_bus_type = common dso_local global i32 0, align 4
@rk_iommu_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk_iommu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rk_iommu*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.rk_iommu* @devm_kzalloc(%struct.device* %16, i32 56, i32 %17)
  store %struct.rk_iommu* %18, %struct.rk_iommu** %5, align 8
  %19 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %20 = icmp ne %struct.rk_iommu* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %304

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.rk_iommu* %26)
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %30 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %29, i32 0, i32 6
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %32 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kcalloc(%struct.device* %33, i32 %34, i32 4, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %39 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %38, i32 0, i32 8
  store i32* %37, i32** %39, align 8
  %40 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %41 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %304

47:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %86, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load i32, i32* @IORESOURCE_MEM, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %53, i32 %54, i32 %55)
  store %struct.resource* %56, %struct.resource** %6, align 8
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = icmp ne %struct.resource* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %86

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 1
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = call i32 @devm_ioremap_resource(%struct.device* %62, %struct.resource* %63)
  %65 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %66 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %72 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %71, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  br label %86

81:                                               ; preds = %60
  %82 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %83 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %81, %80, %59
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %48

89:                                               ; preds = %48
  %90 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %91 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %96 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %95, i32 0, i32 8
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %2, align 4
  br label %304

101:                                              ; preds = %89
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = call i32 @platform_irq_count(%struct.platform_device* %102)
  %104 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %105 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %107 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %112 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %2, align 4
  br label %304

114:                                              ; preds = %101
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @device_property_read_bool(%struct.device* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %118 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 8
  %119 = load i32*, i32** @rk_iommu_clocks, align 8
  %120 = call i32 @ARRAY_SIZE(i32* %119)
  %121 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %122 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %124 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %123, i32 0, i32 6
  %125 = load %struct.device*, %struct.device** %124, align 8
  %126 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %127 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @devm_kcalloc(%struct.device* %125, i32 %128, i32 4, i32 %129)
  %131 = bitcast i8* %130 to %struct.TYPE_6__*
  %132 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %133 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %132, i32 0, i32 3
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %133, align 8
  %134 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %135 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = icmp ne %struct.TYPE_6__* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %114
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %304

141:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %161, %141
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %145 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %142
  %149 = load i32*, i32** @rk_iommu_clocks, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %155 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %154, i32 0, i32 3
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 %153, i32* %160, align 4
  br label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %142

164:                                              ; preds = %142
  %165 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %166 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %165, i32 0, i32 6
  %167 = load %struct.device*, %struct.device** %166, align 8
  %168 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %169 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %172 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %171, i32 0, i32 3
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = call i32 @devm_clk_bulk_get(%struct.device* %167, i32 %170, %struct.TYPE_6__* %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @ENOENT, align 4
  %177 = sub nsw i32 0, %176
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %164
  %180 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %181 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %180, i32 0, i32 2
  store i32 0, i32* %181, align 4
  br label %188

182:                                              ; preds = %164
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %2, align 4
  br label %304

187:                                              ; preds = %182
  br label %188

188:                                              ; preds = %187, %179
  %189 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %190 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %193 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %192, i32 0, i32 3
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = call i32 @clk_bulk_prepare(i32 %191, %struct.TYPE_6__* %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %188
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %2, align 4
  br label %304

200:                                              ; preds = %188
  %201 = call i32 (...) @iommu_group_alloc()
  %202 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %203 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  %204 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %205 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @IS_ERR(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %200
  %210 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %211 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @PTR_ERR(i32 %212)
  store i32 %213, i32* %8, align 4
  br label %295

214:                                              ; preds = %200
  %215 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %216 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %215, i32 0, i32 5
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = load %struct.device*, %struct.device** %4, align 8
  %219 = call i32 @dev_name(%struct.device* %218)
  %220 = call i32 @iommu_device_sysfs_add(i32* %216, %struct.device* %217, i32* null, i32 %219)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  br label %290

224:                                              ; preds = %214
  %225 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %226 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %225, i32 0, i32 5
  %227 = call i32 @iommu_device_set_ops(i32* %226, i32* @rk_iommu_ops)
  %228 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %229 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %228, i32 0, i32 5
  %230 = load %struct.device*, %struct.device** %4, align 8
  %231 = getelementptr inbounds %struct.device, %struct.device* %230, i32 0, i32 0
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = call i32 @iommu_device_set_fwnode(i32* %229, i32* %233)
  %235 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %236 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %235, i32 0, i32 5
  %237 = call i32 @iommu_device_register(i32* %236)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %224
  br label %286

241:                                              ; preds = %224
  %242 = load %struct.device*, %struct.device** @dma_dev, align 8
  %243 = icmp ne %struct.device* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %246 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %245, i32 0, i32 1
  store %struct.device* %246, %struct.device** @dma_dev, align 8
  br label %247

247:                                              ; preds = %244, %241
  %248 = call i32 @bus_set_iommu(i32* @platform_bus_type, i32* @rk_iommu_ops)
  %249 = load %struct.device*, %struct.device** %4, align 8
  %250 = call i32 @pm_runtime_enable(%struct.device* %249)
  store i32 0, i32* %9, align 4
  br label %251

251:                                              ; preds = %282, %247
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %254 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %285

257:                                              ; preds = %251
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @platform_get_irq(%struct.platform_device* %258, i32 %259)
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %257
  %264 = load i32, i32* %10, align 4
  store i32 %264, i32* %2, align 4
  br label %304

265:                                              ; preds = %257
  %266 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %267 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %266, i32 0, i32 6
  %268 = load %struct.device*, %struct.device** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* @rk_iommu_irq, align 4
  %271 = load i32, i32* @IRQF_SHARED, align 4
  %272 = load %struct.device*, %struct.device** %4, align 8
  %273 = call i32 @dev_name(%struct.device* %272)
  %274 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %275 = call i32 @devm_request_irq(%struct.device* %268, i32 %269, i32 %270, i32 %271, i32 %273, %struct.rk_iommu* %274)
  store i32 %275, i32* %8, align 4
  %276 = load i32, i32* %8, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %265
  %279 = load %struct.device*, %struct.device** %4, align 8
  %280 = call i32 @pm_runtime_disable(%struct.device* %279)
  br label %286

281:                                              ; preds = %265
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %9, align 4
  br label %251

285:                                              ; preds = %251
  store i32 0, i32* %2, align 4
  br label %304

286:                                              ; preds = %278, %240
  %287 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %288 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %287, i32 0, i32 5
  %289 = call i32 @iommu_device_sysfs_remove(i32* %288)
  br label %290

290:                                              ; preds = %286, %223
  %291 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %292 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @iommu_group_put(i32 %293)
  br label %295

295:                                              ; preds = %290, %209
  %296 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %297 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %300 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %299, i32 0, i32 3
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %300, align 8
  %302 = call i32 @clk_bulk_unprepare(i32 %298, %struct.TYPE_6__* %301)
  %303 = load i32, i32* %8, align 4
  store i32 %303, i32* %2, align 4
  br label %304

304:                                              ; preds = %295, %285, %263, %198, %185, %138, %110, %94, %44, %21
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local %struct.rk_iommu* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rk_iommu*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @devm_clk_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @clk_bulk_prepare(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @iommu_group_alloc(...) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.device*, i32*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32*) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @bus_set_iommu(i32*, i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.rk_iommu*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @iommu_device_sysfs_remove(i32*) #1

declare dso_local i32 @iommu_group_put(i32) #1

declare dso_local i32 @clk_bulk_unprepare(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
