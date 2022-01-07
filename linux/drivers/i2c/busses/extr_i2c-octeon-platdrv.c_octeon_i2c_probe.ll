; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-platdrv.c_octeon_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-platdrv.c_octeon_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32*, i32 }
%struct.TYPE_12__ = type { %struct.device_node*, %struct.TYPE_14__* }
%struct.device_node = type { i32 }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.platform_device = type { %struct.TYPE_14__ }
%struct.resource = type { i32 }
%struct.octeon_i2c = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__, i8*, i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"cavium,octeon-7890-twsi\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"clock-rate\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"no I2C 'clock-rate' or 'clock-frequency' property\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@octeon_i2c_int_enable78 = common dso_local global i32 0, align 4
@octeon_i2c_int_disable78 = common dso_local global i8* null, align 8
@octeon_i2c_hlc_int_enable78 = common dso_local global i32 0, align 4
@octeon_i2c_hlc_int_disable78 = common dso_local global i8* null, align 8
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@octeon_i2c_hlc_isr78 = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to attach interrupt\0A\00", align 1
@octeon_i2c_int_enable = common dso_local global i32 0, align 4
@octeon_i2c_int_disable = common dso_local global i8* null, align 8
@octeon_i2c_hlc_int_enable = common dso_local global i32 0, align 4
@octeon_i2c_isr = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"init low level failed\0A\00", align 1
@octeon_i2c_ops = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@octeon_i2c_recovery_info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.octeon_i2c*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32 @of_device_is_compatible(%struct.device_node* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %253

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @platform_get_irq(%struct.platform_device* %27, i32 2)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %253

33:                                               ; preds = %26
  br label %42

34:                                               ; preds = %1
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @platform_get_irq(%struct.platform_device* %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %253

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.octeon_i2c* @devm_kzalloc(%struct.TYPE_14__* %44, i32 120, i32 %45)
  store %struct.octeon_i2c* %46, %struct.octeon_i2c** %9, align 8
  %47 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %48 = icmp ne %struct.octeon_i2c* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %251

52:                                               ; preds = %42
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %56 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %55, i32 0, i32 3
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %56, align 8
  %57 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %58 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %57, i32 0, i32 13
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %61 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %60, i32 0, i32 13
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 16, i32* %62, align 4
  %63 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %64 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %63, i32 0, i32 13
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i32 24, i32* %65, align 4
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load i32, i32* @IORESOURCE_MEM, align 4
  %68 = call %struct.resource* @platform_get_resource(%struct.platform_device* %66, i32 %67, i32 0)
  store %struct.resource* %68, %struct.resource** %8, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.resource*, %struct.resource** %8, align 8
  %72 = call i32 @devm_ioremap_resource(%struct.TYPE_14__* %70, %struct.resource* %71)
  %73 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %74 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %73, i32 0, i32 12
  store i32 %72, i32* %74, align 8
  %75 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %76 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %52
  %81 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %82 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %6, align 4
  br label %251

85:                                               ; preds = %52
  %86 = load %struct.device_node*, %struct.device_node** %4, align 8
  %87 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %88 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %87, i32 0, i32 11
  %89 = call i64 @of_property_read_u32(%struct.device_node* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.device_node*, %struct.device_node** %4, align 8
  %93 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %94 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %93, i32 0, i32 11
  %95 = call i64 @of_property_read_u32(%struct.device_node* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %99 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %98, i32 0, i32 3
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = call i32 @dev_err(%struct.TYPE_14__* %100, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @ENXIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %251

104:                                              ; preds = %91, %85
  %105 = call i32 (...) @octeon_get_io_clock_rate()
  %106 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %107 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 8
  %108 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %109 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %108, i32 0, i32 9
  %110 = call i32 @init_waitqueue_head(i32* %109)
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %113 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %159

116:                                              ; preds = %104
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %119 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @octeon_i2c_int_enable78, align 4
  %121 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %122 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 8
  %123 = load i8*, i8** @octeon_i2c_int_disable78, align 8
  %124 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %125 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @octeon_i2c_hlc_int_enable78, align 4
  %127 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %128 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  %129 = load i8*, i8** @octeon_i2c_hlc_int_disable78, align 8
  %130 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %131 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %130, i32 0, i32 5
  store i8* %129, i8** %131, align 8
  %132 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %133 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %136 = call i32 @irq_set_status_flags(i32 %134, i32 %135)
  %137 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %138 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %141 = call i32 @irq_set_status_flags(i32 %139, i32 %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %145 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @octeon_i2c_hlc_isr78, align 4
  %148 = load i32, i32* @DRV_NAME, align 4
  %149 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %150 = call i32 @devm_request_irq(%struct.TYPE_14__* %143, i32 %146, i32 %147, i32 0, i32 %148, %struct.octeon_i2c* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %116
  %154 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %155 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %154, i32 0, i32 3
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = call i32 @dev_err(%struct.TYPE_14__* %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %251

158:                                              ; preds = %116
  br label %172

159:                                              ; preds = %104
  %160 = load i32, i32* @octeon_i2c_int_enable, align 4
  %161 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %162 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 8
  %163 = load i8*, i8** @octeon_i2c_int_disable, align 8
  %164 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %165 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %164, i32 0, i32 7
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* @octeon_i2c_hlc_int_enable, align 4
  %167 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %168 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load i8*, i8** @octeon_i2c_int_disable, align 8
  %170 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %171 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %159, %158
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %176 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @octeon_i2c_isr, align 4
  %179 = load i32, i32* @DRV_NAME, align 4
  %180 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %181 = call i32 @devm_request_irq(%struct.TYPE_14__* %174, i32 %177, i32 %178, i32 0, i32 %179, %struct.octeon_i2c* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %172
  %185 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %186 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %185, i32 0, i32 3
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = call i32 @dev_err(%struct.TYPE_14__* %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %251

189:                                              ; preds = %172
  %190 = load i32, i32* @OCTEON_CN38XX, align 4
  %191 = call i64 @OCTEON_IS_MODEL(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %195 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %194, i32 0, i32 2
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %189
  %197 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %198 = call i32 @octeon_i2c_init_lowlevel(%struct.octeon_i2c* %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %203 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %202, i32 0, i32 3
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = call i32 @dev_err(%struct.TYPE_14__* %204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %251

206:                                              ; preds = %196
  %207 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %208 = call i32 @octeon_i2c_set_clock(%struct.octeon_i2c* %207)
  %209 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %210 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %209, i32 0, i32 4
  %211 = bitcast %struct.TYPE_13__* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 bitcast (%struct.TYPE_13__* @octeon_i2c_ops to i8*), i64 40, i1 false)
  %212 = call i32 @msecs_to_jiffies(i32 2)
  %213 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %214 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 3
  store i32 %212, i32* %215, align 8
  %216 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %217 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  store i32 5, i32* %218, align 8
  %219 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %220 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  store i32* @octeon_i2c_recovery_info, i32** %221, align 8
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %225 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  store %struct.TYPE_14__* %223, %struct.TYPE_14__** %227, align 8
  %228 = load %struct.device_node*, %struct.device_node** %4, align 8
  %229 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %230 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  store %struct.device_node* %228, %struct.device_node** %232, align 8
  %233 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %234 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %233, i32 0, i32 4
  %235 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %236 = call i32 @i2c_set_adapdata(%struct.TYPE_13__* %234, %struct.octeon_i2c* %235)
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %239 = call i32 @platform_set_drvdata(%struct.platform_device* %237, %struct.octeon_i2c* %238)
  %240 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %241 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %240, i32 0, i32 4
  %242 = call i32 @i2c_add_adapter(%struct.TYPE_13__* %241)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %206
  br label %251

246:                                              ; preds = %206
  %247 = load %struct.octeon_i2c*, %struct.octeon_i2c** %9, align 8
  %248 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %247, i32 0, i32 3
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = call i32 @dev_info(%struct.TYPE_14__* %249, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %253

251:                                              ; preds = %245, %201, %184, %153, %97, %80, %49
  %252 = load i32, i32* %6, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %251, %246, %39, %31, %24
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.octeon_i2c* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @octeon_get_io_clock_rate(...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.octeon_i2c*) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @octeon_i2c_init_lowlevel(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_set_clock(%struct.octeon_i2c*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_13__*, %struct.octeon_i2c*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.octeon_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
