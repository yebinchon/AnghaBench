; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.omap4_keypad = type { i32, i32, i32, i32, i32, i64, %struct.omap4_keypad*, %struct.input_dev*, i32, i32 }
%struct.input_dev = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no base address specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no keyboard irq assigned\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"keypad_data memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"can't request mem region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"can't ioremap mem resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"pm_runtime_get_sync() failed\0A\00", align 1
@OMAP4_KBD_REVISION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Keypad reports unsupported revision %d\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@omap4_keypad_open = common dso_local global i32 0, align 4
@omap4_keypad_close = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Not enough memory for keymap\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@omap4_keypad_irq_handler = common dso_local global i32 0, align 4
@omap4_keypad_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"omap4-keypad\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to register interrupt\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap4_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_keypad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap4_keypad*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @IORESOURCE_MEM, align 4
  %13 = call %struct.resource* @platform_get_resource(%struct.platform_device* %11, i32 %12, i32 0)
  store %struct.resource* %13, %struct.resource** %6, align 8
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %310

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @platform_get_irq(%struct.platform_device* %23, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %310

33:                                               ; preds = %22
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.omap4_keypad* @kzalloc(i32 56, i32 %34)
  store %struct.omap4_keypad* %35, %struct.omap4_keypad** %4, align 8
  %36 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %37 = icmp ne %struct.omap4_keypad* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %310

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %47 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %51 = call i32 @omap4_keypad_parse_dt(i32* %49, %struct.omap4_keypad* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %306

55:                                               ; preds = %44
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = call i32 @resource_size(%struct.resource* %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.resource* @request_mem_region(i32 %58, i32 %60, i32 %63)
  store %struct.resource* %64, %struct.resource** %6, align 8
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = icmp ne %struct.resource* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %55
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %306

73:                                               ; preds = %55
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = call i32 @resource_size(%struct.resource* %77)
  %79 = call i64 @ioremap(i32 %76, i32 %78)
  %80 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %81 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  %82 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %83 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %73
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %299

92:                                               ; preds = %73
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @pm_runtime_enable(i32* %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @pm_runtime_get_sync(i32* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %294

105:                                              ; preds = %92
  %106 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %107 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @OMAP4_KBD_REVISION, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @__raw_readl(i64 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, -1073741824
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 30
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  switch i32 %116, label %127 [
    i32 129, label %117
    i32 128, label %122
  ]

117:                                              ; preds = %105
  %118 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %119 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %121 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %120, i32 0, i32 2
  store i32 0, i32* %121, align 8
  br label %134

122:                                              ; preds = %105
  %123 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %124 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %123, i32 0, i32 1
  store i32 16, i32* %124, align 4
  %125 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %126 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %125, i32 0, i32 2
  store i32 12, i32* %126, align 8
  br label %134

127:                                              ; preds = %105
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %10, align 4
  br label %290

134:                                              ; preds = %122, %117
  %135 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %135, %struct.input_dev** %5, align 8
  %136 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %137 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %136, i32 0, i32 7
  store %struct.input_dev* %135, %struct.input_dev** %137, align 8
  %138 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %139 = icmp ne %struct.input_dev* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %10, align 4
  br label %290

143:                                              ; preds = %134
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %148 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %152 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32* %150, i32** %153, align 8
  %154 = load i32, i32* @BUS_HOST, align 4
  %155 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %156 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  store i32 %154, i32* %157, align 4
  %158 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %159 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 4
  %161 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %162 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  %164 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %165 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  store i32 1, i32* %166, align 4
  %167 = load i32, i32* @omap4_keypad_open, align 4
  %168 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %169 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* @omap4_keypad_close, align 4
  %171 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %172 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %174 = load i32, i32* @EV_MSC, align 4
  %175 = load i32, i32* @MSC_SCAN, align 4
  %176 = call i32 @input_set_capability(%struct.input_dev* %173, i32 %174, i32 %175)
  %177 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %178 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %143
  %182 = load i32, i32* @EV_REP, align 4
  %183 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %184 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @__set_bit(i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %181, %143
  %188 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %189 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %190 = call i32 @input_set_drvdata(%struct.input_dev* %188, %struct.omap4_keypad* %189)
  %191 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %192 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @get_count_order(i32 %193)
  %195 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %196 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  %197 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %198 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %201 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %199, %202
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call %struct.omap4_keypad* @kcalloc(i32 %204, i32 56, i32 %205)
  %207 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %208 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %207, i32 0, i32 6
  store %struct.omap4_keypad* %206, %struct.omap4_keypad** %208, align 8
  %209 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %210 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %209, i32 0, i32 6
  %211 = load %struct.omap4_keypad*, %struct.omap4_keypad** %210, align 8
  %212 = icmp ne %struct.omap4_keypad* %211, null
  br i1 %212, label %219, label %213

213:                                              ; preds = %187
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = call i32 (i32*, i8*, ...) @dev_err(i32* %215, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %10, align 4
  br label %287

219:                                              ; preds = %187
  %220 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %221 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %224 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %227 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %226, i32 0, i32 6
  %228 = load %struct.omap4_keypad*, %struct.omap4_keypad** %227, align 8
  %229 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %230 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %222, i32 %225, %struct.omap4_keypad* %228, %struct.input_dev* %229)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %219
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = call i32 (i32*, i8*, ...) @dev_err(i32* %235, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %282

237:                                              ; preds = %219
  %238 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %239 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @omap4_keypad_irq_handler, align 4
  %242 = load i32, i32* @omap4_keypad_irq_thread_fn, align 4
  %243 = load i32, i32* @IRQF_ONESHOT, align 4
  %244 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %245 = call i32 @request_threaded_irq(i32 %240, i32 %241, i32 %242, i32 %243, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct.omap4_keypad* %244)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %237
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = call i32 (i32*, i8*, ...) @dev_err(i32* %250, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %282

252:                                              ; preds = %237
  %253 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %254 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %253, i32 0, i32 0
  %255 = call i32 @device_init_wakeup(i32* %254, i32 1)
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = call i32 @pm_runtime_put_sync(i32* %257)
  %259 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %260 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %259, i32 0, i32 7
  %261 = load %struct.input_dev*, %struct.input_dev** %260, align 8
  %262 = call i32 @input_register_device(%struct.input_dev* %261)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %252
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %266, i32 0, i32 0
  %268 = call i32 (i32*, i8*, ...) @dev_err(i32* %267, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %273

269:                                              ; preds = %252
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %272 = call i32 @platform_set_drvdata(%struct.platform_device* %270, %struct.omap4_keypad* %271)
  store i32 0, i32* %2, align 4
  br label %310

273:                                              ; preds = %265
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = call i32 @pm_runtime_disable(i32* %275)
  %277 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %278 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %281 = call i32 @free_irq(i32 %279, %struct.omap4_keypad* %280)
  br label %282

282:                                              ; preds = %273, %248, %233
  %283 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %284 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %283, i32 0, i32 6
  %285 = load %struct.omap4_keypad*, %struct.omap4_keypad** %284, align 8
  %286 = call i32 @kfree(%struct.omap4_keypad* %285)
  br label %287

287:                                              ; preds = %282, %213
  %288 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %289 = call i32 @input_free_device(%struct.input_dev* %288)
  br label %290

290:                                              ; preds = %287, %140, %127
  %291 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %292 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %291, i32 0, i32 0
  %293 = call i32 @pm_runtime_put_sync(i32* %292)
  br label %294

294:                                              ; preds = %290, %101
  %295 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %296 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @iounmap(i64 %297)
  br label %299

299:                                              ; preds = %294, %86
  %300 = load %struct.resource*, %struct.resource** %6, align 8
  %301 = getelementptr inbounds %struct.resource, %struct.resource* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.resource*, %struct.resource** %6, align 8
  %304 = call i32 @resource_size(%struct.resource* %303)
  %305 = call i32 @release_mem_region(i32 %302, i32 %304)
  br label %306

306:                                              ; preds = %299, %67, %54
  %307 = load %struct.omap4_keypad*, %struct.omap4_keypad** %4, align 8
  %308 = call i32 @kfree(%struct.omap4_keypad* %307)
  %309 = load i32, i32* %10, align 4
  store i32 %309, i32* %2, align 4
  br label %310

310:                                              ; preds = %306, %269, %38, %27, %16
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.omap4_keypad* @kzalloc(i32, i32) #1

declare dso_local i32 @omap4_keypad_parse_dt(i32*, %struct.omap4_keypad*) #1

declare dso_local %struct.resource* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.omap4_keypad*) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local %struct.omap4_keypad* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, %struct.omap4_keypad*, %struct.input_dev*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.omap4_keypad*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap4_keypad*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.omap4_keypad*) #1

declare dso_local i32 @kfree(%struct.omap4_keypad*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
