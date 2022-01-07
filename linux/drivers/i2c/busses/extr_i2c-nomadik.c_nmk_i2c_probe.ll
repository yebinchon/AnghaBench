; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_nmk_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_nmk_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { %struct.TYPE_14__, %struct.TYPE_13__, i32* }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.amba_id = type { %struct.i2c_vendor_data* }
%struct.i2c_vendor_data = type { i32 }
%struct.nmk_i2c_dev = type { i64, i64, i32, i32, i32, %struct.i2c_adapter, i32, %struct.amba_device*, %struct.i2c_vendor_data* }
%struct.i2c_adapter = type { i32, i32, i32*, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.device_node* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"requested TX FIFO threshold %u, adjusted down to %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"requested RX FIFO threshold %u, adjusted down to %u\0A\00", align 1
@i2c_irq_handler = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot claim the irq %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"could not get i2c clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"can't prepare_enable clock\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@nmk_i2c_algo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Nomadik I2C at %pR\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"initialize %s on virtual base %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @nmk_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_i2c_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.nmk_i2c_dev*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.i2c_vendor_data*, align 8
  %11 = alloca i64, align 8
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %13 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.amba_id*, %struct.amba_id** %5, align 8
  %17 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %16, i32 0, i32 0
  %18 = load %struct.i2c_vendor_data*, %struct.i2c_vendor_data** %17, align 8
  store %struct.i2c_vendor_data* %18, %struct.i2c_vendor_data** %10, align 8
  %19 = load %struct.i2c_vendor_data*, %struct.i2c_vendor_data** %10, align 8
  %20 = getelementptr inbounds %struct.i2c_vendor_data, %struct.i2c_vendor_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 2
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %11, align 8
  %25 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %26 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.nmk_i2c_dev* @devm_kzalloc(%struct.TYPE_14__* %26, i32 96, i32 %27)
  store %struct.nmk_i2c_dev* %28, %struct.nmk_i2c_dev** %8, align 8
  %29 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %30 = icmp ne %struct.nmk_i2c_dev* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %33 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %32, i32 0, i32 0
  %34 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %219

37:                                               ; preds = %2
  %38 = load %struct.i2c_vendor_data*, %struct.i2c_vendor_data** %10, align 8
  %39 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %40 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %39, i32 0, i32 8
  store %struct.i2c_vendor_data* %38, %struct.i2c_vendor_data** %40, align 8
  %41 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %42 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %43 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %42, i32 0, i32 7
  store %struct.amba_device* %41, %struct.amba_device** %43, align 8
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %46 = call i32 @nmk_i2c_of_probe(%struct.device_node* %44, %struct.nmk_i2c_dev* %45)
  %47 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %48 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %37
  %53 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %54 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %53, i32 0, i32 0
  %55 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %56 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @dev_warn(%struct.TYPE_14__* %54, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %62 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %52, %37
  %64 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %65 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %71 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %70, i32 0, i32 0
  %72 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %73 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @dev_warn(%struct.TYPE_14__* %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %74, i64 %75)
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %79 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %69, %63
  %81 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %82 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %83 = call i32 @amba_set_drvdata(%struct.amba_device* %81, %struct.nmk_i2c_dev* %82)
  %84 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %85 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %84, i32 0, i32 0
  %86 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %87 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %91 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %90, i32 0, i32 1
  %92 = call i32 @resource_size(%struct.TYPE_13__* %91)
  %93 = call i32 @devm_ioremap(%struct.TYPE_14__* %85, i32 %89, i32 %92)
  %94 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %95 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %97 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %80
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %219

103:                                              ; preds = %80
  %104 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %105 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %110 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %112 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %111, i32 0, i32 0
  %113 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %114 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @i2c_irq_handler, align 4
  %117 = load i32, i32* @DRIVER_NAME, align 4
  %118 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %119 = call i32 @devm_request_irq(%struct.TYPE_14__* %112, i32 %115, i32 %116, i32 0, i32 %117, %struct.nmk_i2c_dev* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %103
  %123 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %124 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %123, i32 0, i32 0
  %125 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %126 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %219

129:                                              ; preds = %103
  %130 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %131 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %130, i32 0, i32 0
  %132 = call i32 @devm_clk_get(%struct.TYPE_14__* %131, i32* null)
  %133 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %134 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %136 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @IS_ERR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %129
  %141 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %142 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %141, i32 0, i32 0
  %143 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %144 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %145 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @PTR_ERR(i32 %146)
  store i32 %147, i32* %6, align 4
  br label %219

148:                                              ; preds = %129
  %149 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %150 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @clk_prepare_enable(i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %157 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %156, i32 0, i32 0
  %158 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %219

159:                                              ; preds = %148
  %160 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %161 = call i32 @init_hw(%struct.nmk_i2c_dev* %160)
  %162 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %163 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %162, i32 0, i32 5
  store %struct.i2c_adapter* %163, %struct.i2c_adapter** %9, align 8
  %164 = load %struct.device_node*, %struct.device_node** %7, align 8
  %165 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %166 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  store %struct.device_node* %164, %struct.device_node** %167, align 8
  %168 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %169 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %168, i32 0, i32 0
  %170 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %171 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store %struct.TYPE_14__* %169, %struct.TYPE_14__** %172, align 8
  %173 = load i32, i32* @THIS_MODULE, align 4
  %174 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %175 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %177 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %178 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %180 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %179, i32 0, i32 2
  store i32* @nmk_i2c_algo, i32** %180, align 8
  %181 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %182 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @msecs_to_jiffies(i32 %183)
  %185 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %186 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %188 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %191 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %190, i32 0, i32 1
  %192 = call i32 @snprintf(i32 %189, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_13__* %191)
  %193 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %194 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %195 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %193, %struct.nmk_i2c_dev* %194)
  %196 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %197 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %196, i32 0, i32 0
  %198 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %199 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %202 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @dev_info(%struct.TYPE_14__* %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %200, i32 %203)
  %205 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %206 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %205)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %159
  br label %214

210:                                              ; preds = %159
  %211 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %212 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %211, i32 0, i32 0
  %213 = call i32 @pm_runtime_put(%struct.TYPE_14__* %212)
  store i32 0, i32* %3, align 4
  br label %221

214:                                              ; preds = %209
  %215 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %8, align 8
  %216 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @clk_disable_unprepare(i32 %217)
  br label %219

219:                                              ; preds = %214, %155, %140, %122, %100, %31
  %220 = load i32, i32* %6, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %219, %210
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local %struct.nmk_i2c_dev* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @nmk_i2c_of_probe(%struct.device_node*, %struct.nmk_i2c_dev*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_14__*, i8*, i64, i64) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.nmk_i2c_dev*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.nmk_i2c_dev*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @init_hw(%struct.nmk_i2c_dev*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.nmk_i2c_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_14__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
