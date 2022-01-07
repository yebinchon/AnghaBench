; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pca-platform.c_i2c_pca_pf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pca-platform.c_i2c_pca_pf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_pca_pf_data = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, i64, i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.device_node*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.i2c_pca_pf_data* }
%struct.resource = type { i32, i64 }
%struct.i2c_pca9564_pf_platform_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PCA9564/PCA9665 at 0x%08lx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@i2c_pca_pf_waitforcompletion = common dso_local global i32 0, align 4
@i2c_pca_pf_resetchip = common dso_local global i32 0, align 4
@i2c_pca_pf_dummyreset = common dso_local global i32 0, align 4
@IORESOURCE_MEM_TYPE_MASK = common dso_local global i32 0, align 4
@i2c_pca_pf_writebyte32 = common dso_local global i32 0, align 4
@i2c_pca_pf_readbyte32 = common dso_local global i32 0, align 4
@i2c_pca_pf_writebyte16 = common dso_local global i32 0, align 4
@i2c_pca_pf_readbyte16 = common dso_local global i32 0, align 4
@i2c_pca_pf_writebyte8 = common dso_local global i32 0, align 4
@i2c_pca_pf_readbyte8 = common dso_local global i32 0, align 4
@i2c_pca_pf_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_pca_pf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pca_pf_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_pca_pf_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.i2c_pca9564_pf_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.i2c_pca9564_pf_platform_data* @dev_get_platdata(%struct.TYPE_14__* %11)
  store %struct.i2c_pca9564_pf_platform_data* %12, %struct.i2c_pca9564_pf_platform_data** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @platform_get_irq(%struct.platform_device* %17, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.i2c_pca_pf_data* @devm_kzalloc(%struct.TYPE_14__* %24, i32 128, i32 %25)
  store %struct.i2c_pca_pf_data* %26, %struct.i2c_pca_pf_data** %4, align 8
  %27 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %28 = icmp ne %struct.i2c_pca_pf_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %242

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i64 @devm_ioremap_resource(%struct.TYPE_14__* %37, %struct.resource* %38)
  %40 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %40, i32 0, i32 7
  store i64 %39, i64* %41, align 8
  %42 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @IS_ERR(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @PTR_ERR(i64 %50)
  store i32 %51, i32* %2, align 4
  br label %242

52:                                               ; preds = %32
  %53 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %53, i32 0, i32 6
  %55 = call i32 @init_waitqueue_head(i32* %54)
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = call i32 @resource_size(%struct.resource* %61)
  %63 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @THIS_MODULE, align 4
  %75 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 4
  %78 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.resource*, %struct.resource** %5, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @snprintf(i32 %81, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %86, i32 0, i32 2
  %88 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %96, align 8
  %97 = load %struct.device_node*, %struct.device_node** %7, align 8
  %98 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store %struct.device_node* %97, %struct.device_node** %101, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %105 = call i64 @devm_gpiod_get_optional(%struct.TYPE_14__* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  %108 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @IS_ERR(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %52
  %114 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @PTR_ERR(i64 %116)
  store i32 %117, i32* %2, align 4
  br label %242

118:                                              ; preds = %52
  %119 = load i32, i32* @HZ, align 4
  %120 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = call i32 @device_property_read_u32(%struct.TYPE_14__* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32 59000, i32* %134, align 8
  br label %135

135:                                              ; preds = %131, %118
  %136 = load %struct.i2c_pca9564_pf_platform_data*, %struct.i2c_pca9564_pf_platform_data** %6, align 8
  %137 = icmp ne %struct.i2c_pca9564_pf_platform_data* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.i2c_pca9564_pf_platform_data*, %struct.i2c_pca9564_pf_platform_data** %6, align 8
  %140 = getelementptr inbounds %struct.i2c_pca9564_pf_platform_data, %struct.i2c_pca9564_pf_platform_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %struct.i2c_pca9564_pf_platform_data*, %struct.i2c_pca9564_pf_platform_data** %6, align 8
  %146 = getelementptr inbounds %struct.i2c_pca9564_pf_platform_data, %struct.i2c_pca9564_pf_platform_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  br label %151

151:                                              ; preds = %138, %135
  %152 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %153 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 5
  store %struct.i2c_pca_pf_data* %152, %struct.i2c_pca_pf_data** %155, align 8
  %156 = load i32, i32* @i2c_pca_pf_waitforcompletion, align 4
  %157 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %158 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 4
  store i32 %156, i32* %159, align 8
  %160 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %161 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %151
  %165 = load i32, i32* @i2c_pca_pf_resetchip, align 4
  %166 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 3
  store i32 %165, i32* %168, align 4
  br label %174

169:                                              ; preds = %151
  %170 = load i32, i32* @i2c_pca_pf_dummyreset, align 4
  %171 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %172 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  store i32 %170, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %164
  %175 = load %struct.resource*, %struct.resource** %5, align 8
  %176 = getelementptr inbounds %struct.resource, %struct.resource* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IORESOURCE_MEM_TYPE_MASK, align 4
  %179 = and i32 %177, %178
  switch i32 %179, label %199 [
    i32 129, label %180
    i32 130, label %189
    i32 128, label %198
  ]

180:                                              ; preds = %174
  %181 = load i32, i32* @i2c_pca_pf_writebyte32, align 4
  %182 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  store i32 %181, i32* %184, align 8
  %185 = load i32, i32* @i2c_pca_pf_readbyte32, align 4
  %186 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  br label %208

189:                                              ; preds = %174
  %190 = load i32, i32* @i2c_pca_pf_writebyte16, align 4
  %191 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %192 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  store i32 %190, i32* %193, align 8
  %194 = load i32, i32* @i2c_pca_pf_readbyte16, align 4
  %195 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %196 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 4
  br label %208

198:                                              ; preds = %174
  br label %199

199:                                              ; preds = %174, %198
  %200 = load i32, i32* @i2c_pca_pf_writebyte8, align 4
  %201 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %202 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  store i32 %200, i32* %203, align 8
  %204 = load i32, i32* @i2c_pca_pf_readbyte8, align 4
  %205 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %206 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  store i32 %204, i32* %207, align 4
  br label %208

208:                                              ; preds = %199, %189, %180
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %208
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @i2c_pca_pf_handler, align 4
  %216 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %221 = call i32 @devm_request_irq(%struct.TYPE_14__* %213, i32 %214, i32 %215, i32 %216, i32 %219, %struct.i2c_pca_pf_data* %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %211
  %225 = load i32, i32* %8, align 4
  store i32 %225, i32* %2, align 4
  br label %242

226:                                              ; preds = %211
  br label %227

227:                                              ; preds = %226, %208
  %228 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %229 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %228, i32 0, i32 1
  %230 = call i32 @i2c_pca_add_numbered_bus(%struct.TYPE_13__* %229)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %2, align 4
  br label %242

235:                                              ; preds = %227
  %236 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %237 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %4, align 8
  %238 = call i32 @platform_set_drvdata(%struct.platform_device* %236, %struct.i2c_pca_pf_data* %237)
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i32 @dev_info(%struct.TYPE_14__* %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %235, %233, %224, %113, %47, %29
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.i2c_pca9564_pf_platform_data* @dev_get_platdata(%struct.TYPE_14__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.i2c_pca_pf_data* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i64 @devm_gpiod_get_optional(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.i2c_pca_pf_data*) #1

declare dso_local i32 @i2c_pca_add_numbered_bus(%struct.TYPE_13__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_pca_pf_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
