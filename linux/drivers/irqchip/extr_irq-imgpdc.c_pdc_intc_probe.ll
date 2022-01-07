; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_pdc_intc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_pdc_intc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pdc_intc_priv = type { i32, i32, i32*, i32, i32, i64, i32 }
%struct.resource = type { i32 }
%struct.irq_chip_generic = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }

@ENOENT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot find registers resource\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot allocate device data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"num-perips\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"No num-perips node property found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYS0_HWIRQ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"num-perips (%u) out of range\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"num-syswakes\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"No num-syswakes node property found\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"num-syswakes (%u) out of range\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"cannot allocate perip IRQ list\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"surplus perip IRQs detected\0A\00", align 1
@irq_generic_chip_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"cannot add IRQ domain\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pdc\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_GC_INIT_NESTED_LOCK = common dso_local global i32 0, align 4
@PDC_IRQ_ROUTE = common dso_local global i8* null, align 8
@perip_irq_mask = common dso_local global i8* null, align 8
@perip_irq_unmask = common dso_local global i8* null, align 8
@pdc_irq_set_wake = common dso_local global i8* null, align 8
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@PDC_IRQ_CLEAR = common dso_local global i8* null, align 8
@PDC_IRQ_ENABLE = common dso_local global i8* null, align 8
@irq_gc_ack_set_bit = common dso_local global i8* null, align 8
@irq_gc_mask_clr_bit = common dso_local global i8* null, align 8
@irq_gc_mask_set_bit = common dso_local global i8* null, align 8
@syswake_irq_set_type = common dso_local global i8* null, align 8
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i8* null, align 8
@IRQ_TYPE_LEVEL_MASK = common dso_local global i32 0, align 4
@pdc_intc_perip_isr = common dso_local global i32 0, align 4
@pdc_intc_syswake_isr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [65 x i8] c"PDC IRQ controller initialised (%u perip IRQs, %u syswake IRQs)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pdc_intc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_intc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pdc_intc_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.irq_chip_generic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %465

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = icmp eq %struct.resource* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %465

33:                                               ; preds = %21
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.pdc_intc_priv* @devm_kzalloc(%struct.TYPE_12__* %35, i32 40, i32 %36)
  store %struct.pdc_intc_priv* %37, %struct.pdc_intc_priv** %4, align 8
  %38 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %39 = icmp ne %struct.pdc_intc_priv* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %465

46:                                               ; preds = %33
  %47 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %48 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %47, i32 0, i32 6
  %49 = call i32 @raw_spin_lock_init(i32* %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %52 = call i32 @platform_set_drvdata(%struct.platform_device* %50, %struct.pdc_intc_priv* %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.resource*, %struct.resource** %6, align 8
  %59 = call i32 @resource_size(%struct.resource* %58)
  %60 = call i64 @devm_ioremap(%struct.TYPE_12__* %54, i32 %57, i32 %59)
  %61 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %62 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %64 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %46
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %465

70:                                               ; preds = %46
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = call i32 @of_property_read_u32(%struct.device_node* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* %11)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %465

81:                                               ; preds = %70
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @SYS0_HWIRQ, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %465

92:                                               ; preds = %81
  %93 = load i64, i64* %11, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %96 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.device_node*, %struct.device_node** %5, align 8
  %98 = call i32 @of_property_read_u32(%struct.device_node* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64* %11)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %465

107:                                              ; preds = %92
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @SYS0_HWIRQ, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load i64, i64* %11, align 8
  %115 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %465

118:                                              ; preds = %107
  %119 = load i64, i64* %11, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %122 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %126 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i32* @devm_kcalloc(%struct.TYPE_12__* %124, i32 4, i32 %127, i32 %128)
  %130 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %131 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  %132 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %133 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %118
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %465

142:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %166, %142
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %146 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ult i32 %144, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %143
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load i32, i32* %8, align 4
  %152 = add i32 1, %151
  %153 = call i32 @platform_get_irq(%struct.platform_device* %150, i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %2, align 4
  br label %465

158:                                              ; preds = %149
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %161 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %8, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %143

169:                                              ; preds = %143
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add i32 1, %171
  %173 = call i32 @platform_get_irq(%struct.platform_device* %170, i32 %172)
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %465

181:                                              ; preds = %169
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = call i32 @platform_get_irq(%struct.platform_device* %182, i32 0)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %2, align 4
  br label %465

188:                                              ; preds = %181
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %191 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 8
  %192 = load %struct.device_node*, %struct.device_node** %5, align 8
  %193 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %194 = call i32 @irq_domain_add_linear(%struct.device_node* %192, i32 16, i32* @irq_generic_chip_ops, %struct.pdc_intc_priv* %193)
  %195 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %196 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  %197 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %198 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i64 @unlikely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %188
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %207, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %465

211:                                              ; preds = %188
  %212 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %213 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @handle_level_irq, align 4
  %216 = load i32, i32* @IRQ_GC_INIT_NESTED_LOCK, align 4
  %217 = call i32 @irq_alloc_domain_generic_chips(i32 %214, i32 8, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %215, i32 0, i32 0, i32 %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %459

221:                                              ; preds = %211
  %222 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %223 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32 %224, i32 0)
  store %struct.irq_chip_generic* %225, %struct.irq_chip_generic** %7, align 8
  %226 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %227 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @BIT(i32 %228)
  %230 = sub nsw i32 %229, 1
  %231 = xor i32 %230, -1
  %232 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %233 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %235 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %238 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %237, i32 0, i32 2
  store i64 %236, i64* %238, align 8
  %239 = load i8*, i8** @PDC_IRQ_ROUTE, align 8
  %240 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %241 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %240, i32 0, i32 1
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  store i8* %239, i8** %245, align 8
  %246 = load i8*, i8** @perip_irq_mask, align 8
  %247 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %248 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %247, i32 0, i32 1
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  store i8* %246, i8** %252, align 8
  %253 = load i8*, i8** @perip_irq_unmask, align 8
  %254 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %255 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %254, i32 0, i32 1
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 3
  store i8* %253, i8** %259, align 8
  %260 = load i8*, i8** @pdc_irq_set_wake, align 8
  %261 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %262 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %261, i32 0, i32 1
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i64 0
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  store i8* %260, i8** %266, align 8
  %267 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %268 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32 %269, i32 8)
  store %struct.irq_chip_generic* %270, %struct.irq_chip_generic** %7, align 8
  %271 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %272 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @BIT(i32 %273)
  %275 = sub nsw i32 %274, 1
  %276 = xor i32 %275, -1
  %277 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %278 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  %279 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %280 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %279, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %283 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %282, i32 0, i32 2
  store i64 %281, i64* %283, align 8
  %284 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %285 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %286 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %285, i32 0, i32 1
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 3
  store i32 %284, i32* %289, align 4
  %290 = load i32, i32* @handle_edge_irq, align 4
  %291 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %292 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %291, i32 0, i32 1
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i64 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 2
  store i32 %290, i32* %295, align 8
  %296 = load i8*, i8** @PDC_IRQ_CLEAR, align 8
  %297 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %298 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %297, i32 0, i32 1
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i64 0
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 1
  store i8* %296, i8** %302, align 8
  %303 = load i8*, i8** @PDC_IRQ_ENABLE, align 8
  %304 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %305 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %304, i32 0, i32 1
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  store i8* %303, i8** %309, align 8
  %310 = load i8*, i8** @irq_gc_ack_set_bit, align 8
  %311 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %312 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %311, i32 0, i32 1
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 5
  store i8* %310, i8** %316, align 8
  %317 = load i8*, i8** @irq_gc_mask_clr_bit, align 8
  %318 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %319 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %318, i32 0, i32 1
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i64 0
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 4
  store i8* %317, i8** %323, align 8
  %324 = load i8*, i8** @irq_gc_mask_set_bit, align 8
  %325 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %326 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %325, i32 0, i32 1
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i64 0
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 3
  store i8* %324, i8** %330, align 8
  %331 = load i8*, i8** @syswake_irq_set_type, align 8
  %332 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %333 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %332, i32 0, i32 1
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i64 0
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 2
  store i8* %331, i8** %337, align 8
  %338 = load i8*, i8** @pdc_irq_set_wake, align 8
  %339 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %340 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %339, i32 0, i32 1
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i64 0
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 1
  store i8* %338, i8** %344, align 8
  %345 = load i8*, i8** @IRQCHIP_MASK_ON_SUSPEND, align 8
  %346 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %347 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %346, i32 0, i32 1
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i64 0
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  store i8* %345, i8** %351, align 8
  %352 = load i32, i32* @IRQ_TYPE_LEVEL_MASK, align 4
  %353 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %354 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %353, i32 0, i32 1
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i64 1
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 3
  store i32 %352, i32* %357, align 4
  %358 = load i32, i32* @handle_level_irq, align 4
  %359 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %360 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %359, i32 0, i32 1
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i64 1
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 2
  store i32 %358, i32* %363, align 8
  %364 = load i8*, i8** @PDC_IRQ_CLEAR, align 8
  %365 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %366 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %365, i32 0, i32 1
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i64 1
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 1
  store i8* %364, i8** %370, align 8
  %371 = load i8*, i8** @PDC_IRQ_ENABLE, align 8
  %372 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %373 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %372, i32 0, i32 1
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i64 1
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 0
  store i8* %371, i8** %377, align 8
  %378 = load i8*, i8** @irq_gc_ack_set_bit, align 8
  %379 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %380 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %379, i32 0, i32 1
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i64 1
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 5
  store i8* %378, i8** %384, align 8
  %385 = load i8*, i8** @irq_gc_mask_clr_bit, align 8
  %386 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %387 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %386, i32 0, i32 1
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i64 1
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 4
  store i8* %385, i8** %391, align 8
  %392 = load i8*, i8** @irq_gc_mask_set_bit, align 8
  %393 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %394 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %393, i32 0, i32 1
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i64 1
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 3
  store i8* %392, i8** %398, align 8
  %399 = load i8*, i8** @syswake_irq_set_type, align 8
  %400 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %401 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %400, i32 0, i32 1
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i64 1
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 2
  store i8* %399, i8** %405, align 8
  %406 = load i8*, i8** @pdc_irq_set_wake, align 8
  %407 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %408 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %407, i32 0, i32 1
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i64 1
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 1
  store i8* %406, i8** %412, align 8
  %413 = load i8*, i8** @IRQCHIP_MASK_ON_SUSPEND, align 8
  %414 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %415 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %414, i32 0, i32 1
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i64 1
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 0
  store i8* %413, i8** %419, align 8
  %420 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %421 = call i32 @pdc_intc_setup(%struct.pdc_intc_priv* %420)
  store i32 0, i32* %8, align 4
  br label %422

422:                                              ; preds = %440, %221
  %423 = load i32, i32* %8, align 4
  %424 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %425 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = icmp ult i32 %423, %426
  br i1 %427, label %428, label %443

428:                                              ; preds = %422
  %429 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %430 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %429, i32 0, i32 2
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %8, align 4
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %9, align 4
  %436 = load i32, i32* %9, align 4
  %437 = load i32, i32* @pdc_intc_perip_isr, align 4
  %438 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %439 = call i32 @irq_set_chained_handler_and_data(i32 %436, i32 %437, %struct.pdc_intc_priv* %438)
  br label %440

440:                                              ; preds = %428
  %441 = load i32, i32* %8, align 4
  %442 = add i32 %441, 1
  store i32 %442, i32* %8, align 4
  br label %422

443:                                              ; preds = %422
  %444 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %445 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %444, i32 0, i32 3
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @pdc_intc_syswake_isr, align 4
  %448 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %449 = call i32 @irq_set_chained_handler_and_data(i32 %446, i32 %447, %struct.pdc_intc_priv* %448)
  %450 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %451 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %450, i32 0, i32 0
  %452 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %453 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %456 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @dev_info(%struct.TYPE_12__* %451, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i32 %454, i32 %457)
  store i32 0, i32* %2, align 4
  br label %465

459:                                              ; preds = %220
  %460 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %4, align 8
  %461 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @irq_domain_remove(i32 %462)
  %464 = load i32, i32* %10, align 4
  store i32 %464, i32* %2, align 4
  br label %465

465:                                              ; preds = %459, %443, %205, %186, %175, %156, %136, %111, %101, %85, %75, %67, %40, %27, %18
  %466 = load i32, i32* %2, align 4
  ret i32 %466
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.pdc_intc_priv* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pdc_intc_priv*) #1

declare dso_local i64 @devm_ioremap(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.pdc_intc_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irq_alloc_domain_generic_chips(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pdc_intc_setup(%struct.pdc_intc_priv*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.pdc_intc_priv*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
