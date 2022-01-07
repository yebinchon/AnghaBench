; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_exynos_sysmmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_exynos_sysmmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.sysmmu_drvdata = type { i32, i32, %struct.device*, i32, i32*, i32*, i32*, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@exynos_sysmmu_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unabled to register handler of irq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sysmmu\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to get device clock(s)!\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@exynos_iommu_ops = common dso_local global i32 0, align 4
@PG_ENT_SHIFT = common dso_local global i64 0, align 8
@SYSMMU_PG_ENT_SHIFT = common dso_local global i64 0, align 8
@SYSMMU_LV1_PROT = common dso_local global i32 0, align 4
@LV1_PROT = common dso_local global i32 0, align 4
@SYSMMU_LV2_PROT = common dso_local global i32 0, align 4
@LV2_PROT = common dso_local global i32 0, align 4
@SYSMMU_V5_PG_ENT_SHIFT = common dso_local global i64 0, align 8
@SYSMMU_V5_LV1_PROT = common dso_local global i32 0, align 4
@SYSMMU_V5_LV2_PROT = common dso_local global i32 0, align 4
@dma_dev = common dso_local global %struct.device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_sysmmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_sysmmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sysmmu_drvdata*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sysmmu_drvdata* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.sysmmu_drvdata* %13, %struct.sysmmu_drvdata** %7, align 8
  %14 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %15 = icmp ne %struct.sysmmu_drvdata* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %262

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %8, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = call i32* @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %27 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %26, i32 0, i32 8
  store i32* %25, i32** %27, align 8
  %28 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %29 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @IS_ERR(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %35 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  store i32 %37, i32* %2, align 4
  br label %262

38:                                               ; preds = %19
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @platform_get_irq(%struct.platform_device* %39, i32 0)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %262

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @exynos_sysmmu_irq, align 4
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @dev_name(%struct.device* %49)
  %51 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %52 = call i32 @devm_request_irq(%struct.device* %46, i32 %47, i32 %48, i32 0, i32 %50, %struct.sysmmu_drvdata* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %262

60:                                               ; preds = %45
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i8* @devm_clk_get(%struct.device* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %65 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %64, i32 0, i32 7
  store i32* %63, i32** %65, align 8
  %66 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %67 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @PTR_ERR(i32* %68)
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %75 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %74, i32 0, i32 7
  store i32* null, i32** %75, align 8
  br label %88

76:                                               ; preds = %60
  %77 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %78 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @IS_ERR(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %84 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @PTR_ERR(i32* %85)
  store i32 %86, i32* %2, align 4
  br label %262

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = call i8* @devm_clk_get(%struct.device* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %93 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %92, i32 0, i32 6
  store i32* %91, i32** %93, align 8
  %94 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %95 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @PTR_ERR(i32* %96)
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %103 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %102, i32 0, i32 6
  store i32* null, i32** %103, align 8
  br label %116

104:                                              ; preds = %88
  %105 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %106 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = call i64 @IS_ERR(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %112 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @PTR_ERR(i32* %113)
  store i32 %114, i32* %2, align 4
  br label %262

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %101
  %117 = load %struct.device*, %struct.device** %6, align 8
  %118 = call i8* @devm_clk_get(%struct.device* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %121 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %120, i32 0, i32 5
  store i32* %119, i32** %121, align 8
  %122 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %123 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @PTR_ERR(i32* %124)
  %126 = load i32, i32* @ENOENT, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %116
  %130 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %131 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %130, i32 0, i32 5
  store i32* null, i32** %131, align 8
  br label %144

132:                                              ; preds = %116
  %133 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %134 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = call i64 @IS_ERR(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %140 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @PTR_ERR(i32* %141)
  store i32 %142, i32* %2, align 4
  br label %262

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %129
  %145 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %146 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %145, i32 0, i32 7
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %164, label %149

149:                                              ; preds = %144
  %150 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %151 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %156 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i32, i32* @ENOSYS, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %262

164:                                              ; preds = %154, %144
  %165 = load %struct.device*, %struct.device** %6, align 8
  %166 = call i8* @devm_clk_get(%struct.device* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %169 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %168, i32 0, i32 4
  store i32* %167, i32** %169, align 8
  %170 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %171 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @PTR_ERR(i32* %172)
  %174 = load i32, i32* @ENOENT, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %179 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %178, i32 0, i32 4
  store i32* null, i32** %179, align 8
  br label %192

180:                                              ; preds = %164
  %181 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %182 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = call i64 @IS_ERR(i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %188 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @PTR_ERR(i32* %189)
  store i32 %190, i32* %2, align 4
  br label %262

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191, %177
  %193 = load %struct.device*, %struct.device** %6, align 8
  %194 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %195 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %194, i32 0, i32 2
  store %struct.device* %193, %struct.device** %195, align 8
  %196 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %197 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %196, i32 0, i32 3
  %198 = call i32 @spin_lock_init(i32* %197)
  %199 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %200 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %199, i32 0, i32 1
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %204 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %203, i32 0, i32 2
  %205 = load %struct.device*, %struct.device** %204, align 8
  %206 = call i32 @dev_name(%struct.device* %205)
  %207 = call i32 @iommu_device_sysfs_add(i32* %200, %struct.device* %202, i32* null, i32 %206)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %192
  %211 = load i32, i32* %5, align 4
  store i32 %211, i32* %2, align 4
  br label %262

212:                                              ; preds = %192
  %213 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %214 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %213, i32 0, i32 1
  %215 = call i32 @iommu_device_set_ops(i32* %214, i32* @exynos_iommu_ops)
  %216 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %217 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %216, i32 0, i32 1
  %218 = load %struct.device*, %struct.device** %6, align 8
  %219 = getelementptr inbounds %struct.device, %struct.device* %218, i32 0, i32 0
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = call i32 @iommu_device_set_fwnode(i32* %217, i32* %221)
  %223 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %224 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %223, i32 0, i32 1
  %225 = call i32 @iommu_device_register(i32* %224)
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %5, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %212
  %229 = load i32, i32* %5, align 4
  store i32 %229, i32* %2, align 4
  br label %262

230:                                              ; preds = %212
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %233 = call i32 @platform_set_drvdata(%struct.platform_device* %231, %struct.sysmmu_drvdata* %232)
  %234 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %235 = call i32 @__sysmmu_get_version(%struct.sysmmu_drvdata* %234)
  %236 = load i64, i64* @PG_ENT_SHIFT, align 8
  %237 = icmp slt i64 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %230
  %239 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %7, align 8
  %240 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @MMU_MAJ_VER(i32 %241)
  %243 = icmp slt i32 %242, 5
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load i64, i64* @SYSMMU_PG_ENT_SHIFT, align 8
  store i64 %245, i64* @PG_ENT_SHIFT, align 8
  %246 = load i32, i32* @SYSMMU_LV1_PROT, align 4
  store i32 %246, i32* @LV1_PROT, align 4
  %247 = load i32, i32* @SYSMMU_LV2_PROT, align 4
  store i32 %247, i32* @LV2_PROT, align 4
  br label %252

248:                                              ; preds = %238
  %249 = load i64, i64* @SYSMMU_V5_PG_ENT_SHIFT, align 8
  store i64 %249, i64* @PG_ENT_SHIFT, align 8
  %250 = load i32, i32* @SYSMMU_V5_LV1_PROT, align 4
  store i32 %250, i32* @LV1_PROT, align 4
  %251 = load i32, i32* @SYSMMU_V5_LV2_PROT, align 4
  store i32 %251, i32* @LV2_PROT, align 4
  br label %252

252:                                              ; preds = %248, %244
  br label %253

253:                                              ; preds = %252, %230
  %254 = load %struct.device*, %struct.device** @dma_dev, align 8
  %255 = icmp ne %struct.device* %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  store %struct.device* %258, %struct.device** @dma_dev, align 8
  br label %259

259:                                              ; preds = %256, %253
  %260 = load %struct.device*, %struct.device** %6, align 8
  %261 = call i32 @pm_runtime_enable(%struct.device* %260)
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %259, %228, %210, %186, %159, %138, %110, %82, %55, %43, %33, %16
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.sysmmu_drvdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.sysmmu_drvdata*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.device*, i32*, i32) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32*) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sysmmu_drvdata*) #1

declare dso_local i32 @__sysmmu_get_version(%struct.sysmmu_drvdata*) #1

declare dso_local i32 @MMU_MAJ_VER(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
