; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-irqc.c_irqc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-irqc.c_irqc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.irqc_priv = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i64, i64, %struct.device* }
%struct.TYPE_10__ = type { i32, i32, %struct.irqc_priv* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQC_IRQ_MAX = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"not enough IRQ resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@irq_generic_chip_ops = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot initialize irq domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"irqc\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_GC_INIT_NESTED_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot allocate generic chip\0A\00", align 1
@IRQC_EN_SET = common dso_local global i32 0, align 4
@IRQC_EN_STS = common dso_local global i32 0, align 4
@irq_gc_mask_disable_reg = common dso_local global i32 0, align 4
@irq_gc_unmask_enable_reg = common dso_local global i32 0, align 4
@irqc_irq_set_type = common dso_local global i32 0, align 4
@irqc_irq_set_wake = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@irqc_irq_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"driving %d irqs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @irqc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irqc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.irqc_priv*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i8* @dev_name(%struct.device* %12)
  store i8* %13, i8** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.irqc_priv* @devm_kzalloc(%struct.device* %14, i32 48, i32 %15)
  store %struct.irqc_priv* %16, %struct.irqc_priv** %6, align 8
  %17 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %18 = icmp ne %struct.irqc_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %283

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %25 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %24, i32 0, i32 6
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.irqc_priv* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @pm_runtime_enable(%struct.device* %29)
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @pm_runtime_get_sync(%struct.device* %31)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %72, %22
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IRQC_IRQ_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %33
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load i32, i32* @IORESOURCE_IRQ, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 %40)
  store %struct.resource* %41, %struct.resource** %7, align 8
  %42 = load %struct.resource*, %struct.resource** %7, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %75

45:                                               ; preds = %37
  %46 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %47 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %48 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store %struct.irqc_priv* %46, %struct.irqc_priv** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %56 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 8
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %66 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %64, i32* %71, align 4
  br label %72

72:                                               ; preds = %45
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %33

75:                                               ; preds = %44, %33
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %78 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %80 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %277

88:                                               ; preds = %75
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %89, i32 0)
  %91 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %92 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %91, i32 0, i32 5
  store i64 %90, i64* %92, align 8
  %93 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %94 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @IS_ERR(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %100 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @PTR_ERR(i64 %101)
  store i32 %102, i32* %8, align 4
  br label %277

103:                                              ; preds = %88
  %104 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %105 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @IRQC_INT_CPU_BASE(i32 0)
  %108 = add nsw i64 %106, %107
  %109 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %110 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = getelementptr inbounds %struct.device, %struct.device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %115 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %118 = call i32 @irq_domain_add_linear(i32 %113, i32 %116, i32* @irq_generic_chip_ops, %struct.irqc_priv* %117)
  %119 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %120 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %122 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %103
  %126 = load i32, i32* @ENXIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = call i32 @dev_err(%struct.device* %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %277

130:                                              ; preds = %103
  %131 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %132 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %135 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @handle_level_irq, align 4
  %138 = load i32, i32* @IRQ_GC_INIT_NESTED_LOCK, align 4
  %139 = call i32 @irq_alloc_domain_generic_chips(i32 %133, i32 %136, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 0, i32 0, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %130
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %272

145:                                              ; preds = %130
  %146 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %147 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.TYPE_9__* @irq_get_domain_generic_chip(i32 %148, i32 0)
  %150 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %151 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %150, i32 0, i32 3
  store %struct.TYPE_9__* %149, %struct.TYPE_9__** %151, align 8
  %152 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %153 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %156 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %155, i32 0, i32 3
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  store i64 %154, i64* %158, align 8
  %159 = load i32, i32* @IRQC_EN_SET, align 4
  %160 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %161 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %160, i32 0, i32 3
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %159, i32* %167, align 4
  %168 = load i32, i32* @IRQC_EN_STS, align 4
  %169 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %170 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %169, i32 0, i32 3
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store i32 %168, i32* %176, align 8
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %179 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %178, i32 0, i32 3
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 5
  store %struct.device* %177, %struct.device** %185, align 8
  %186 = load i32, i32* @irq_gc_mask_disable_reg, align 4
  %187 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %188 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %187, i32 0, i32 3
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 4
  store i32 %186, i32* %194, align 8
  %195 = load i32, i32* @irq_gc_unmask_enable_reg, align 4
  %196 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %197 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %196, i32 0, i32 3
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 3
  store i32 %195, i32* %203, align 4
  %204 = load i32, i32* @irqc_irq_set_type, align 4
  %205 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %206 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %205, i32 0, i32 3
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  store i32 %204, i32* %212, align 8
  %213 = load i32, i32* @irqc_irq_set_wake, align 4
  %214 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %215 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %214, i32 0, i32 3
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  store i32 %213, i32* %221, align 4
  %222 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %223 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %224 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %223, i32 0, i32 3
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  store i32 %222, i32* %230, align 8
  store i32 0, i32* %9, align 4
  br label %231

231:                                              ; preds = %263, %145
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %234 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %266

237:                                              ; preds = %231
  %238 = load %struct.device*, %struct.device** %4, align 8
  %239 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %240 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %239, i32 0, i32 2
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @irqc_irq_handler, align 4
  %248 = load i8*, i8** %5, align 8
  %249 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %250 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %249, i32 0, i32 2
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i64 %253
  %255 = call i64 @devm_request_irq(%struct.device* %238, i32 %246, i32 %247, i32 0, i8* %248, %struct.TYPE_10__* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %237
  %258 = load %struct.device*, %struct.device** %4, align 8
  %259 = call i32 @dev_err(%struct.device* %258, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %260 = load i32, i32* @ENOENT, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %8, align 4
  br label %272

262:                                              ; preds = %237
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  br label %231

266:                                              ; preds = %231
  %267 = load %struct.device*, %struct.device** %4, align 8
  %268 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %269 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @dev_info(%struct.device* %267, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %270)
  store i32 0, i32* %2, align 4
  br label %283

272:                                              ; preds = %257, %142
  %273 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %274 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @irq_domain_remove(i32 %275)
  br label %277

277:                                              ; preds = %272, %125, %98, %83
  %278 = load %struct.device*, %struct.device** %4, align 8
  %279 = call i32 @pm_runtime_put(%struct.device* %278)
  %280 = load %struct.device*, %struct.device** %4, align 8
  %281 = call i32 @pm_runtime_disable(%struct.device* %280)
  %282 = load i32, i32* %8, align 4
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %277, %266, %19
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.irqc_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.irqc_priv*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @IRQC_INT_CPU_BASE(i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.irqc_priv*) #1

declare dso_local i32 @irq_alloc_domain_generic_chips(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @irq_get_domain_generic_chip(i32, i32) #1

declare dso_local i64 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
