; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ipmmu_vmsa_device = type { i32, %struct.TYPE_13__*, i32, %struct.ipmmu_vmsa_device*, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i64, i32, i64, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot allocate device data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IPMMU_CTX_MAX = common dso_local global i32 0, align 4
@IPMMU_CTX_INVALID = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IM_NS_ALIAS_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"renesas,ipmmu-main\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ipmmu_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to request IRQ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"IPMMU context 0 is reserved\0A\00", align 1
@ipmmu_ops = common dso_local global i32 0, align 4
@platform_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ipmmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ipmmu_vmsa_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipmmu_vmsa_device* @devm_kzalloc(%struct.TYPE_14__* %9, i32 56, i32 %10)
  store %struct.ipmmu_vmsa_device* %11, %struct.ipmmu_vmsa_device** %4, align 8
  %12 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %13 = icmp ne %struct.ipmmu_vmsa_device* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %220

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %24 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %23, i32 0, i32 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %24, align 8
  %25 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %26 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %25, i32 0, i32 7
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %29 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IPMMU_CTX_MAX, align 4
  %32 = call i32 @bitmap_zero(i32 %30, i32 %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call %struct.TYPE_13__* @of_device_get_match_data(%struct.TYPE_14__* %34)
  %36 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %37 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %36, i32 0, i32 1
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %37, align 8
  %38 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %39 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IPMMU_CTX_INVALID, align 4
  %42 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %43 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memset(i32 %40, i32 %41, i32 %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @DMA_BIT_MASK(i32 40)
  %51 = call i32 @dma_set_mask_and_coherent(%struct.TYPE_14__* %49, i32 %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %5, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = call i32 @devm_ioremap_resource(%struct.TYPE_14__* %56, %struct.resource* %57)
  %59 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %60 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %62 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %20
  %67 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %68 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %220

71:                                               ; preds = %20
  %72 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %73 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i64, i64* @IM_NS_ALIAS_OFFSET, align 8
  %80 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %81 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  br label %86

86:                                               ; preds = %78, %71
  %87 = load i32, i32* @IPMMU_CTX_MAX, align 4
  %88 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %89 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @min(i32 %87, i32 %92)
  %94 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %95 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %97 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %86
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = call i32 @of_find_property(%struct.TYPE_12__* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %102, %86
  %110 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %111 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %112 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %111, i32 0, i32 3
  store %struct.ipmmu_vmsa_device* %110, %struct.ipmmu_vmsa_device** %112, align 8
  br label %117

113:                                              ; preds = %102
  %114 = call %struct.ipmmu_vmsa_device* (...) @ipmmu_find_root()
  %115 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %116 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %115, i32 0, i32 3
  store %struct.ipmmu_vmsa_device* %114, %struct.ipmmu_vmsa_device** %116, align 8
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %119 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %118, i32 0, i32 3
  %120 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %119, align 8
  %121 = icmp ne %struct.ipmmu_vmsa_device* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @EPROBE_DEFER, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %220

125:                                              ; preds = %117
  %126 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %127 = call i64 @ipmmu_is_root(%struct.ipmmu_vmsa_device* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %172

129:                                              ; preds = %125
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = call i32 @platform_get_irq(%struct.platform_device* %130, i32 0)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %220

136:                                              ; preds = %129
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @ipmmu_irq, align 4
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 @dev_name(%struct.TYPE_14__* %142)
  %144 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %145 = call i32 @devm_request_irq(%struct.TYPE_14__* %138, i32 %139, i32 %140, i32 0, i32 %143, %struct.ipmmu_vmsa_device* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %136
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %220

154:                                              ; preds = %136
  %155 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %156 = call i32 @ipmmu_device_reset(%struct.ipmmu_vmsa_device* %155)
  %157 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %158 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %157, i32 0, i32 1
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %154
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 @dev_info(%struct.TYPE_14__* %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %167 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %168 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @set_bit(i32 0, i32 %169)
  br label %171

171:                                              ; preds = %163, %154
  br label %172

172:                                              ; preds = %171, %125
  %173 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %174 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %173, i32 0, i32 1
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %181 = call i64 @ipmmu_is_root(%struct.ipmmu_vmsa_device* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %216, label %183

183:                                              ; preds = %179, %172
  %184 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %185 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %184, i32 0, i32 0
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32 @dev_name(%struct.TYPE_14__* %189)
  %191 = call i32 @iommu_device_sysfs_add(i32* %185, %struct.TYPE_14__* %187, i32* null, i32 %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i32, i32* %7, align 4
  store i32 %195, i32* %2, align 4
  br label %220

196:                                              ; preds = %183
  %197 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %198 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %197, i32 0, i32 0
  %199 = call i32 @iommu_device_set_ops(i32* %198, i32* @ipmmu_ops)
  %200 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %201 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %200, i32 0, i32 0
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = call i32 @iommu_device_set_fwnode(i32* %201, i32* %206)
  %208 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %209 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %208, i32 0, i32 0
  %210 = call i32 @iommu_device_register(i32* %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %196
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %2, align 4
  br label %220

215:                                              ; preds = %196
  br label %216

216:                                              ; preds = %215, %179
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %219 = call i32 @platform_set_drvdata(%struct.platform_device* %217, %struct.ipmmu_vmsa_device* %218)
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %216, %213, %194, %148, %134, %122, %66, %14
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.ipmmu_vmsa_device* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local %struct.TYPE_13__* @of_device_get_match_data(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @of_find_property(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local %struct.ipmmu_vmsa_device* @ipmmu_find_root(...) #1

declare dso_local i64 @ipmmu_is_root(%struct.ipmmu_vmsa_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.ipmmu_vmsa_device*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @ipmmu_device_reset(%struct.ipmmu_vmsa_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32*) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ipmmu_vmsa_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
