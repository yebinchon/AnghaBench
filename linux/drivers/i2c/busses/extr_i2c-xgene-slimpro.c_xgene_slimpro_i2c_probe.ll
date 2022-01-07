; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_xgene_slimpro_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_xgene_slimpro_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.slimpro_i2c_dev = type { %struct.TYPE_21__*, %struct.i2c_adapter, i8*, i32, i32, i32, %struct.mbox_client, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.acpi_pcct_hw_reduced* }
%struct.TYPE_20__ = type { i32 }
%struct.acpi_pcct_hw_reduced = type { i32, i32 }
%struct.i2c_adapter = type { %struct.TYPE_18__, i32, i32*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_22__* }
%struct.mbox_client = type { i32, i32, i32, i32, %struct.TYPE_22__* }
%struct.acpi_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAILBOX_OP_TIMEOUT = common dso_local global i32 0, align 4
@acpi_disabled = common dso_local global i64 0, align 8
@slimpro_i2c_rx_cb = common dso_local global i32 0, align 4
@MAILBOX_I2C_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"i2c mailbox channel request failed\0A\00", align 1
@XGENE_SLIMPRO_I2C_V1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pcc-channel\00", align 1
@slimpro_i2c_pcc_rx_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"PCC mailbox channel request failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"PPC subspace not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"PCC IRQ not supported\0A\00", align 1
@XGENE_SLIMPRO_I2C_V2 = common dso_local global i32 0, align 4
@MEMREMAP_WT = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to get PCC comm region\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to ioremap PCC comm region\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Unable to set dma mask\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"MAILBOX I2C\00", align 1
@xgene_slimpro_i2c_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Mailbox I2C Adapter registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_slimpro_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_slimpro_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.slimpro_i2c_dev*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.mbox_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_pcct_hw_reduced*, align 8
  %9 = alloca %struct.acpi_device_id*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.slimpro_i2c_dev* @devm_kzalloc(%struct.TYPE_22__* %12, i32 104, i32 %13)
  store %struct.slimpro_i2c_dev* %14, %struct.slimpro_i2c_dev** %4, align 8
  %15 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %16 = icmp ne %struct.slimpro_i2c_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %278

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %24 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %23, i32 0, i32 7
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.slimpro_i2c_dev* %26)
  %28 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %29 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %28, i32 0, i32 6
  store %struct.mbox_client* %29, %struct.mbox_client** %6, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %33 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %32, i32 0, i32 4
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %33, align 8
  %34 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %35 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %34, i32 0, i32 5
  %36 = call i32 @init_completion(i32* %35)
  %37 = load i32, i32* @MAILBOX_OP_TIMEOUT, align 4
  %38 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %39 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %41 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i64, i64* @acpi_disabled, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %20
  %45 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %46 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @slimpro_i2c_rx_cb, align 4
  %48 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %49 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %51 = load i32, i32* @MAILBOX_I2C_INDEX, align 4
  %52 = call %struct.TYPE_21__* @mbox_request_channel(%struct.mbox_client* %50, i32 %51)
  %53 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %54 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %53, i32 0, i32 0
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %54, align 8
  %55 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %56 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = call i64 @IS_ERR(%struct.TYPE_21__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %44
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_err(%struct.TYPE_22__* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %65 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.TYPE_21__* %66)
  store i32 %67, i32* %2, align 4
  br label %278

68:                                               ; preds = %44
  br label %210

69:                                               ; preds = %20
  %70 = load i32, i32* @XGENE_SLIMPRO_I2C_V1, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call %struct.acpi_device_id* @acpi_match_device(i32 %76, %struct.TYPE_22__* %78)
  store %struct.acpi_device_id* %79, %struct.acpi_device_id** %9, align 8
  %80 = load %struct.acpi_device_id*, %struct.acpi_device_id** %9, align 8
  %81 = icmp ne %struct.acpi_device_id* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %69
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %278

85:                                               ; preds = %69
  %86 = load %struct.acpi_device_id*, %struct.acpi_device_id** %9, align 8
  %87 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %93 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %92, i32 0, i32 4
  %94 = call i64 @device_property_read_u32(%struct.TYPE_22__* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i32, i32* @MAILBOX_I2C_INDEX, align 4
  %98 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %99 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %85
  %101 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %102 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load i32, i32* @slimpro_i2c_pcc_rx_cb, align 4
  %104 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %105 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.mbox_client*, %struct.mbox_client** %6, align 8
  %107 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %108 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_21__* @pcc_mbox_request_channel(%struct.mbox_client* %106, i32 %109)
  %111 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %112 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %111, i32 0, i32 0
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %112, align 8
  %113 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %114 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %114, align 8
  %116 = call i64 @IS_ERR(%struct.TYPE_21__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %100
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @dev_err(%struct.TYPE_22__* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %123 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %123, align 8
  %125 = call i32 @PTR_ERR(%struct.TYPE_21__* %124)
  store i32 %125, i32* %2, align 4
  br label %278

126:                                              ; preds = %100
  %127 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %128 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %127, i32 0, i32 0
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %130, align 8
  store %struct.acpi_pcct_hw_reduced* %131, %struct.acpi_pcct_hw_reduced** %8, align 8
  %132 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %8, align 8
  %133 = icmp ne %struct.acpi_pcct_hw_reduced* %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %126
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @dev_err(%struct.TYPE_22__* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @ENOENT, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %7, align 4
  br label %263

140:                                              ; preds = %126
  %141 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %142 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %140
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @dev_err(%struct.TYPE_22__* %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %153 = load i32, i32* @ENOENT, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  br label %263

155:                                              ; preds = %140
  %156 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %8, align 8
  %157 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %160 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %162 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %192

165:                                              ; preds = %155
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @XGENE_SLIMPRO_I2C_V2, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %171 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %8, align 8
  %174 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MEMREMAP_WT, align 4
  %177 = call i8* @memremap(i32 %172, i32 %175, i32 %176)
  %178 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %179 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  br label %191

180:                                              ; preds = %165
  %181 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %182 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %8, align 8
  %185 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @MEMREMAP_WB, align 4
  %188 = call i8* @memremap(i32 %183, i32 %186, i32 %187)
  %189 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %190 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %180, %169
  br label %198

192:                                              ; preds = %155
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = call i32 @dev_err(%struct.TYPE_22__* %194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %196 = load i32, i32* @ENOENT, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %7, align 4
  br label %263

198:                                              ; preds = %191
  %199 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %200 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %209, label %203

203:                                              ; preds = %198
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call i32 @dev_err(%struct.TYPE_22__* %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %7, align 4
  br label %263

209:                                              ; preds = %198
  br label %210

210:                                              ; preds = %209, %68
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = call i32 @DMA_BIT_MASK(i32 64)
  %214 = call i32 @dma_set_mask_and_coherent(%struct.TYPE_22__* %212, i32 %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %210
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = call i32 @dev_warn(%struct.TYPE_22__* %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %221

221:                                              ; preds = %217, %210
  %222 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %223 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %222, i32 0, i32 1
  store %struct.i2c_adapter* %223, %struct.i2c_adapter** %5, align 8
  %224 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %225 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @snprintf(i32 %226, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %228 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %229 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %228, i32 0, i32 2
  store i32* @xgene_slimpro_i2c_algorithm, i32** %229, align 8
  %230 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %231 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %232 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %236 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  store %struct.TYPE_22__* %234, %struct.TYPE_22__** %237, align 8
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %243 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  store i32 %241, i32* %244, align 8
  %245 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %246 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %245, i32 0, i32 0
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = call i32 @ACPI_COMPANION(%struct.TYPE_22__* %248)
  %250 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_18__* %246, i32 %249)
  %251 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %252 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %253 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %251, %struct.slimpro_i2c_dev* %252)
  %254 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %255 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %254)
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %221
  br label %263

259:                                              ; preds = %221
  %260 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %261 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %260, i32 0, i32 0
  %262 = call i32 @dev_info(%struct.TYPE_22__* %261, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %278

263:                                              ; preds = %258, %203, %192, %149, %134
  %264 = load i64, i64* @acpi_disabled, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %268 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %267, i32 0, i32 0
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %268, align 8
  %270 = call i32 @mbox_free_channel(%struct.TYPE_21__* %269)
  br label %276

271:                                              ; preds = %263
  %272 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %4, align 8
  %273 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %272, i32 0, i32 0
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %273, align 8
  %275 = call i32 @pcc_mbox_free_channel(%struct.TYPE_21__* %274)
  br label %276

276:                                              ; preds = %271, %266
  %277 = load i32, i32* %7, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %276, %259, %118, %82, %60, %17
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.slimpro_i2c_dev* @devm_kzalloc(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.slimpro_i2c_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.TYPE_21__* @mbox_request_channel(%struct.mbox_client*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_21__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_21__*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_22__*) #1

declare dso_local i64 @device_property_read_u32(%struct.TYPE_22__*, i8*, i32*) #1

declare dso_local %struct.TYPE_21__* @pcc_mbox_request_channel(%struct.mbox_client*, i32) #1

declare dso_local i8* @memremap(i32, i32, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.TYPE_22__*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.slimpro_i2c_dev*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @mbox_free_channel(%struct.TYPE_21__*) #1

declare dso_local i32 @pcc_mbox_free_channel(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
