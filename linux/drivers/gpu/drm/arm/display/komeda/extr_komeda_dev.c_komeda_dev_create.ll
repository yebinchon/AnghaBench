; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_komeda_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_komeda_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { i32*, %struct.TYPE_3__*, %struct.device*, i32, %struct.TYPE_4__, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32, i32* }
%struct.platform_device = type { i32 }
%struct.komeda_product_data = type { i32, %struct.TYPE_3__* (i32*, %struct.TYPE_4__*)* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No registers defined.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Map register space failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Get engine clk failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"DT configured %x mismatch with real HW %x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Found ARM Mali-D%x version r%dp%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"enumerate display resource failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"parse device tree failed.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"assemble display pipelines failed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"continue without IOMMU support!\0A\00", align 1
@komeda_sysfs_attr_group = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"create sysfs group failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.komeda_dev* @komeda_dev_create(%struct.device* %0) #0 {
  %2 = alloca %struct.komeda_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.komeda_product_data*, align 8
  %6 = alloca %struct.komeda_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.komeda_product_data* @of_device_get_match_data(%struct.device* %11)
  store %struct.komeda_product_data* %12, %struct.komeda_product_data** %5, align 8
  %13 = load %struct.komeda_product_data*, %struct.komeda_product_data** %5, align 8
  %14 = icmp ne %struct.komeda_product_data* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.komeda_dev* @ERR_PTR(i32 %17)
  store %struct.komeda_dev* %18, %struct.komeda_dev** %2, align 8
  br label %228

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %7, align 8
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.komeda_dev* @ERR_PTR(i32 %28)
  store %struct.komeda_dev* %29, %struct.komeda_dev** %2, align 8
  br label %228

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.komeda_dev* @devm_kzalloc(%struct.device* %31, i32 56, i32 %32)
  store %struct.komeda_dev* %33, %struct.komeda_dev** %6, align 8
  %34 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %35 = icmp ne %struct.komeda_dev* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.komeda_dev* @ERR_PTR(i32 %38)
  store %struct.komeda_dev* %39, %struct.komeda_dev** %2, align 8
  br label %228

40:                                               ; preds = %30
  %41 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %42 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %41, i32 0, i32 7
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %46 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %45, i32 0, i32 2
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load %struct.resource*, %struct.resource** %7, align 8
  %49 = call i32* @devm_ioremap_resource(%struct.device* %47, %struct.resource* %48)
  %50 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %51 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %50, i32 0, i32 5
  store i32* %49, i32** %51, align 8
  %52 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %53 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @IS_ERR(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %40
  %58 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %60 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @PTR_ERR(i32* %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %64 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  br label %223

65:                                               ; preds = %40
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32* @devm_clk_get(%struct.device* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %69 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %68, i32 0, i32 6
  store i32* %67, i32** %69, align 8
  %70 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %71 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %78 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @PTR_ERR(i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %82 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %81, i32 0, i32 6
  store i32* null, i32** %82, align 8
  br label %223

83:                                               ; preds = %65
  %84 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %85 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @clk_prepare_enable(i32* %86)
  %88 = load %struct.komeda_product_data*, %struct.komeda_product_data** %5, align 8
  %89 = getelementptr inbounds %struct.komeda_product_data, %struct.komeda_product_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__* (i32*, %struct.TYPE_4__*)*, %struct.TYPE_3__* (i32*, %struct.TYPE_4__*)** %89, align 8
  %91 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %92 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %95 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %94, i32 0, i32 4
  %96 = call %struct.TYPE_3__* %90(i32* %93, %struct.TYPE_4__* %95)
  %97 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %98 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %97, i32 0, i32 1
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %98, align 8
  %99 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %100 = load %struct.komeda_product_data*, %struct.komeda_product_data** %5, align 8
  %101 = getelementptr inbounds %struct.komeda_product_data, %struct.komeda_product_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @komeda_product_match(%struct.komeda_dev* %99, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %83
  %106 = load %struct.komeda_product_data*, %struct.komeda_product_data** %5, align 8
  %107 = getelementptr inbounds %struct.komeda_product_data, %struct.komeda_product_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %110 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @MALIDP_CORE_ID_PRODUCT_ID(i32 %112)
  %114 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %113)
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %223

117:                                              ; preds = %83
  %118 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %119 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @MALIDP_CORE_ID_PRODUCT_ID(i32 %121)
  %123 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %124 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @MALIDP_CORE_ID_MAJOR(i32 %126)
  %128 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %129 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @MALIDP_CORE_ID_MINOR(i32 %131)
  %133 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %127, i32 %132)
  %134 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %135 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)** %137, align 8
  %139 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %140 = call i32 %138(%struct.komeda_dev* %139)
  %141 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %142 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %141, i32 0, i32 1
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)** %144, align 8
  %146 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %147 = call i32 %145(%struct.komeda_dev* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %117
  %151 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %223

152:                                              ; preds = %117
  %153 = load %struct.device*, %struct.device** %3, align 8
  %154 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %155 = call i32 @komeda_parse_dt(%struct.device* %153, %struct.komeda_dev* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %223

160:                                              ; preds = %152
  %161 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %162 = call i32 @komeda_assemble_pipelines(%struct.komeda_dev* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %223

167:                                              ; preds = %160
  %168 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %169 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %168, i32 0, i32 3
  %170 = load %struct.device*, %struct.device** %3, align 8
  %171 = getelementptr inbounds %struct.device, %struct.device* %170, i32 0, i32 1
  store i32* %169, i32** %171, align 8
  %172 = load %struct.device*, %struct.device** %3, align 8
  %173 = call i32 @DMA_BIT_MASK(i32 32)
  %174 = call i32 @dma_set_max_seg_size(%struct.device* %172, i32 %173)
  %175 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %176 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %175, i32 0, i32 2
  %177 = load %struct.device*, %struct.device** %176, align 8
  %178 = call i32* @iommu_get_domain_for_dev(%struct.device* %177)
  %179 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %180 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %179, i32 0, i32 0
  store i32* %178, i32** %180, align 8
  %181 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %182 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %167
  %186 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %167
  %188 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %189 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %213

192:                                              ; preds = %187
  %193 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %194 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %193, i32 0, i32 1
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)** %196, align 8
  %198 = icmp ne i32 (%struct.komeda_dev*)* %197, null
  br i1 %198, label %199, label %213

199:                                              ; preds = %192
  %200 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %201 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %200, i32 0, i32 1
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)** %203, align 8
  %205 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %206 = call i32 %204(%struct.komeda_dev* %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %211 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %210, i32 0, i32 0
  store i32* null, i32** %211, align 8
  br label %223

212:                                              ; preds = %199
  br label %213

213:                                              ; preds = %212, %192, %187
  %214 = load %struct.device*, %struct.device** %3, align 8
  %215 = getelementptr inbounds %struct.device, %struct.device* %214, i32 0, i32 0
  %216 = call i32 @sysfs_create_group(i32* %215, i32* @komeda_sysfs_attr_group)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %223

221:                                              ; preds = %213
  %222 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  store %struct.komeda_dev* %222, %struct.komeda_dev** %2, align 8
  br label %228

223:                                              ; preds = %219, %209, %165, %158, %150, %105, %75, %57
  %224 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %225 = call i32 @komeda_dev_destroy(%struct.komeda_dev* %224)
  %226 = load i32, i32* %8, align 4
  %227 = call %struct.komeda_dev* @ERR_PTR(i32 %226)
  store %struct.komeda_dev* %227, %struct.komeda_dev** %2, align 8
  br label %228

228:                                              ; preds = %223, %221, %36, %25, %15
  %229 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  ret %struct.komeda_dev* %229
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.komeda_product_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.komeda_dev* @ERR_PTR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.komeda_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @komeda_product_match(%struct.komeda_dev*, i32) #1

declare dso_local i32 @MALIDP_CORE_ID_PRODUCT_ID(i32) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i32 @MALIDP_CORE_ID_MAJOR(i32) #1

declare dso_local i32 @MALIDP_CORE_ID_MINOR(i32) #1

declare dso_local i32 @komeda_parse_dt(%struct.device*, %struct.komeda_dev*) #1

declare dso_local i32 @komeda_assemble_pipelines(%struct.komeda_dev*) #1

declare dso_local i32 @dma_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @komeda_dev_destroy(%struct.komeda_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
