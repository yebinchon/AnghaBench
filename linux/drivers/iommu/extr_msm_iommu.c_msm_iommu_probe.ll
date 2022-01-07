; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.resource = type { i32 }
%struct.msm_iommu_dev = type { i64, i32, i8*, i8*, i8*, i32, %struct.TYPE_9__*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"smmu_pclk\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"could not get smmu_pclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"could not prepare smmu_pclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"iommu_clk\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"could not get iommu_clk\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"could not prepare iommu_clk\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"could not get iommu base\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"qcom,ncb\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"could not get ncb\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Invalid PAR value detected\0A\00", align 1
@msm_iommu_fault_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"msm_iommu_secure_irpt_handler\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Request IRQ %d failed with ret=%d\0A\00", align 1
@qcom_iommu_devices = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"msm-smmu.%pa\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Could not add msm-smmu at %pa to sysfs\0A\00", align 1
@msm_iommu_ops = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"Could not register msm-smmu at %pa\0A\00", align 1
@platform_bus_type = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [47 x i8] c"device mapped at %p, irq %d with %d ctx banks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msm_iommu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_iommu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_iommu_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.msm_iommu_dev* @devm_kzalloc(%struct.TYPE_9__* %11, i32 64, i32 %12)
  store %struct.msm_iommu_dev* %13, %struct.msm_iommu_dev** %6, align 8
  %14 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %15 = icmp ne %struct.msm_iommu_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %278

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %23 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %22, i32 0, i32 6
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %23, align 8
  %24 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %25 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %24, i32 0, i32 8
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %28 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %27, i32 0, i32 6
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i8* @devm_clk_get(%struct.TYPE_9__* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %32 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %34 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %19
  %39 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %40 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %39, i32 0, i32 6
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = call i32 @dev_err(%struct.TYPE_9__* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %44 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %278

47:                                               ; preds = %19
  %48 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %49 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @clk_prepare(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %56 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %55, i32 0, i32 6
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @dev_err(%struct.TYPE_9__* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %278

60:                                               ; preds = %47
  %61 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %62 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %61, i32 0, i32 6
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = call i8* @devm_clk_get(%struct.TYPE_9__* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %66 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %68 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %60
  %73 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %74 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %73, i32 0, i32 6
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = call i32 @dev_err(%struct.TYPE_9__* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %78 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @clk_unprepare(i8* %79)
  %81 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %82 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %278

85:                                               ; preds = %60
  %86 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %87 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @clk_prepare(i8* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %94 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %93, i32 0, i32 6
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i32 @dev_err(%struct.TYPE_9__* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %98 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @clk_unprepare(i8* %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %278

102:                                              ; preds = %85
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load i32, i32* @IORESOURCE_MEM, align 4
  %105 = call %struct.resource* @platform_get_resource(%struct.platform_device* %103, i32 %104, i32 0)
  store %struct.resource* %105, %struct.resource** %4, align 8
  %106 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %107 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %106, i32 0, i32 6
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load %struct.resource*, %struct.resource** %4, align 8
  %110 = call i8* @devm_ioremap_resource(%struct.TYPE_9__* %108, %struct.resource* %109)
  %111 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %112 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %114 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @IS_ERR(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %102
  %119 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %120 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %119, i32 0, i32 6
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = call i32 @dev_err(%struct.TYPE_9__* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %123 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %124 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @PTR_ERR(i8* %125)
  store i32 %126, i32* %7, align 4
  br label %268

127:                                              ; preds = %102
  %128 = load %struct.resource*, %struct.resource** %4, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %5, align 4
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = call i64 @platform_get_irq(%struct.platform_device* %131, i32 0)
  %133 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %134 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %136 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load i32, i32* @ENODEV, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %268

142:                                              ; preds = %127
  %143 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %144 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %143, i32 0, i32 6
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = call i32 @of_property_read_u32(%struct.TYPE_8__* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %9)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %153 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %152, i32 0, i32 6
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 @dev_err(%struct.TYPE_9__* %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %268

156:                                              ; preds = %142
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %159 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %161 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %164 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @msm_iommu_reset(i8* %162, i32 %165)
  %167 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %168 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %167, i32 0, i32 4
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @SET_M(i8* %169, i32 0, i32 1)
  %171 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %172 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @SET_PAR(i8* %173, i32 0, i32 0)
  %175 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %176 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @SET_V2PCFG(i8* %177, i32 0, i32 1)
  %179 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %180 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %179, i32 0, i32 4
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @SET_V2PPR(i8* %181, i32 0, i32 0)
  %183 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %184 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @GET_PAR(i8* %185, i32 0)
  store i32 %186, i32* %8, align 4
  %187 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %188 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @SET_V2PCFG(i8* %189, i32 0, i32 0)
  %191 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %192 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %191, i32 0, i32 4
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @SET_M(i8* %193, i32 0, i32 0)
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %156
  %198 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %199 = load i32, i32* @ENODEV, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %7, align 4
  br label %268

201:                                              ; preds = %156
  %202 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %203 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %202, i32 0, i32 6
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %206 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @msm_iommu_fault_handler, align 4
  %209 = load i32, i32* @IRQF_ONESHOT, align 4
  %210 = load i32, i32* @IRQF_SHARED, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %213 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %204, i64 %207, i32* null, i32 %208, i32 %211, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), %struct.msm_iommu_dev* %212)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %201
  %217 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %218 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i64 %219, i32 %220)
  br label %268

222:                                              ; preds = %201
  %223 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %224 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %223, i32 0, i32 7
  %225 = call i32 @list_add(i32* %224, i32* @qcom_iommu_devices)
  %226 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %227 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %226, i32 0, i32 5
  %228 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %229 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %228, i32 0, i32 6
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = call i32 @iommu_device_sysfs_add(i32* %227, %struct.TYPE_9__* %230, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* %5)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %222
  %235 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32* %5)
  br label %268

236:                                              ; preds = %222
  %237 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %238 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %237, i32 0, i32 5
  %239 = call i32 @iommu_device_set_ops(i32* %238, i32* @msm_iommu_ops)
  %240 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %241 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %240, i32 0, i32 5
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = call i32 @iommu_device_set_fwnode(i32* %241, i32* %246)
  %248 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %249 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %248, i32 0, i32 5
  %250 = call i32 @iommu_device_register(i32* %249)
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %236
  %254 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32* %5)
  br label %268

255:                                              ; preds = %236
  %256 = call i32 @bus_set_iommu(i32* @platform_bus_type, i32* @msm_iommu_ops)
  %257 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %258 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %257, i32 0, i32 4
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %261 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %264 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i8* %259, i64 %262, i32 %265)
  %267 = load i32, i32* %7, align 4
  store i32 %267, i32* %2, align 4
  br label %278

268:                                              ; preds = %253, %234, %216, %197, %151, %139, %118
  %269 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %270 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @clk_unprepare(i8* %271)
  %273 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %6, align 8
  %274 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %273, i32 0, i32 2
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 @clk_unprepare(i8* %275)
  %277 = load i32, i32* %7, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %268, %255, %92, %72, %54, %38, %16
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.msm_iommu_dev* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @clk_unprepare(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @msm_iommu_reset(i8*, i32) #1

declare dso_local i32 @SET_M(i8*, i32, i32) #1

declare dso_local i32 @SET_PAR(i8*, i32, i32) #1

declare dso_local i32 @SET_V2PCFG(i8*, i32, i32) #1

declare dso_local i32 @SET_V2PPR(i8*, i32, i32) #1

declare dso_local i32 @GET_PAR(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i64, i32*, i32, i32, i8*, %struct.msm_iommu_dev*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.TYPE_9__*, i32*, i8*, i32*) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32*) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @bus_set_iommu(i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
