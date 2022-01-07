; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ftgpio010.c_ftgpio_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ftgpio010.c_ftgpio_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ftgpio_gpio = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, %struct.device* }
%struct.TYPE_5__ = type { i8*, i32, %struct.gpio_irq_chip, i32, i32, %struct.device* }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIO_DATA_IN = common dso_local global i64 0, align 8
@GPIO_DATA_SET = common dso_local global i64 0, align 8
@GPIO_DATA_CLR = common dso_local global i64 0, align 8
@GPIO_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to init generic GPIO\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"FTGPIO010\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ftgpio_gpio_set_config = common dso_local global i32 0, align 4
@ftgpio_gpio_ack_irq = common dso_local global i32 0, align 4
@ftgpio_gpio_mask_irq = common dso_local global i32 0, align 4
@ftgpio_gpio_unmask_irq = common dso_local global i32 0, align 4
@ftgpio_gpio_set_irq_type = common dso_local global i32 0, align 4
@ftgpio_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@GPIO_INT_EN = common dso_local global i64 0, align 8
@GPIO_INT_MASK = common dso_local global i64 0, align 8
@GPIO_INT_CLR = common dso_local global i64 0, align 8
@GPIO_DEBOUNCE_EN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"FTGPIO010 @%p registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftgpio_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgpio_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ftgpio_gpio*, align 8
  %6 = alloca %struct.gpio_irq_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ftgpio_gpio* @devm_kzalloc(%struct.device* %11, i32 120, i32 %12)
  store %struct.ftgpio_gpio* %13, %struct.ftgpio_gpio** %5, align 8
  %14 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %15 = icmp ne %struct.ftgpio_gpio* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %251

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %22 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %21, i32 0, i32 4
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %23, i32 0)
  %25 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %26 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %28 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @IS_ERR(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %34 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @PTR_ERR(i64 %35)
  store i32 %36, i32* %2, align 4
  br label %251

37:                                               ; preds = %19
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @platform_get_irq(%struct.platform_device* %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %49, %47 ]
  store i32 %51, i32* %2, align 4
  br label %251

52:                                               ; preds = %37
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i64 @devm_clk_get(%struct.device* %53, i32* null)
  %55 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %56 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %58 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @IS_ERR(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %64 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @clk_prepare_enable(i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %251

71:                                               ; preds = %62
  br label %86

72:                                               ; preds = %52
  %73 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %74 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @PTR_ERR(i64 %75)
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %82 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @PTR_ERR(i64 %83)
  store i32 %84, i32* %2, align 4
  br label %251

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85, %71
  %87 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %88 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %87, i32 0, i32 2
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @GPIO_DATA_IN, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %96 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GPIO_DATA_SET, align 8
  %99 = add nsw i64 %97, %98
  %100 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %101 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @GPIO_DATA_CLR, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %106 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @GPIO_DIR, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @bgpio_init(%struct.TYPE_5__* %88, %struct.device* %89, i32 4, i64 %94, i64 %99, i64 %104, i64 %109, i32* null, i32 0)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %86
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %238

116:                                              ; preds = %86
  %117 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %118 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %119, align 8
  %120 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %121 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i32 -1, i32* %122, align 8
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %125 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  store %struct.device* %123, %struct.device** %126, align 8
  %127 = load i32, i32* @THIS_MODULE, align 4
  %128 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %129 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  store i32 %127, i32* %130, align 4
  %131 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %132 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @IS_ERR(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %116
  %137 = load i32, i32* @ftgpio_gpio_set_config, align 4
  %138 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %139 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 8
  br label %141

141:                                              ; preds = %136, %116
  %142 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %143 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %144, align 8
  %145 = load i32, i32* @ftgpio_gpio_ack_irq, align 4
  %146 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %147 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* @ftgpio_gpio_mask_irq, align 4
  %150 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %151 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* @ftgpio_gpio_unmask_irq, align 4
  %154 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %155 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* @ftgpio_gpio_set_irq_type, align 4
  %158 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %159 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %162 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  store %struct.gpio_irq_chip* %163, %struct.gpio_irq_chip** %6, align 8
  %164 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %165 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %164, i32 0, i32 3
  %166 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %167 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %166, i32 0, i32 5
  store %struct.TYPE_4__* %165, %struct.TYPE_4__** %167, align 8
  %168 = load i32, i32* @ftgpio_gpio_irq_handler, align 4
  %169 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %170 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %172 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call i32* @devm_kcalloc(%struct.device* %173, i32 1, i32 4, i32 %174)
  %176 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %177 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %176, i32 0, i32 1
  store i32* %175, i32** %177, align 8
  %178 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %179 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %141
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %8, align 4
  br label %238

185:                                              ; preds = %141
  %186 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %187 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %188 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @handle_bad_irq, align 4
  %190 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %191 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %194 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 %192, i32* %196, align 4
  %197 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %198 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @GPIO_INT_EN, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @writel(i32 0, i64 %201)
  %203 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %204 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @GPIO_INT_MASK, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @writel(i32 0, i64 %207)
  %209 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %210 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @GPIO_INT_CLR, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @writel(i32 -1, i64 %213)
  %215 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %216 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @GPIO_DEBOUNCE_EN, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @writel(i32 0, i64 %219)
  %221 = load %struct.device*, %struct.device** %4, align 8
  %222 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %223 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %222, i32 0, i32 2
  %224 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %225 = call i32 @devm_gpiochip_add_data(%struct.device* %221, %struct.TYPE_5__* %223, %struct.ftgpio_gpio* %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %185
  br label %238

229:                                              ; preds = %185
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %232 = call i32 @platform_set_drvdata(%struct.platform_device* %230, %struct.ftgpio_gpio* %231)
  %233 = load %struct.device*, %struct.device** %4, align 8
  %234 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %235 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @dev_info(%struct.device* %233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %236)
  store i32 0, i32* %2, align 4
  br label %251

238:                                              ; preds = %228, %182, %113
  %239 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %240 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i64 @IS_ERR(i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %238
  %245 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %5, align 8
  %246 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @clk_disable_unprepare(i64 %247)
  br label %249

249:                                              ; preds = %244, %238
  %250 = load i32, i32* %8, align 4
  store i32 %250, i32* %2, align 4
  br label %251

251:                                              ; preds = %249, %229, %80, %69, %50, %32, %16
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local %struct.ftgpio_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_5__*, %struct.device*, i32, i64, i64, i64, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_5__*, %struct.ftgpio_gpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ftgpio_gpio*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
