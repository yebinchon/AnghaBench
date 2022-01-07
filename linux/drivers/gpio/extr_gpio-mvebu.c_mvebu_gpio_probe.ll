; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mvebu.c_mvebu_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mvebu.c_mvebu_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mvebu_gpio_chip = type { i32, i32, %struct.TYPE_11__, i32, i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.device_node*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.of_device_id = type { i64 }
%struct.irq_chip_generic = type { %struct.irq_chip_type*, %struct.mvebu_gpio_chip* }
%struct.irq_chip_type = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i8*, i32, i32, i32 }

@mvebu_gpio_of_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Missing ngpios OF property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Couldn't get OF id\0A\00", align 1
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@mvebu_gpio_get_direction = common dso_local global i32 0, align 4
@mvebu_gpio_direction_input = common dso_local global i32 0, align 4
@mvebu_gpio_get = common dso_local global i32 0, align 4
@mvebu_gpio_direction_output = common dso_local global i32 0, align 4
@mvebu_gpio_set = common dso_local global i32 0, align 4
@mvebu_gpio_to_irq = common dso_local global i32 0, align 4
@MVEBU_MAX_GPIO_PER_BANK = common dso_local global i32 0, align 4
@mvebu_gpio_dbg_show = common dso_local global i32 0, align 4
@GPIO_EDGE_CAUSE_OFF = common dso_local global i64 0, align 8
@GPIO_EDGE_MASK_OFF = common dso_local global i64 0, align 8
@GPIO_LEVEL_MASK_OFF = common dso_local global i64 0, align 8
@irq_generic_chip_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"couldn't allocate irq domain %s (DT).\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@IRQ_LEVEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"couldn't allocate irq chips %s (DT).\0A\00", align 1
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@mvebu_gpio_level_irq_mask = common dso_local global i32 0, align 4
@mvebu_gpio_level_irq_unmask = common dso_local global i32 0, align 4
@mvebu_gpio_irq_set_type = common dso_local global i8* null, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@mvebu_gpio_irq_ack = common dso_local global i32 0, align 4
@mvebu_gpio_edge_irq_mask = common dso_local global i32 0, align 4
@mvebu_gpio_edge_irq_unmask = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@mvebu_gpio_irq_handler = common dso_local global i32 0, align 4
@CONFIG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mvebu_gpio_chip*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.irq_chip_generic*, align 8
  %8 = alloca %struct.irq_chip_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %6, align 8
  %21 = load i32, i32* @mvebu_gpio_of_match, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.of_device_id* @of_match_device(i32 %21, %struct.TYPE_10__* %23)
  store %struct.of_device_id* %24, %struct.of_device_id** %5, align 8
  %25 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %26 = icmp ne %struct.of_device_id* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  br label %33

32:                                               ; preds = %1
  store i32 128, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i64 @of_irq_count(%struct.device_node* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.mvebu_gpio_chip* @devm_kzalloc(%struct.TYPE_10__* %39, i32 104, i32 %40)
  store %struct.mvebu_gpio_chip* %41, %struct.mvebu_gpio_chip** %4, align 8
  %42 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %43 = icmp ne %struct.mvebu_gpio_chip* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %439

47:                                               ; preds = %33
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.mvebu_gpio_chip* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.device_node*, %struct.device_node** %53, align 8
  %55 = call i64 @of_property_read_u32(%struct.device_node* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %9)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %439

63:                                               ; preds = %47
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.device_node*, %struct.device_node** %66, align 8
  %68 = call i32 @of_alias_get_id(%struct.device_node* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %2, align 4
  br label %439

76:                                               ; preds = %63
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @devm_clk_get(%struct.TYPE_10__* %78, i32* null)
  %80 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %81 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %83 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @IS_ERR(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %89 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @clk_prepare_enable(i32 %90)
  br label %92

92:                                               ; preds = %87, %76
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %95 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_name(%struct.TYPE_10__* %97)
  %99 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %100 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %105 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 14
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %106, align 8
  %107 = load i32, i32* @gpiochip_generic_request, align 4
  %108 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %109 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 13
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @gpiochip_generic_free, align 4
  %112 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %113 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 12
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* @mvebu_gpio_get_direction, align 4
  %116 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %117 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 11
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @mvebu_gpio_direction_input, align 4
  %120 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %121 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 10
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* @mvebu_gpio_get, align 4
  %124 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %125 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 9
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @mvebu_gpio_direction_output, align 4
  %128 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %129 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 8
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @mvebu_gpio_set, align 4
  %132 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %133 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 7
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %92
  %138 = load i32, i32* @mvebu_gpio_to_irq, align 4
  %139 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %140 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 6
  store i32 %138, i32* %141, align 8
  br label %142

142:                                              ; preds = %137, %92
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @MVEBU_MAX_GPIO_PER_BANK, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %147 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %151 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %154 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  store i32 0, i32* %155, align 8
  %156 = load %struct.device_node*, %struct.device_node** %6, align 8
  %157 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %158 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 5
  store %struct.device_node* %156, %struct.device_node** %159, align 8
  %160 = load i32, i32* @mvebu_gpio_dbg_show, align 4
  %161 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %162 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  store i32 %160, i32* %163, align 8
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %164, 131
  br i1 %165, label %166, label %170

166:                                              ; preds = %142
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %169 = call i32 @mvebu_gpio_probe_syscon(%struct.platform_device* %167, %struct.mvebu_gpio_chip* %168)
  store i32 %169, i32* %15, align 4
  br label %174

170:                                              ; preds = %142
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %173 = call i32 @mvebu_gpio_probe_raw(%struct.platform_device* %171, %struct.mvebu_gpio_chip* %172)
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %170, %166
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %2, align 4
  br label %439

179:                                              ; preds = %174
  %180 = load i32, i32* %11, align 4
  switch i32 %180, label %277 [
    i32 128, label %181
    i32 131, label %181
    i32 129, label %209
    i32 130, label %235
  ]

181:                                              ; preds = %179, %179
  %182 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %183 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i64, i64* @GPIO_EDGE_CAUSE_OFF, align 8
  %186 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %187 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %185, %188
  %190 = call i32 @regmap_write(i32 %184, i64 %189, i32 0)
  %191 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %192 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* @GPIO_EDGE_MASK_OFF, align 8
  %195 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %196 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %194, %197
  %199 = call i32 @regmap_write(i32 %193, i64 %198, i32 0)
  %200 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %201 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i64, i64* @GPIO_LEVEL_MASK_OFF, align 8
  %204 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %205 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %203, %206
  %208 = call i32 @regmap_write(i32 %202, i64 %207, i32 0)
  br label %279

209:                                              ; preds = %179
  %210 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %211 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load i64, i64* @GPIO_EDGE_CAUSE_OFF, align 8
  %214 = call i32 @regmap_write(i32 %212, i64 %213, i32 0)
  store i32 0, i32* %13, align 4
  br label %215

215:                                              ; preds = %231, %209
  %216 = load i32, i32* %13, align 4
  %217 = icmp slt i32 %216, 2
  br i1 %217, label %218, label %234

218:                                              ; preds = %215
  %219 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %220 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %13, align 4
  %223 = call i64 @GPIO_EDGE_MASK_MV78200_OFF(i32 %222)
  %224 = call i32 @regmap_write(i32 %221, i64 %223, i32 0)
  %225 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %226 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %13, align 4
  %229 = call i64 @GPIO_LEVEL_MASK_MV78200_OFF(i32 %228)
  %230 = call i32 @regmap_write(i32 %227, i64 %229, i32 0)
  br label %231

231:                                              ; preds = %218
  %232 = load i32, i32* %13, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %13, align 4
  br label %215

234:                                              ; preds = %215
  br label %279

235:                                              ; preds = %179
  %236 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %237 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load i64, i64* @GPIO_EDGE_CAUSE_OFF, align 8
  %240 = call i32 @regmap_write(i32 %238, i64 %239, i32 0)
  %241 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %242 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load i64, i64* @GPIO_EDGE_MASK_OFF, align 8
  %245 = call i32 @regmap_write(i32 %243, i64 %244, i32 0)
  %246 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %247 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = load i64, i64* @GPIO_LEVEL_MASK_OFF, align 8
  %250 = call i32 @regmap_write(i32 %248, i64 %249, i32 0)
  store i32 0, i32* %13, align 4
  br label %251

251:                                              ; preds = %273, %235
  %252 = load i32, i32* %13, align 4
  %253 = icmp slt i32 %252, 4
  br i1 %253, label %254, label %276

254:                                              ; preds = %251
  %255 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %256 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %13, align 4
  %259 = call i64 @GPIO_EDGE_CAUSE_ARMADAXP_OFF(i32 %258)
  %260 = call i32 @regmap_write(i32 %257, i64 %259, i32 0)
  %261 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %262 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = call i64 @GPIO_EDGE_MASK_ARMADAXP_OFF(i32 %264)
  %266 = call i32 @regmap_write(i32 %263, i64 %265, i32 0)
  %267 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %268 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = call i64 @GPIO_LEVEL_MASK_ARMADAXP_OFF(i32 %270)
  %272 = call i32 @regmap_write(i32 %269, i64 %271, i32 0)
  br label %273

273:                                              ; preds = %254
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %13, align 4
  br label %251

276:                                              ; preds = %251
  br label %279

277:                                              ; preds = %179
  %278 = call i32 (...) @BUG()
  br label %279

279:                                              ; preds = %277, %276, %234, %181
  %280 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %281 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %280, i32 0, i32 0
  %282 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %283 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %282, i32 0, i32 2
  %284 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %285 = call i32 @devm_gpiochip_add_data(%struct.TYPE_10__* %281, %struct.TYPE_11__* %283, %struct.mvebu_gpio_chip* %284)
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %279
  store i32 0, i32* %2, align 4
  br label %439

289:                                              ; preds = %279
  %290 = load %struct.device_node*, %struct.device_node** %6, align 8
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @irq_domain_add_linear(%struct.device_node* %290, i32 %291, i32* @irq_generic_chip_ops, i32* null)
  %293 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %294 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  %295 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %296 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %309, label %299

299:                                              ; preds = %289
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %300, i32 0, i32 0
  %302 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %303 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %301, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* @ENODEV, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %2, align 4
  br label %439

309:                                              ; preds = %289
  %310 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %311 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %9, align 4
  %314 = load %struct.device_node*, %struct.device_node** %6, align 8
  %315 = getelementptr inbounds %struct.device_node, %struct.device_node* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @handle_level_irq, align 4
  %318 = load i32, i32* @IRQ_NOREQUEST, align 4
  %319 = load i32, i32* @IRQ_NOPROBE, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @IRQ_LEVEL, align 4
  %322 = or i32 %320, %321
  %323 = call i32 @irq_alloc_domain_generic_chips(i32 %312, i32 %313, i32 2, i32 %316, i32 %317, i32 %322, i32 0, i32 0)
  store i32 %323, i32* %15, align 4
  %324 = load i32, i32* %15, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %309
  %327 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %328 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %327, i32 0, i32 0
  %329 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %330 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %328, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %332)
  br label %433

334:                                              ; preds = %309
  %335 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %336 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32 %337, i32 0)
  store %struct.irq_chip_generic* %338, %struct.irq_chip_generic** %7, align 8
  %339 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %340 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %341 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %340, i32 0, i32 1
  store %struct.mvebu_gpio_chip* %339, %struct.mvebu_gpio_chip** %341, align 8
  %342 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %343 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %342, i32 0, i32 0
  %344 = load %struct.irq_chip_type*, %struct.irq_chip_type** %343, align 8
  %345 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %344, i64 0
  store %struct.irq_chip_type* %345, %struct.irq_chip_type** %8, align 8
  %346 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %347 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %348 = or i32 %346, %347
  %349 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %350 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 8
  %351 = load i32, i32* @mvebu_gpio_level_irq_mask, align 4
  %352 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %353 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 3
  store i32 %351, i32* %354, align 4
  %355 = load i32, i32* @mvebu_gpio_level_irq_unmask, align 4
  %356 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %357 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 2
  store i32 %355, i32* %358, align 8
  %359 = load i8*, i8** @mvebu_gpio_irq_set_type, align 8
  %360 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %361 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 1
  store i8* %359, i8** %362, align 8
  %363 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %364 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %368 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 0
  store i32 %366, i32* %369, align 8
  %370 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %7, align 8
  %371 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %370, i32 0, i32 0
  %372 = load %struct.irq_chip_type*, %struct.irq_chip_type** %371, align 8
  %373 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %372, i64 1
  store %struct.irq_chip_type* %373, %struct.irq_chip_type** %8, align 8
  %374 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %375 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %376 = or i32 %374, %375
  %377 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %378 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %377, i32 0, i32 0
  store i32 %376, i32* %378, align 8
  %379 = load i32, i32* @mvebu_gpio_irq_ack, align 4
  %380 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %381 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 4
  store i32 %379, i32* %382, align 8
  %383 = load i32, i32* @mvebu_gpio_edge_irq_mask, align 4
  %384 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %385 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 3
  store i32 %383, i32* %386, align 4
  %387 = load i32, i32* @mvebu_gpio_edge_irq_unmask, align 4
  %388 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %389 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 2
  store i32 %387, i32* %390, align 8
  %391 = load i8*, i8** @mvebu_gpio_irq_set_type, align 8
  %392 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %393 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 1
  store i8* %391, i8** %394, align 8
  %395 = load i32, i32* @handle_edge_irq, align 4
  %396 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %397 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %396, i32 0, i32 2
  store i32 %395, i32* %397, align 8
  %398 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %399 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.irq_chip_type*, %struct.irq_chip_type** %8, align 8
  %403 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  store i32 %401, i32* %404, align 8
  store i32 0, i32* %12, align 4
  br label %405

405:                                              ; preds = %420, %334
  %406 = load i32, i32* %12, align 4
  %407 = icmp slt i32 %406, 4
  br i1 %407, label %408, label %423

408:                                              ; preds = %405
  %409 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %410 = load i32, i32* %12, align 4
  %411 = call i32 @platform_get_irq(%struct.platform_device* %409, i32 %410)
  store i32 %411, i32* %16, align 4
  %412 = load i32, i32* %16, align 4
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  br label %420

415:                                              ; preds = %408
  %416 = load i32, i32* %16, align 4
  %417 = load i32, i32* @mvebu_gpio_irq_handler, align 4
  %418 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %419 = call i32 @irq_set_chained_handler_and_data(i32 %416, i32 %417, %struct.mvebu_gpio_chip* %418)
  br label %420

420:                                              ; preds = %415, %414
  %421 = load i32, i32* %12, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %12, align 4
  br label %405

423:                                              ; preds = %405
  %424 = load i32, i32* @CONFIG_PWM, align 4
  %425 = call i64 @IS_ENABLED(i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %423
  %428 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %429 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %430 = load i32, i32* %14, align 4
  %431 = call i32 @mvebu_pwm_probe(%struct.platform_device* %428, %struct.mvebu_gpio_chip* %429, i32 %430)
  store i32 %431, i32* %2, align 4
  br label %439

432:                                              ; preds = %423
  store i32 0, i32* %2, align 4
  br label %439

433:                                              ; preds = %326
  %434 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %435 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @irq_domain_remove(i32 %436)
  %438 = load i32, i32* %15, align 4
  store i32 %438, i32* %2, align 4
  br label %439

439:                                              ; preds = %433, %432, %427, %299, %288, %177, %71, %57, %44
  %440 = load i32, i32* %2, align 4
  ret i32 %440
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @of_irq_count(%struct.device_node*) #1

declare dso_local %struct.mvebu_gpio_chip* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mvebu_gpio_chip*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @mvebu_gpio_probe_syscon(%struct.platform_device*, %struct.mvebu_gpio_chip*) #1

declare dso_local i32 @mvebu_gpio_probe_raw(%struct.platform_device*, %struct.mvebu_gpio_chip*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i64 @GPIO_EDGE_MASK_MV78200_OFF(i32) #1

declare dso_local i64 @GPIO_LEVEL_MASK_MV78200_OFF(i32) #1

declare dso_local i64 @GPIO_EDGE_CAUSE_ARMADAXP_OFF(i32) #1

declare dso_local i64 @GPIO_EDGE_MASK_ARMADAXP_OFF(i32) #1

declare dso_local i64 @GPIO_LEVEL_MASK_ARMADAXP_OFF(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.mvebu_gpio_chip*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, i32*) #1

declare dso_local i32 @irq_alloc_domain_generic_chips(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.mvebu_gpio_chip*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mvebu_pwm_probe(%struct.platform_device*, %struct.mvebu_gpio_chip*, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
