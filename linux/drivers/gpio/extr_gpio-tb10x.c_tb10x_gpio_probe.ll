; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tb10x.c_tb10x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tb10x.c_tb10x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tb10x_gpio = type { i32, i64, %struct.TYPE_13__*, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.irq_chip_generic** }
%struct.irq_chip_generic = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.device* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"abilis,ngpio\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@OFFSET_TO_REG_DATA = common dso_local global i64 0, align 8
@OFFSET_TO_REG_DDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to init generic GPIO\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not add gpiochip.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@tb10x_gpio_to_irq = common dso_local global i32 0, align 4
@tb10x_gpio_irq_cascade = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@irq_generic_chip_ops = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@IRQ_GC_INIT_MASK_CACHE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@irq_gc_ack_set_bit = common dso_local global i32 0, align 4
@irq_gc_mask_clr_bit = common dso_local global i32 0, align 4
@irq_gc_mask_set_bit = common dso_local global i32 0, align 4
@tb10x_gpio_irq_set_type = common dso_local global i32 0, align 4
@OFFSET_TO_REG_CHANGE = common dso_local global i32 0, align 4
@OFFSET_TO_REG_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tb10x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb10x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tb10x_gpio*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_chip_generic*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %265

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i64 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %265

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.tb10x_gpio* @devm_kzalloc(%struct.device* %30, i32 64, i32 %31)
  store %struct.tb10x_gpio* %32, %struct.tb10x_gpio** %4, align 8
  %33 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %34 = icmp eq %struct.tb10x_gpio* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %265

38:                                               ; preds = %29
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %39, i32 0)
  %41 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %42 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %44 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_ERR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %50 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @PTR_ERR(i64 %51)
  store i32 %52, i32* %2, align 4
  br label %265

53:                                               ; preds = %38
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load %struct.device_node*, %struct.device_node** %58, align 8
  %60 = call i32 @devm_kasprintf(%struct.device* %54, i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %59)
  %61 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %62 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %65 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %265

72:                                               ; preds = %53
  %73 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %74 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %73, i32 0, i32 3
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %77 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OFFSET_TO_REG_DATA, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %82 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @OFFSET_TO_REG_DDR, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @bgpio_init(%struct.TYPE_14__* %74, %struct.device* %75, i32 4, i64 %80, i32* null, i32* null, i64 %85, i32* null, i32 0)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %72
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %265

93:                                               ; preds = %72
  %94 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %95 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %99 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 7
  store %struct.device* %97, %struct.device** %100, align 8
  %101 = load i32, i32* @THIS_MODULE, align 4
  %102 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %103 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 6
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %107 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* @gpiochip_generic_request, align 4
  %110 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %111 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 5
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @gpiochip_generic_free, align 4
  %114 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %115 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 4
  store i32 %113, i32* %116, align 8
  %117 = load %struct.device*, %struct.device** %5, align 8
  %118 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %119 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %118, i32 0, i32 3
  %120 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %121 = call i32 @devm_gpiochip_add_data(%struct.device* %117, %struct.TYPE_14__* %119, %struct.tb10x_gpio* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %93
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %265

128:                                              ; preds = %93
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %131 = call i32 @platform_set_drvdata(%struct.platform_device* %129, %struct.tb10x_gpio* %130)
  %132 = load %struct.device_node*, %struct.device_node** %6, align 8
  %133 = call i64 @of_find_property(%struct.device_node* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %264

135:                                              ; preds = %128
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = call i32 @platform_get_irq(%struct.platform_device* %136, i32 0)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %265

142:                                              ; preds = %135
  %143 = load i32, i32* @tb10x_gpio_to_irq, align 4
  %144 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %145 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %149 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @tb10x_gpio_irq_cascade, align 4
  %153 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %154 = load i32, i32* @IRQF_SHARED, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.device*, %struct.device** %5, align 8
  %157 = call i32 @dev_name(%struct.device* %156)
  %158 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %159 = call i32 @devm_request_irq(%struct.device* %150, i32 %151, i32 %152, i32 %155, i32 %157, %struct.tb10x_gpio* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %142
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %265

164:                                              ; preds = %142
  %165 = load %struct.device_node*, %struct.device_node** %6, align 8
  %166 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %167 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call %struct.TYPE_13__* @irq_domain_add_linear(%struct.device_node* %165, i32 %169, i32* @irq_generic_chip_ops, i32* null)
  %171 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %172 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %171, i32 0, i32 2
  store %struct.TYPE_13__* %170, %struct.TYPE_13__** %172, align 8
  %173 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %174 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %173, i32 0, i32 2
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = icmp ne %struct.TYPE_13__* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %164
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %265

180:                                              ; preds = %164
  %181 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %182 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %181, i32 0, i32 2
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %185 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %189 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @handle_edge_irq, align 4
  %193 = load i32, i32* @IRQ_NOREQUEST, align 4
  %194 = load i32, i32* @IRQ_NOPROBE, align 4
  %195 = load i32, i32* @IRQ_GC_INIT_MASK_CACHE, align 4
  %196 = call i32 @irq_alloc_domain_generic_chips(%struct.TYPE_13__* %183, i32 %187, i32 1, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %180
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %2, align 4
  br label %265

201:                                              ; preds = %180
  %202 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %203 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %202, i32 0, i32 2
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load %struct.irq_chip_generic**, %struct.irq_chip_generic*** %207, align 8
  %209 = getelementptr inbounds %struct.irq_chip_generic*, %struct.irq_chip_generic** %208, i64 0
  %210 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %209, align 8
  store %struct.irq_chip_generic* %210, %struct.irq_chip_generic** %9, align 8
  %211 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %4, align 8
  %212 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %215 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %214, i32 0, i32 1
  store i64 %213, i64* %215, align 8
  %216 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %217 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %218 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %217, i32 0, i32 0
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  store i32 %216, i32* %221, align 4
  %222 = load i32, i32* @irq_gc_ack_set_bit, align 4
  %223 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %224 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %223, i32 0, i32 0
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 3
  store i32 %222, i32* %228, align 4
  %229 = load i32, i32* @irq_gc_mask_clr_bit, align 4
  %230 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %231 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %230, i32 0, i32 0
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  store i32 %229, i32* %235, align 4
  %236 = load i32, i32* @irq_gc_mask_set_bit, align 4
  %237 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %238 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %237, i32 0, i32 0
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  store i32 %236, i32* %242, align 4
  %243 = load i32, i32* @tb10x_gpio_irq_set_type, align 4
  %244 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %245 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %244, i32 0, i32 0
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i64 0
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  store i32 %243, i32* %249, align 4
  %250 = load i32, i32* @OFFSET_TO_REG_CHANGE, align 4
  %251 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %252 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  store i32 %250, i32* %256, align 4
  %257 = load i32, i32* @OFFSET_TO_REG_INT_EN, align 4
  %258 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %259 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %258, i32 0, i32 0
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  store i32 %257, i32* %263, align 4
  br label %264

264:                                              ; preds = %201, %128
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %199, %177, %162, %140, %124, %89, %69, %48, %35, %26, %19
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.tb10x_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, %struct.device_node*) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_14__*, %struct.device*, i32, i64, i32*, i32*, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_14__*, %struct.tb10x_gpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tb10x_gpio*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.tb10x_gpio*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.TYPE_13__* @irq_domain_add_linear(%struct.device_node*, i32, i32*, i32*) #1

declare dso_local i32 @irq_alloc_domain_generic_chips(%struct.TYPE_13__*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
