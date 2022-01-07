; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mtk_iommu_data = type { i32, i64, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_7__*, i32, i32, %struct.device* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.resource = type { i32 }
%struct.component_match = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTK_PROTECT_PA_ALIGN = common dso_local global i32 0, align 4
@max_pfn = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bclk\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"mediatek,larbs\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"mediatek,larb-id\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@release_of = common dso_local global i32 0, align 4
@compare_of = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"mtk-iommu.%pa\00", align 1
@mtk_iommu_ops = common dso_local global i32 0, align 4
@m4ulist = common dso_local global i32 0, align 4
@platform_bus_type = common dso_local global i32 0, align 4
@mtk_iommu_com_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_iommu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_iommu_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.component_match*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.platform_device*, align 8
  %15 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  store %struct.component_match* null, %struct.component_match** %8, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kzalloc(%struct.device* %18, i32 64, i32 %19)
  %21 = bitcast i8* %20 to %struct.mtk_iommu_data*
  store %struct.mtk_iommu_data* %21, %struct.mtk_iommu_data** %4, align 8
  %22 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %23 = icmp ne %struct.mtk_iommu_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %247

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %29, i32 0, i32 9
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call %struct.TYPE_7__* @of_device_get_match_data(%struct.device* %31)
  %33 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %33, i32 0, i32 6
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i32, i32* @MTK_PROTECT_PA_ALIGN, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(%struct.device* %35, i32 %37, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %247

45:                                               ; preds = %27
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @virt_to_phys(i8* %46)
  %48 = load i32, i32* @MTK_PROTECT_PA_ALIGN, align 4
  %49 = call i32 @ALIGN(i32 %47, i32 %48)
  %50 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %51 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @max_pfn, align 4
  %53 = call i32 @BIT_ULL(i32 32)
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = icmp sgt i32 %52, %55
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %61 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %62, i32 0, i32 6
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %45
  %69 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %70 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %45
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 0)
  store %struct.resource* %74, %struct.resource** %6, align 8
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load %struct.resource*, %struct.resource** %6, align 8
  %77 = call i32 @devm_ioremap_resource(%struct.device* %75, %struct.resource* %76)
  %78 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %79 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %81 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %71
  %86 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @PTR_ERR(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %247

90:                                               ; preds = %71
  %91 = load %struct.resource*, %struct.resource** %6, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %7, align 4
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = call i64 @platform_get_irq(%struct.platform_device* %94, i32 0)
  %96 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %97 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %99 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %90
  %103 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %104 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %2, align 4
  br label %247

107:                                              ; preds = %90
  %108 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %108, i32 0, i32 6
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %107
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = call i32 @devm_clk_get(%struct.device* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %118 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %120 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @IS_ERR(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %126 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @PTR_ERR(i32 %127)
  store i32 %128, i32* %2, align 4
  br label %247

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %107
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = getelementptr inbounds %struct.device, %struct.device* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = call i32 @of_count_phandle_with_args(%struct.TYPE_6__* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %2, align 4
  br label %247

139:                                              ; preds = %130
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %194, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %197

144:                                              ; preds = %140
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = getelementptr inbounds %struct.device, %struct.device* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call %struct.device_node* @of_parse_phandle(%struct.TYPE_6__* %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  store %struct.device_node* %149, %struct.device_node** %13, align 8
  %150 = load %struct.device_node*, %struct.device_node** %13, align 8
  %151 = icmp ne %struct.device_node* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %247

155:                                              ; preds = %144
  %156 = load %struct.device_node*, %struct.device_node** %13, align 8
  %157 = call i32 @of_device_is_available(%struct.device_node* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load %struct.device_node*, %struct.device_node** %13, align 8
  %161 = call i32 @of_node_put(%struct.device_node* %160)
  br label %194

162:                                              ; preds = %155
  %163 = load %struct.device_node*, %struct.device_node** %13, align 8
  %164 = call i32 @of_property_read_u32(%struct.device_node* %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %15)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %15, align 8
  br label %170

170:                                              ; preds = %167, %162
  %171 = load %struct.device_node*, %struct.device_node** %13, align 8
  %172 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %171)
  store %struct.platform_device* %172, %struct.platform_device** %14, align 8
  %173 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %174 = icmp ne %struct.platform_device* %173, null
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.device_node*, %struct.device_node** %13, align 8
  %177 = call i32 @of_node_put(%struct.device_node* %176)
  %178 = load i32, i32* @EPROBE_DEFER, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %247

180:                                              ; preds = %170
  %181 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %184 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %183, i32 0, i32 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i64, i64* %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store %struct.device* %182, %struct.device** %188, align 8
  %189 = load %struct.device*, %struct.device** %5, align 8
  %190 = load i32, i32* @release_of, align 4
  %191 = load i32, i32* @compare_of, align 4
  %192 = load %struct.device_node*, %struct.device_node** %13, align 8
  %193 = call i32 @component_match_add_release(%struct.device* %189, %struct.component_match** %8, i32 %190, i32 %191, %struct.device_node* %192)
  br label %194

194:                                              ; preds = %180, %159
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %140

197:                                              ; preds = %140
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %200 = call i32 @platform_set_drvdata(%struct.platform_device* %198, %struct.mtk_iommu_data* %199)
  %201 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %202 = call i32 @mtk_iommu_hw_init(%struct.mtk_iommu_data* %201)
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %2, align 4
  br label %247

207:                                              ; preds = %197
  %208 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %209 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %208, i32 0, i32 3
  %210 = load %struct.device*, %struct.device** %5, align 8
  %211 = call i32 @iommu_device_sysfs_add(i32* %209, %struct.device* %210, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %2, align 4
  br label %247

216:                                              ; preds = %207
  %217 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %218 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %217, i32 0, i32 3
  %219 = call i32 @iommu_device_set_ops(i32* %218, i32* @mtk_iommu_ops)
  %220 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %221 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %220, i32 0, i32 3
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.device, %struct.device* %223, i32 0, i32 0
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = call i32 @iommu_device_set_fwnode(i32* %221, i32* %226)
  %228 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %229 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %228, i32 0, i32 3
  %230 = call i32 @iommu_device_register(i32* %229)
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %216
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %2, align 4
  br label %247

235:                                              ; preds = %216
  %236 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %237 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %236, i32 0, i32 2
  %238 = call i32 @list_add_tail(i32* %237, i32* @m4ulist)
  %239 = call i32 @iommu_present(i32* @platform_bus_type)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %235
  %242 = call i32 @bus_set_iommu(i32* @platform_bus_type, i32* @mtk_iommu_ops)
  br label %243

243:                                              ; preds = %241, %235
  %244 = load %struct.device*, %struct.device** %5, align 8
  %245 = load %struct.component_match*, %struct.component_match** %8, align 8
  %246 = call i32 @component_master_add_with_match(%struct.device* %244, i32* @mtk_iommu_com_ops, %struct.component_match* %245)
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %243, %233, %214, %205, %175, %152, %137, %124, %102, %85, %42, %24
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @component_match_add_release(%struct.device*, %struct.component_match**, i32, i32, %struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_iommu_data*) #1

declare dso_local i32 @mtk_iommu_hw_init(%struct.mtk_iommu_data*) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.device*, i32*, i8*, i32*) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32*) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iommu_present(i32*) #1

declare dso_local i32 @bus_set_iommu(i32*, i32*) #1

declare dso_local i32 @component_master_add_with_match(%struct.device*, i32*, %struct.component_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
