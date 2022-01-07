; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera.c_altera_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera.c_altera_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.altera_gpio_chip = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.gpio_irq_chip, %struct.TYPE_11__*, i32, i32, i32, i32, i32 }
%struct.gpio_irq_chip = type { i32, i64*, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"altr,ngpio\00", align 1
@ALTERA_GPIO_MAX_NGPIO = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"ngpio is greater than %d, defaulting to %d\0A\00", align 1
@altera_gpio_direction_input = common dso_local global i32 0, align 4
@altera_gpio_direction_output = common dso_local global i32 0, align 4
@altera_gpio_get = common dso_local global i32 0, align 4
@altera_gpio_set = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"altr,interrupt-type\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"altr,interrupt-type value not set in device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"altera-gpio\00", align 1
@altera_gpio_irq_mask = common dso_local global i8* null, align 8
@altera_gpio_irq_unmask = common dso_local global i32 0, align 4
@altera_gpio_irq_set_type = common dso_local global i32 0, align 4
@altera_gpio_irq_startup = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@altera_gpio_irq_leveL_high_handler = common dso_local global i32 0, align 4
@altera_gpio_irq_edge_handler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed adding memory mapped gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altera_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.altera_gpio_chip*, align 8
  %8 = alloca %struct.gpio_irq_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.altera_gpio_chip* @devm_kzalloc(%struct.TYPE_11__* %14, i32 144, i32 %15)
  store %struct.altera_gpio_chip* %16, %struct.altera_gpio_chip** %7, align 8
  %17 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %18 = icmp ne %struct.altera_gpio_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %210

22:                                               ; preds = %1
  %23 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %24 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %23, i32 0, i32 4
  %25 = call i32 @raw_spin_lock_init(i32* %24)
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i64 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i8*, i8** @ALTERA_GPIO_MAX_NGPIO, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %33 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  br label %42

36:                                               ; preds = %22
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %39 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %44 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8*, i8** @ALTERA_GPIO_MAX_NGPIO, align 8
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i8*, i8** @ALTERA_GPIO_MAX_NGPIO, align 8
  %56 = load i8*, i8** @ALTERA_GPIO_MAX_NGPIO, align 8
  %57 = call i32 @dev_warn(%struct.TYPE_11__* %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i8*, i8** @ALTERA_GPIO_MAX_NGPIO, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %61 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  br label %64

64:                                               ; preds = %52, %42
  %65 = load i32, i32* @altera_gpio_direction_input, align 4
  %66 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %67 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 7
  store i32 %65, i32* %69, align 8
  %70 = load i32, i32* @altera_gpio_direction_output, align 4
  %71 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %72 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @altera_gpio_get, align 4
  %76 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %77 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 5
  store i32 %75, i32* %79, align 8
  %80 = load i32, i32* @altera_gpio_set, align 4
  %81 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %82 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* @THIS_MODULE, align 4
  %86 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %87 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  store i32 %85, i32* %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %93 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %95, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = call i64 @platform_get_irq(%struct.platform_device* %96, i32 0)
  %98 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %99 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %101 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %64
  br label %193

105:                                              ; preds = %64
  %106 = load %struct.device_node*, %struct.device_node** %4, align 8
  %107 = call i64 @of_property_read_u32(%struct.device_node* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_err(%struct.TYPE_11__* %111, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %210

115:                                              ; preds = %105
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %118 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %120 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %121, align 8
  %122 = load i8*, i8** @altera_gpio_irq_mask, align 8
  %123 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %124 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  store i8* %122, i8** %125, align 8
  %126 = load i32, i32* @altera_gpio_irq_unmask, align 4
  %127 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %128 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 8
  %130 = load i32, i32* @altera_gpio_irq_set_type, align 4
  %131 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %132 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @altera_gpio_irq_startup, align 4
  %135 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %136 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 8
  %138 = load i8*, i8** @altera_gpio_irq_mask, align 8
  %139 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %140 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i8* %138, i8** %141, align 8
  %142 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %143 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store %struct.gpio_irq_chip* %145, %struct.gpio_irq_chip** %8, align 8
  %146 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %147 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %146, i32 0, i32 3
  %148 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %149 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %148, i32 0, i32 5
  store %struct.TYPE_9__* %147, %struct.TYPE_9__** %149, align 8
  %150 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %151 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %115
  %156 = load i32, i32* @altera_gpio_irq_leveL_high_handler, align 4
  %157 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %158 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  br label %163

159:                                              ; preds = %115
  %160 = load i32, i32* @altera_gpio_irq_edge_handler, align 4
  %161 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %162 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %155
  %164 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %165 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call i64* @devm_kcalloc(%struct.TYPE_11__* %167, i32 1, i32 8, i32 %168)
  %170 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %171 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %170, i32 0, i32 1
  store i64* %169, i64** %171, align 8
  %172 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %173 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = icmp ne i64* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %163
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %210

179:                                              ; preds = %163
  %180 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %181 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %182 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @handle_bad_irq, align 4
  %184 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %185 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %187 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %190 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %189, i32 0, i32 1
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  store i64 %188, i64* %192, align 8
  br label %193

193:                                              ; preds = %179, %104
  %194 = load %struct.device_node*, %struct.device_node** %4, align 8
  %195 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %196 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %195, i32 0, i32 2
  %197 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %198 = call i32 @of_mm_gpiochip_add_data(%struct.device_node* %194, %struct.TYPE_10__* %196, %struct.altera_gpio_chip* %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %193
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = call i32 @dev_err(%struct.TYPE_11__* %203, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %205 = load i32, i32* %6, align 4
  store i32 %205, i32* %2, align 4
  br label %210

206:                                              ; preds = %193
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %7, align 8
  %209 = call i32 @platform_set_drvdata(%struct.platform_device* %207, %struct.altera_gpio_chip* %208)
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %206, %201, %176, %109, %19
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.altera_gpio_chip* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*, i8*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i64* @devm_kcalloc(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @of_mm_gpiochip_add_data(%struct.device_node*, %struct.TYPE_10__*, %struct.altera_gpio_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.altera_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
