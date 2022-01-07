; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64, i32, i64 }
%struct.resource = type { i32 }
%struct.arm_smmu_device = type { i32, i32*, i32, i64, i32, %struct.device*, i32, i32, i32, i32, %struct.arm_smmu_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate arm_smmu_device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"found %d interrupts but expected at least %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to allocate %d irqs\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get irq index %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get clocks %d\0A\00", align 1
@ARM_SMMU_V2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"found only %d context irq(s) but %d required\0A\00", align 1
@arm_smmu_global_fault = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"arm-smmu global fault\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to request global IRQ %d (%u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"smmu.%pa\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to register iommu in sysfs\0A\00", align 1
@arm_smmu_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Failed to register iommu\0A\00", align 1
@using_legacy_binding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arm_smmu_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_device_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm_smmu_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.arm_smmu_device* @devm_kzalloc(%struct.device* %14, i32 72, i32 %15)
  store %struct.arm_smmu_device* %16, %struct.arm_smmu_device** %6, align 8
  %17 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %18 = icmp ne %struct.arm_smmu_device* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %321

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %27 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %26, i32 0, i32 5
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %35 = call i32 @arm_smmu_device_dt_probe(%struct.platform_device* %33, %struct.arm_smmu_device* %34)
  store i32 %35, i32* %10, align 4
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %39 = call i32 @arm_smmu_device_acpi_probe(%struct.platform_device* %37, %struct.arm_smmu_device* %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %2, align 4
  br label %321

45:                                               ; preds = %40
  %46 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %47 = call %struct.arm_smmu_device* @arm_smmu_impl_init(%struct.arm_smmu_device* %46)
  store %struct.arm_smmu_device* %47, %struct.arm_smmu_device** %6, align 8
  %48 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %49 = call i64 @IS_ERR(%struct.arm_smmu_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %53 = call i32 @PTR_ERR(%struct.arm_smmu_device* %52)
  store i32 %53, i32* %2, align 4
  br label %321

54:                                               ; preds = %45
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load i32, i32* @IORESOURCE_MEM, align 4
  %57 = call %struct.resource* @platform_get_resource(%struct.platform_device* %55, i32 %56, i32 0)
  store %struct.resource* %57, %struct.resource** %4, align 8
  %58 = load %struct.resource*, %struct.resource** %4, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load %struct.resource*, %struct.resource** %4, align 8
  %63 = call %struct.arm_smmu_device* @devm_ioremap_resource(%struct.device* %61, %struct.resource* %62)
  %64 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %65 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %64, i32 0, i32 10
  store %struct.arm_smmu_device* %63, %struct.arm_smmu_device** %65, align 8
  %66 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %67 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %66, i32 0, i32 10
  %68 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %67, align 8
  %69 = call i64 @IS_ERR(%struct.arm_smmu_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %54
  %72 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %73 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %72, i32 0, i32 10
  %74 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.arm_smmu_device* %74)
  store i32 %75, i32* %2, align 4
  br label %321

76:                                               ; preds = %54
  %77 = load %struct.resource*, %struct.resource** %4, align 8
  %78 = call i32 @resource_size(%struct.resource* %77)
  %79 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %80 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %100, %76
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load i32, i32* @IORESOURCE_IRQ, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call %struct.resource* @platform_get_resource(%struct.platform_device* %82, i32 %83, i32 %84)
  store %struct.resource* %85, %struct.resource** %4, align 8
  %86 = icmp ne %struct.resource* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %92 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %97 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %87
  br label %81

101:                                              ; preds = %81
  %102 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %103 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %110 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %112)
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %321

116:                                              ; preds = %101
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i32* @devm_kcalloc(%struct.device* %117, i32 %118, i32 4, i32 %119)
  %121 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %122 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %121, i32 0, i32 1
  store i32* %120, i32** %122, align 8
  %123 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %124 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %116
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %321

133:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %158, %133
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %134
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @platform_get_irq(%struct.platform_device* %139, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load %struct.device*, %struct.device** %7, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @ENODEV, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %321

150:                                              ; preds = %138
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %153 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  br label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %134

161:                                              ; preds = %134
  %162 = load %struct.device*, %struct.device** %7, align 8
  %163 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %164 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %163, i32 0, i32 8
  %165 = call i32 @devm_clk_bulk_get_all(%struct.device* %162, i32* %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load %struct.device*, %struct.device** %7, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %2, align 4
  br label %321

173:                                              ; preds = %161
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %176 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %178 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %181 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @clk_bulk_prepare_enable(i32 %179, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %173
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %2, align 4
  br label %321

188:                                              ; preds = %173
  %189 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %190 = call i32 @arm_smmu_device_cfg_probe(%struct.arm_smmu_device* %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %2, align 4
  br label %321

195:                                              ; preds = %188
  %196 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %197 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @ARM_SMMU_V2, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %226

201:                                              ; preds = %195
  %202 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %203 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %206 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = icmp sgt i32 %204, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %201
  %210 = load %struct.device*, %struct.device** %7, align 8
  %211 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %212 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %215 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %210, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %213, i32 %216)
  %218 = load i32, i32* @ENODEV, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %2, align 4
  br label %321

220:                                              ; preds = %201
  %221 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %222 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %225 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %220, %195
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %263, %226
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %230 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %266

233:                                              ; preds = %227
  %234 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %235 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %234, i32 0, i32 5
  %236 = load %struct.device*, %struct.device** %235, align 8
  %237 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %238 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @arm_smmu_global_fault, align 4
  %245 = load i32, i32* @IRQF_SHARED, align 4
  %246 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %247 = call i32 @devm_request_irq(%struct.device* %236, i32 %243, i32 %244, i32 %245, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), %struct.arm_smmu_device* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %233
  %251 = load %struct.device*, %struct.device** %7, align 8
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %254 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %251, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %252, i32 %259)
  %261 = load i32, i32* %10, align 4
  store i32 %261, i32* %2, align 4
  br label %321

262:                                              ; preds = %233
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  br label %227

266:                                              ; preds = %227
  %267 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %268 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %267, i32 0, i32 4
  %269 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %270 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %269, i32 0, i32 5
  %271 = load %struct.device*, %struct.device** %270, align 8
  %272 = call i32 @iommu_device_sysfs_add(i32* %268, %struct.device* %271, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %5)
  store i32 %272, i32* %10, align 4
  %273 = load i32, i32* %10, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %266
  %276 = load %struct.device*, %struct.device** %7, align 8
  %277 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %276, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %278 = load i32, i32* %10, align 4
  store i32 %278, i32* %2, align 4
  br label %321

279:                                              ; preds = %266
  %280 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %281 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %280, i32 0, i32 4
  %282 = call i32 @iommu_device_set_ops(i32* %281, i32* @arm_smmu_ops)
  %283 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %284 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %283, i32 0, i32 4
  %285 = load %struct.device*, %struct.device** %7, align 8
  %286 = getelementptr inbounds %struct.device, %struct.device* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @iommu_device_set_fwnode(i32* %284, i32 %287)
  %289 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %290 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %289, i32 0, i32 4
  %291 = call i32 @iommu_device_register(i32* %290)
  store i32 %291, i32* %10, align 4
  %292 = load i32, i32* %10, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %279
  %295 = load %struct.device*, %struct.device** %7, align 8
  %296 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %295, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %297 = load i32, i32* %10, align 4
  store i32 %297, i32* %2, align 4
  br label %321

298:                                              ; preds = %279
  %299 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %300 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %301 = call i32 @platform_set_drvdata(%struct.platform_device* %299, %struct.arm_smmu_device* %300)
  %302 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %303 = call i32 @arm_smmu_device_reset(%struct.arm_smmu_device* %302)
  %304 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %305 = call i32 @arm_smmu_test_smr_masks(%struct.arm_smmu_device* %304)
  %306 = load %struct.device*, %struct.device** %7, align 8
  %307 = getelementptr inbounds %struct.device, %struct.device* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %298
  %311 = load %struct.device*, %struct.device** %7, align 8
  %312 = call i32 @pm_runtime_set_active(%struct.device* %311)
  %313 = load %struct.device*, %struct.device** %7, align 8
  %314 = call i32 @pm_runtime_enable(%struct.device* %313)
  br label %315

315:                                              ; preds = %310, %298
  %316 = load i32, i32* @using_legacy_binding, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %315
  %319 = call i32 (...) @arm_smmu_bus_init()
  br label %320

320:                                              ; preds = %318, %315
  store i32 0, i32* %2, align 4
  br label %321

321:                                              ; preds = %320, %294, %275, %250, %209, %193, %186, %168, %144, %127, %106, %71, %51, %43, %19
  %322 = load i32, i32* %2, align 4
  ret i32 %322
}

declare dso_local %struct.arm_smmu_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @arm_smmu_device_dt_probe(%struct.platform_device*, %struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_device_acpi_probe(%struct.platform_device*, %struct.arm_smmu_device*) #1

declare dso_local %struct.arm_smmu_device* @arm_smmu_impl_init(%struct.arm_smmu_device*) #1

declare dso_local i64 @IS_ERR(%struct.arm_smmu_device*) #1

declare dso_local i32 @PTR_ERR(%struct.arm_smmu_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.arm_smmu_device* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_bulk_get_all(%struct.device*, i32*) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, i32) #1

declare dso_local i32 @arm_smmu_device_cfg_probe(%struct.arm_smmu_device*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.arm_smmu_device*) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.device*, i32*, i8*, i32*) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_device_reset(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_test_smr_masks(%struct.arm_smmu_device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @arm_smmu_bus_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
