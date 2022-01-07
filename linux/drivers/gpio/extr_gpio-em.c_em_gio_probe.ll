; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-em.c_em_gio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-em.c_em_gio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.em_gio_priv = type { i32, %struct.irq_chip, %struct.gpio_chip, i8*, i8*, i32, %struct.platform_device* }
%struct.irq_chip = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { i8*, i32, i32, i32, %struct.device*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"missing IRQ or IOMEM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Missing ngpios OF property\0A\00", align 1
@em_gio_direction_input = common dso_local global i32 0, align 4
@em_gio_get = common dso_local global i32 0, align 4
@em_gio_direction_output = common dso_local global i32 0, align 4
@em_gio_set = common dso_local global i32 0, align 4
@em_gio_to_irq = common dso_local global i32 0, align 4
@em_gio_request = common dso_local global i32 0, align 4
@em_gio_free = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@em_gio_irq_disable = common dso_local global i32 0, align 4
@em_gio_irq_enable = common dso_local global i32 0, align 4
@em_gio_irq_set_type = common dso_local global i32 0, align 4
@em_gio_irq_reqres = common dso_local global i32 0, align 4
@em_gio_irq_relres = common dso_local global i32 0, align 4
@IRQCHIP_SKIP_SET_WAKE = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@em_gio_irq_domain_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot initialize irq domain\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@em_gio_irq_domain_remove = common dso_local global i32 0, align 4
@em_gio_irq_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to request low IRQ\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to request high IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to add GPIO controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @em_gio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_gio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.em_gio_priv*, align 8
  %5 = alloca [2 x %struct.resource*], align 16
  %6 = alloca [2 x %struct.resource*], align 16
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca %struct.irq_chip*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = call i8* @dev_name(%struct.device* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.em_gio_priv* @devm_kzalloc(%struct.device* %17, i32 136, i32 %18)
  store %struct.em_gio_priv* %19, %struct.em_gio_priv** %4, align 8
  %20 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %21 = icmp ne %struct.em_gio_priv* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %260

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %28 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %27, i32 0, i32 6
  store %struct.platform_device* %26, %struct.platform_device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.em_gio_priv* %30)
  %32 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %33 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %32, i32 0, i32 5
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  %38 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %5, i64 0, i64 0
  store %struct.resource* %37, %struct.resource** %38, align 16
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 1)
  %42 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %5, i64 0, i64 1
  store %struct.resource* %41, %struct.resource** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_IRQ, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  %46 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %6, i64 0, i64 0
  store %struct.resource* %45, %struct.resource** %46, align 16
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* @IORESOURCE_IRQ, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 1)
  %50 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %6, i64 0, i64 1
  store %struct.resource* %49, %struct.resource** %50, align 8
  %51 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %5, i64 0, i64 0
  %52 = load %struct.resource*, %struct.resource** %51, align 16
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %25
  %55 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %5, i64 0, i64 1
  %56 = load %struct.resource*, %struct.resource** %55, align 8
  %57 = icmp ne %struct.resource* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %6, i64 0, i64 0
  %60 = load %struct.resource*, %struct.resource** %59, align 16
  %61 = icmp ne %struct.resource* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %6, i64 0, i64 1
  %64 = load %struct.resource*, %struct.resource** %63, align 8
  %65 = icmp ne %struct.resource* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62, %58, %54, %25
  %67 = load %struct.device*, %struct.device** %9, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %260

71:                                               ; preds = %62
  %72 = load %struct.device*, %struct.device** %9, align 8
  %73 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %5, i64 0, i64 0
  %74 = load %struct.resource*, %struct.resource** %73, align 16
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %5, i64 0, i64 0
  %78 = load %struct.resource*, %struct.resource** %77, align 16
  %79 = call i32 @resource_size(%struct.resource* %78)
  %80 = call i8* @devm_ioremap_nocache(%struct.device* %72, i32 %76, i32 %79)
  %81 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %82 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %84 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %71
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %260

90:                                               ; preds = %71
  %91 = load %struct.device*, %struct.device** %9, align 8
  %92 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %5, i64 0, i64 1
  %93 = load %struct.resource*, %struct.resource** %92, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %5, i64 0, i64 1
  %97 = load %struct.resource*, %struct.resource** %96, align 8
  %98 = call i32 @resource_size(%struct.resource* %97)
  %99 = call i8* @devm_ioremap_nocache(%struct.device* %91, i32 %95, i32 %98)
  %100 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %101 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %103 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %90
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %260

109:                                              ; preds = %90
  %110 = load %struct.device*, %struct.device** %9, align 8
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @of_property_read_u32(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.device*, %struct.device** %9, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %260

120:                                              ; preds = %109
  %121 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %122 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %121, i32 0, i32 2
  store %struct.gpio_chip* %122, %struct.gpio_chip** %7, align 8
  %123 = load %struct.device*, %struct.device** %9, align 8
  %124 = getelementptr inbounds %struct.device, %struct.device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %127 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %126, i32 0, i32 12
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @em_gio_direction_input, align 4
  %129 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %130 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @em_gio_get, align 4
  %132 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %133 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @em_gio_direction_output, align 4
  %135 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %136 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @em_gio_set, align 4
  %138 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %139 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @em_gio_to_irq, align 4
  %141 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %142 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @em_gio_request, align 4
  %144 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %145 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @em_gio_free, align 4
  %147 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %148 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %151 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load %struct.device*, %struct.device** %9, align 8
  %153 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %154 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %153, i32 0, i32 4
  store %struct.device* %152, %struct.device** %154, align 8
  %155 = load i32, i32* @THIS_MODULE, align 4
  %156 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %157 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %159 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %158, i32 0, i32 1
  store i32 -1, i32* %159, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %162 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %164 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %163, i32 0, i32 1
  store %struct.irq_chip* %164, %struct.irq_chip** %8, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %167 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @em_gio_irq_disable, align 4
  %169 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %170 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @em_gio_irq_enable, align 4
  %172 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %173 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @em_gio_irq_set_type, align 4
  %175 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %176 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @em_gio_irq_reqres, align 4
  %178 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %179 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @em_gio_irq_relres, align 4
  %181 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %182 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @IRQCHIP_SKIP_SET_WAKE, align 4
  %184 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %187 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load %struct.device*, %struct.device** %9, align 8
  %189 = getelementptr inbounds %struct.device, %struct.device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %193 = call i32 @irq_domain_add_simple(i32 %190, i32 %191, i32 0, i32* @em_gio_irq_domain_ops, %struct.em_gio_priv* %192)
  %194 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %195 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %197 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %120
  %201 = load %struct.device*, %struct.device** %9, align 8
  %202 = call i32 @dev_err(%struct.device* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %203 = load i32, i32* @ENXIO, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %2, align 4
  br label %260

205:                                              ; preds = %120
  %206 = load %struct.device*, %struct.device** %9, align 8
  %207 = load i32, i32* @em_gio_irq_domain_remove, align 4
  %208 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %209 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @devm_add_action_or_reset(%struct.device* %206, i32 %207, i32 %210)
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %205
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %2, align 4
  br label %260

216:                                              ; preds = %205
  %217 = load %struct.device*, %struct.device** %9, align 8
  %218 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %6, i64 0, i64 0
  %219 = load %struct.resource*, %struct.resource** %218, align 16
  %220 = getelementptr inbounds %struct.resource, %struct.resource* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @em_gio_irq_handler, align 4
  %223 = load i8*, i8** %10, align 8
  %224 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %225 = call i64 @devm_request_irq(%struct.device* %217, i32 %221, i32 %222, i32 0, i8* %223, %struct.em_gio_priv* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %216
  %228 = load %struct.device*, %struct.device** %9, align 8
  %229 = call i32 @dev_err(%struct.device* %228, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %230 = load i32, i32* @ENOENT, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %2, align 4
  br label %260

232:                                              ; preds = %216
  %233 = load %struct.device*, %struct.device** %9, align 8
  %234 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %6, i64 0, i64 1
  %235 = load %struct.resource*, %struct.resource** %234, align 8
  %236 = getelementptr inbounds %struct.resource, %struct.resource* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @em_gio_irq_handler, align 4
  %239 = load i8*, i8** %10, align 8
  %240 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %241 = call i64 @devm_request_irq(%struct.device* %233, i32 %237, i32 %238, i32 0, i8* %239, %struct.em_gio_priv* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %232
  %244 = load %struct.device*, %struct.device** %9, align 8
  %245 = call i32 @dev_err(%struct.device* %244, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %246 = load i32, i32* @ENOENT, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %2, align 4
  br label %260

248:                                              ; preds = %232
  %249 = load %struct.device*, %struct.device** %9, align 8
  %250 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %251 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %252 = call i32 @devm_gpiochip_add_data(%struct.device* %249, %struct.gpio_chip* %250, %struct.em_gio_priv* %251)
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %248
  %256 = load %struct.device*, %struct.device** %9, align 8
  %257 = call i32 @dev_err(%struct.device* %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %258 = load i32, i32* %12, align 4
  store i32 %258, i32* %2, align 4
  br label %260

259:                                              ; preds = %248
  store i32 0, i32* %2, align 4
  br label %260

260:                                              ; preds = %259, %255, %243, %227, %214, %200, %115, %106, %87, %66, %22
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.em_gio_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.em_gio_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_ioremap_nocache(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @irq_domain_add_simple(i32, i32, i32, i32*, %struct.em_gio_priv*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.em_gio_priv*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, %struct.em_gio_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
