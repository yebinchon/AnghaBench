; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.intc_irqpin_config = type { i32, i64 }
%struct.intc_irqpin_priv = type { i32, i32, i32, i32, %struct.intc_irqpin_priv*, %struct.irq_chip, %struct.intc_irqpin_iomem*, %struct.intc_irqpin_priv*, %struct.platform_device* }
%struct.irq_chip = type { i8*, void (%struct.irq_data*)*, void (%struct.irq_data.0*)*, i32, i32, i32, %struct.device* }
%struct.irq_data = type opaque
%struct.irq_data.0 = type opaque
%struct.intc_irqpin_iomem = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }
%struct.irq_data.1 = type opaque
%struct.irq_data.2 = type opaque
%struct.irq_data.3 = type opaque
%struct.irq_data.4 = type opaque
%struct.irq_data.5 = type opaque
%struct.irq_data.6 = type opaque
%struct.irq_data.7 = type opaque
%struct.irq_data.8 = type opaque

@INTC_IRQPIN_REG_NR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sense-bitfield-width\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"control-parent\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@INTC_IRQPIN_REG_NR_MANDATORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"not enough IOMEM resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTC_IRQPIN_MAX = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"not enough IRQ resources\0A\00", align 1
@intc_irqpin_read8 = common dso_local global i32 0, align 4
@intc_irqpin_write8 = common dso_local global i32 0, align 4
@intc_irqpin_read32 = common dso_local global i32 0, align 4
@intc_irqpin_write32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"IOMEM size mismatch\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to remap IOMEM\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTC_IRQPIN_REG_IRLM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"unable to select IRLM mode\0A\00", align 1
@INTC_IRQPIN_REG_SOURCE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"intc-irqpin\00", align 1
@intc_irqpin_irq_set_type = common dso_local global i32 0, align 4
@intc_irqpin_irq_set_wake = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@intc_irqpin_irq_domain_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"cannot initialize irq domain\0A\00", align 1
@intc_irqpin_shared_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"failed to request low IRQ\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@intc_irqpin_irq_handler = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"driving %d irqs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intc_irqpin_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irqpin_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intc_irqpin_config*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.intc_irqpin_priv*, align 8
  %7 = alloca %struct.intc_irqpin_iomem*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.irq_chip*, align 8
  %12 = alloca void (%struct.irq_data.1*)*, align 8
  %13 = alloca void (%struct.irq_data.2*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %5, align 8
  %23 = load i32, i32* @INTC_IRQPIN_REG_NR, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca %struct.resource*, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i8* @dev_name(%struct.device* %27)
  store i8* %28, i8** %14, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.intc_irqpin_priv* @devm_kzalloc(%struct.device* %29, i32 96, i32 %30)
  store %struct.intc_irqpin_priv* %31, %struct.intc_irqpin_priv** %6, align 8
  %32 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %33 = icmp ne %struct.intc_irqpin_priv* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %432

37:                                               ; preds = %1
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %42 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %41, i32 0, i32 0
  %43 = call i32 @of_property_read_u32(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %42)
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @of_property_read_bool(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %15, align 4
  %48 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %49 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %37
  %53 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %54 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %53, i32 0, i32 0
  store i32 4, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %37
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %58 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %57, i32 0, i32 8
  store %struct.platform_device* %56, %struct.platform_device** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %59, %struct.intc_irqpin_priv* %60)
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call %struct.intc_irqpin_config* @of_device_get_match_data(%struct.device* %62)
  store %struct.intc_irqpin_config* %63, %struct.intc_irqpin_config** %4, align 8
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @pm_runtime_enable(%struct.device* %64)
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = call i32 @pm_runtime_get_sync(%struct.device* %66)
  %68 = mul nuw i64 8, %24
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(%struct.resource** %26, i32 0, i32 %69)
  store i32 0, i32* %19, align 4
  br label %71

71:                                               ; preds = %98, %55
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* @INTC_IRQPIN_REG_NR, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load i32, i32* @IORESOURCE_MEM, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call %struct.resource* @platform_get_resource(%struct.platform_device* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.resource*, %struct.resource** %26, i64 %81
  store %struct.resource* %79, %struct.resource** %82, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.resource*, %struct.resource** %26, i64 %84
  %86 = load %struct.resource*, %struct.resource** %85, align 8
  %87 = icmp ne %struct.resource* %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* @INTC_IRQPIN_REG_NR_MANDATORY, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %18, align 4
  br label %426

97:                                               ; preds = %88, %75
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %19, align 4
  br label %71

101:                                              ; preds = %71
  store i32 0, i32* %19, align 4
  br label %102

102:                                              ; preds = %133, %101
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* @INTC_IRQPIN_MAX, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %136

106:                                              ; preds = %102
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load i32, i32* @IORESOURCE_IRQ, align 4
  %109 = load i32, i32* %19, align 4
  %110 = call %struct.resource* @platform_get_resource(%struct.platform_device* %107, i32 %108, i32 %109)
  store %struct.resource* %110, %struct.resource** %10, align 8
  %111 = load %struct.resource*, %struct.resource** %10, align 8
  %112 = icmp ne %struct.resource* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %106
  br label %136

114:                                              ; preds = %106
  %115 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %116 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %117 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %116, i32 0, i32 4
  %118 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %117, align 8
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %118, i64 %120
  %122 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %121, i32 0, i32 7
  store %struct.intc_irqpin_priv* %115, %struct.intc_irqpin_priv** %122, align 8
  %123 = load %struct.resource*, %struct.resource** %10, align 8
  %124 = getelementptr inbounds %struct.resource, %struct.resource* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %127 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %126, i32 0, i32 4
  %128 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %128, i64 %130
  %132 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  br label %133

133:                                              ; preds = %114
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %19, align 4
  br label %102

136:                                              ; preds = %113, %102
  %137 = load i32, i32* %19, align 4
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ult i32 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = call i32 @dev_err(%struct.device* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %18, align 4
  br label %426

145:                                              ; preds = %136
  store i32 0, i32* %19, align 4
  br label %146

146:                                              ; preds = %218, %145
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* @INTC_IRQPIN_REG_NR, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %221

150:                                              ; preds = %146
  %151 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %152 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %151, i32 0, i32 6
  %153 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %153, i64 %155
  store %struct.intc_irqpin_iomem* %156, %struct.intc_irqpin_iomem** %7, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.resource*, %struct.resource** %26, i64 %158
  %160 = load %struct.resource*, %struct.resource** %159, align 8
  %161 = icmp ne %struct.resource* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %150
  br label %218

163:                                              ; preds = %150
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.resource*, %struct.resource** %26, i64 %165
  %167 = load %struct.resource*, %struct.resource** %166, align 8
  %168 = call i32 @resource_size(%struct.resource* %167)
  switch i32 %168, label %187 [
    i32 1, label %169
    i32 4, label %178
  ]

169:                                              ; preds = %163
  %170 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %171 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %170, i32 0, i32 0
  store i32 8, i32* %171, align 4
  %172 = load i32, i32* @intc_irqpin_read8, align 4
  %173 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %174 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @intc_irqpin_write8, align 4
  %176 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %177 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  br label %192

178:                                              ; preds = %163
  %179 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %180 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %179, i32 0, i32 0
  store i32 32, i32* %180, align 4
  %181 = load i32, i32* @intc_irqpin_read32, align 4
  %182 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %183 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @intc_irqpin_write32, align 4
  %185 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %186 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  br label %192

187:                                              ; preds = %163
  %188 = load %struct.device*, %struct.device** %5, align 8
  %189 = call i32 @dev_err(%struct.device* %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %18, align 4
  br label %426

192:                                              ; preds = %178, %169
  %193 = load %struct.device*, %struct.device** %5, align 8
  %194 = load i32, i32* %19, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.resource*, %struct.resource** %26, i64 %195
  %197 = load %struct.resource*, %struct.resource** %196, align 8
  %198 = getelementptr inbounds %struct.resource, %struct.resource* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %19, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.resource*, %struct.resource** %26, i64 %201
  %203 = load %struct.resource*, %struct.resource** %202, align 8
  %204 = call i32 @resource_size(%struct.resource* %203)
  %205 = call i32 @devm_ioremap_nocache(%struct.device* %193, i32 %199, i32 %204)
  %206 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %207 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %209 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %192
  %213 = load %struct.device*, %struct.device** %5, align 8
  %214 = call i32 @dev_err(%struct.device* %213, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %215 = load i32, i32* @ENXIO, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %18, align 4
  br label %426

217:                                              ; preds = %192
  br label %218

218:                                              ; preds = %217, %162
  %219 = load i32, i32* %19, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %19, align 4
  br label %146

221:                                              ; preds = %146
  %222 = load %struct.intc_irqpin_config*, %struct.intc_irqpin_config** %4, align 8
  %223 = icmp ne %struct.intc_irqpin_config* %222, null
  br i1 %223, label %224, label %245

224:                                              ; preds = %221
  %225 = load %struct.intc_irqpin_config*, %struct.intc_irqpin_config** %4, align 8
  %226 = getelementptr inbounds %struct.intc_irqpin_config, %struct.intc_irqpin_config* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %224
  %230 = load i64, i64* @INTC_IRQPIN_REG_IRLM, align 8
  %231 = getelementptr inbounds %struct.resource*, %struct.resource** %26, i64 %230
  %232 = load %struct.resource*, %struct.resource** %231, align 8
  %233 = icmp ne %struct.resource* %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %236 = load i64, i64* @INTC_IRQPIN_REG_IRLM, align 8
  %237 = load %struct.intc_irqpin_config*, %struct.intc_irqpin_config** %4, align 8
  %238 = getelementptr inbounds %struct.intc_irqpin_config, %struct.intc_irqpin_config* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @intc_irqpin_read_modify_write(%struct.intc_irqpin_priv* %235, i64 %236, i32 %239, i32 1, i32 1)
  br label %244

241:                                              ; preds = %229
  %242 = load %struct.device*, %struct.device** %5, align 8
  %243 = call i32 @dev_warn(%struct.device* %242, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %234
  br label %245

245:                                              ; preds = %244, %224, %221
  store i32 0, i32* %19, align 4
  br label %246

246:                                              ; preds = %254, %245
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp ult i32 %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %246
  %251 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %252 = load i32, i32* %19, align 4
  %253 = call i32 @intc_irqpin_mask_unmask_prio(%struct.intc_irqpin_priv* %251, i32 %252, i32 1)
  br label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %19, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %19, align 4
  br label %246

257:                                              ; preds = %246
  %258 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %259 = load i32, i32* @INTC_IRQPIN_REG_SOURCE, align 4
  %260 = call i32 @intc_irqpin_write(%struct.intc_irqpin_priv* %258, i32 %259, i32 0)
  %261 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %262 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %261, i32 0, i32 4
  %263 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %262, align 8
  %264 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %263, i64 0
  %265 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %17, align 4
  %267 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %268 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %267, i32 0, i32 2
  store i32 1, i32* %268, align 8
  store i32 1, i32* %19, align 4
  br label %269

269:                                              ; preds = %288, %257
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %16, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %291

273:                                              ; preds = %269
  %274 = load i32, i32* %17, align 4
  %275 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %276 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %275, i32 0, i32 4
  %277 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %276, align 8
  %278 = load i32, i32* %19, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %277, i64 %279
  %281 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %274, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %273
  %285 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %286 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %285, i32 0, i32 2
  store i32 0, i32* %286, align 8
  br label %291

287:                                              ; preds = %273
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %19, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %19, align 4
  br label %269

291:                                              ; preds = %284, %269
  %292 = load i32, i32* %15, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  store void (%struct.irq_data.1*)* bitcast (void (%struct.irq_data.3*)* @intc_irqpin_irq_enable_force to void (%struct.irq_data.1*)*), void (%struct.irq_data.1*)** %12, align 8
  store void (%struct.irq_data.2*)* bitcast (void (%struct.irq_data.4*)* @intc_irqpin_irq_disable_force to void (%struct.irq_data.2*)*), void (%struct.irq_data.2*)** %13, align 8
  br label %303

295:                                              ; preds = %291
  %296 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %297 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %295
  store void (%struct.irq_data.1*)* bitcast (void (%struct.irq_data.5*)* @intc_irqpin_irq_enable to void (%struct.irq_data.1*)*), void (%struct.irq_data.1*)** %12, align 8
  store void (%struct.irq_data.2*)* bitcast (void (%struct.irq_data.6*)* @intc_irqpin_irq_disable to void (%struct.irq_data.2*)*), void (%struct.irq_data.2*)** %13, align 8
  br label %302

301:                                              ; preds = %295
  store void (%struct.irq_data.1*)* bitcast (void (%struct.irq_data.7*)* @intc_irqpin_shared_irq_enable to void (%struct.irq_data.1*)*), void (%struct.irq_data.1*)** %12, align 8
  store void (%struct.irq_data.2*)* bitcast (void (%struct.irq_data.8*)* @intc_irqpin_shared_irq_disable to void (%struct.irq_data.2*)*), void (%struct.irq_data.2*)** %13, align 8
  br label %302

302:                                              ; preds = %301, %300
  br label %303

303:                                              ; preds = %302, %294
  %304 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %305 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %304, i32 0, i32 5
  store %struct.irq_chip* %305, %struct.irq_chip** %11, align 8
  %306 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  %307 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %306, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %307, align 8
  %308 = load %struct.device*, %struct.device** %5, align 8
  %309 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  %310 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %309, i32 0, i32 6
  store %struct.device* %308, %struct.device** %310, align 8
  %311 = load void (%struct.irq_data.2*)*, void (%struct.irq_data.2*)** %13, align 8
  %312 = bitcast void (%struct.irq_data.2*)* %311 to void (%struct.irq_data*)*
  %313 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  %314 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %313, i32 0, i32 1
  store void (%struct.irq_data*)* %312, void (%struct.irq_data*)** %314, align 8
  %315 = load void (%struct.irq_data.1*)*, void (%struct.irq_data.1*)** %12, align 8
  %316 = bitcast void (%struct.irq_data.1*)* %315 to void (%struct.irq_data.0*)*
  %317 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  %318 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %317, i32 0, i32 2
  store void (%struct.irq_data.0*)* %316, void (%struct.irq_data.0*)** %318, align 8
  %319 = load i32, i32* @intc_irqpin_irq_set_type, align 4
  %320 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  %321 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %320, i32 0, i32 5
  store i32 %319, i32* %321, align 8
  %322 = load i32, i32* @intc_irqpin_irq_set_wake, align 4
  %323 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  %324 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %323, i32 0, i32 4
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %326 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  %327 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 8
  %328 = load %struct.device*, %struct.device** %5, align 8
  %329 = getelementptr inbounds %struct.device, %struct.device* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %16, align 4
  %332 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %333 = call i32 @irq_domain_add_simple(i32 %330, i32 %331, i32 0, i32* @intc_irqpin_irq_domain_ops, %struct.intc_irqpin_priv* %332)
  %334 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %335 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %334, i32 0, i32 3
  store i32 %333, i32* %335, align 4
  %336 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %337 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %303
  %341 = load i32, i32* @ENXIO, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %18, align 4
  %343 = load %struct.device*, %struct.device** %5, align 8
  %344 = call i32 @dev_err(%struct.device* %343, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %426

345:                                              ; preds = %303
  %346 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %347 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %370

350:                                              ; preds = %345
  %351 = load %struct.device*, %struct.device** %5, align 8
  %352 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %353 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %352, i32 0, i32 4
  %354 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %353, align 8
  %355 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %354, i64 0
  %356 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @intc_irqpin_shared_irq_handler, align 4
  %359 = load i32, i32* @IRQF_SHARED, align 4
  %360 = load i8*, i8** %14, align 8
  %361 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %362 = call i64 @devm_request_irq(%struct.device* %351, i32 %357, i32 %358, i32 %359, i8* %360, %struct.intc_irqpin_priv* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %350
  %365 = load %struct.device*, %struct.device** %5, align 8
  %366 = call i32 @dev_err(%struct.device* %365, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %367 = load i32, i32* @ENOENT, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %18, align 4
  br label %421

369:                                              ; preds = %350
  br label %405

370:                                              ; preds = %345
  store i32 0, i32* %19, align 4
  br label %371

371:                                              ; preds = %401, %370
  %372 = load i32, i32* %19, align 4
  %373 = load i32, i32* %16, align 4
  %374 = icmp ult i32 %372, %373
  br i1 %374, label %375, label %404

375:                                              ; preds = %371
  %376 = load %struct.device*, %struct.device** %5, align 8
  %377 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %378 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %377, i32 0, i32 4
  %379 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %378, align 8
  %380 = load i32, i32* %19, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %379, i64 %381
  %383 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @intc_irqpin_irq_handler, align 4
  %386 = load i8*, i8** %14, align 8
  %387 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %388 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %387, i32 0, i32 4
  %389 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %388, align 8
  %390 = load i32, i32* %19, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %389, i64 %391
  %393 = call i64 @devm_request_irq(%struct.device* %376, i32 %384, i32 %385, i32 0, i8* %386, %struct.intc_irqpin_priv* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %375
  %396 = load %struct.device*, %struct.device** %5, align 8
  %397 = call i32 @dev_err(%struct.device* %396, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %398 = load i32, i32* @ENOENT, align 4
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %18, align 4
  br label %421

400:                                              ; preds = %375
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %19, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %19, align 4
  br label %371

404:                                              ; preds = %371
  br label %405

405:                                              ; preds = %404, %369
  store i32 0, i32* %19, align 4
  br label %406

406:                                              ; preds = %414, %405
  %407 = load i32, i32* %19, align 4
  %408 = load i32, i32* %16, align 4
  %409 = icmp ult i32 %407, %408
  br i1 %409, label %410, label %417

410:                                              ; preds = %406
  %411 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %412 = load i32, i32* %19, align 4
  %413 = call i32 @intc_irqpin_mask_unmask_prio(%struct.intc_irqpin_priv* %411, i32 %412, i32 0)
  br label %414

414:                                              ; preds = %410
  %415 = load i32, i32* %19, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %19, align 4
  br label %406

417:                                              ; preds = %406
  %418 = load %struct.device*, %struct.device** %5, align 8
  %419 = load i32, i32* %16, align 4
  %420 = call i32 @dev_info(%struct.device* %418, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %419)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %432

421:                                              ; preds = %395, %364
  %422 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %6, align 8
  %423 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @irq_domain_remove(i32 %424)
  br label %426

426:                                              ; preds = %421, %340, %212, %187, %140, %92
  %427 = load %struct.device*, %struct.device** %5, align 8
  %428 = call i32 @pm_runtime_put(%struct.device* %427)
  %429 = load %struct.device*, %struct.device** %5, align 8
  %430 = call i32 @pm_runtime_disable(%struct.device* %429)
  %431 = load i32, i32* %18, align 4
  store i32 %431, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %432

432:                                              ; preds = %426, %417, %34
  %433 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %433)
  %434 = load i32, i32* %2, align 4
  ret i32 %434
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @dev_name(%struct.device*) #2

declare dso_local %struct.intc_irqpin_priv* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #2

declare dso_local i32 @of_property_read_bool(i32, i8*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.intc_irqpin_priv*) #2

declare dso_local %struct.intc_irqpin_config* @of_device_get_match_data(%struct.device*) #2

declare dso_local i32 @pm_runtime_enable(%struct.device*) #2

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #2

declare dso_local i32 @memset(%struct.resource**, i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local i32 @devm_ioremap_nocache(%struct.device*, i32, i32) #2

declare dso_local i32 @intc_irqpin_read_modify_write(%struct.intc_irqpin_priv*, i64, i32, i32, i32) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @intc_irqpin_mask_unmask_prio(%struct.intc_irqpin_priv*, i32, i32) #2

declare dso_local i32 @intc_irqpin_write(%struct.intc_irqpin_priv*, i32, i32) #2

declare dso_local void @intc_irqpin_irq_enable_force(%struct.irq_data.3*) #2

declare dso_local void @intc_irqpin_irq_disable_force(%struct.irq_data.4*) #2

declare dso_local void @intc_irqpin_irq_enable(%struct.irq_data.5*) #2

declare dso_local void @intc_irqpin_irq_disable(%struct.irq_data.6*) #2

declare dso_local void @intc_irqpin_shared_irq_enable(%struct.irq_data.7*) #2

declare dso_local void @intc_irqpin_shared_irq_disable(%struct.irq_data.8*) #2

declare dso_local i32 @irq_domain_add_simple(i32, i32, i32, i32*, %struct.intc_irqpin_priv*) #2

declare dso_local i64 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.intc_irqpin_priv*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #2

declare dso_local i32 @irq_domain_remove(i32) #2

declare dso_local i32 @pm_runtime_put(%struct.device*) #2

declare dso_local i32 @pm_runtime_disable(%struct.device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
