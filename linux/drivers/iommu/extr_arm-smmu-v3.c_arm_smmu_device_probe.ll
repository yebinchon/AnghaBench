; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i64 }
%struct.resource = type { i32 }
%struct.arm_smmu_device = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, i32, %struct.device* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate arm_smmu_device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MMIO region too small (%pr)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"combined\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"eventq\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"priq\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gerror\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"smmu3.%pa\00", align 1
@arm_smmu_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to register iommu\0A\00", align 1
@platform_bus_type = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@amba_bustype = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@pci_bus_type = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arm_smmu_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_device_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arm_smmu_device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %9, align 8
  %13 = load %struct.device*, %struct.device** %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.arm_smmu_device* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.arm_smmu_device* %15, %struct.arm_smmu_device** %8, align 8
  %16 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %17 = icmp ne %struct.arm_smmu_device* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %9, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %191

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %25, i32 0, i32 6
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %34 = call i32 @arm_smmu_device_dt_probe(%struct.platform_device* %32, %struct.arm_smmu_device* %33)
  store i32 %34, i32* %5, align 4
  br label %46

35:                                               ; preds = %23
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %38 = call i32 @arm_smmu_device_acpi_probe(%struct.platform_device* %36, %struct.arm_smmu_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %191

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %6, align 8
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = call i64 @resource_size(%struct.resource* %55)
  %57 = add nsw i64 %56, 1
  %58 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %59 = call i64 @arm_smmu_resource_size(%struct.arm_smmu_device* %58)
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %46
  %62 = load %struct.device*, %struct.device** %9, align 8
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %191

67:                                               ; preds = %46
  %68 = load %struct.resource*, %struct.resource** %6, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = call i32 @devm_ioremap_resource(%struct.device* %71, %struct.resource* %72)
  %74 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %75 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %77 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %83 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %2, align 4
  br label %191

86:                                               ; preds = %67
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 @platform_get_irq_byname(%struct.platform_device* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %94 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %127

95:                                               ; preds = %86
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = call i32 @platform_get_irq_byname(%struct.platform_device* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %103 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = call i32 @platform_get_irq_byname(%struct.platform_device* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %114 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %106
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = call i32 @platform_get_irq_byname(%struct.platform_device* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %125 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %117
  br label %127

127:                                              ; preds = %126, %91
  %128 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %129 = call i32 @arm_smmu_device_hw_probe(%struct.arm_smmu_device* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %191

134:                                              ; preds = %127
  %135 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %136 = call i32 @arm_smmu_init_structures(%struct.arm_smmu_device* %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %191

141:                                              ; preds = %134
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %144 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.arm_smmu_device* %143)
  %145 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @arm_smmu_device_reset(%struct.arm_smmu_device* %145, i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %191

152:                                              ; preds = %141
  %153 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %154 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %153, i32 0, i32 2
  %155 = load %struct.device*, %struct.device** %9, align 8
  %156 = call i32 @iommu_device_sysfs_add(i32* %154, %struct.device* %155, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* %5, align 4
  store i32 %160, i32* %2, align 4
  br label %191

161:                                              ; preds = %152
  %162 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %163 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %162, i32 0, i32 2
  %164 = call i32 @iommu_device_set_ops(i32* %163, i32* @arm_smmu_ops)
  %165 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %166 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %165, i32 0, i32 2
  %167 = load %struct.device*, %struct.device** %9, align 8
  %168 = getelementptr inbounds %struct.device, %struct.device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @iommu_device_set_fwnode(i32* %166, i32 %169)
  %171 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %172 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %171, i32 0, i32 2
  %173 = call i32 @iommu_device_register(i32* %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %161
  %177 = load %struct.device*, %struct.device** %9, align 8
  %178 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %179 = load i32, i32* %5, align 4
  store i32 %179, i32* %2, align 4
  br label %191

180:                                              ; preds = %161
  %181 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @platform_bus_type, i32 0, i32 0), align 8
  %182 = icmp ne i32* %181, @arm_smmu_ops
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = call i32 @bus_set_iommu(%struct.TYPE_13__* @platform_bus_type, i32* @arm_smmu_ops)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i32, i32* %5, align 4
  store i32 %188, i32* %2, align 4
  br label %191

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %180
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %187, %176, %159, %150, %139, %132, %81, %61, %43, %18
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.arm_smmu_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @arm_smmu_device_dt_probe(%struct.platform_device*, %struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_device_acpi_probe(%struct.platform_device*, %struct.arm_smmu_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i64 @arm_smmu_resource_size(%struct.arm_smmu_device*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @arm_smmu_device_hw_probe(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_init_structures(%struct.arm_smmu_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_device_reset(%struct.arm_smmu_device*, i32) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.device*, i32*, i8*, i32*) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @bus_set_iommu(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
