; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32* }
%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bcm_iproc_i2c_dev = type { i32, i32, %struct.TYPE_10__*, %struct.i2c_adapter, i32, i32, i8*, i8*, i32 }
%struct.i2c_adapter = type { %struct.TYPE_9__, i32*, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IPROC_I2C_NIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"brcm,ape-hsls-addr-mask\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"'brcm,ape-hsls-addr-mask' missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bcm_iproc_algo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@bcm_iproc_i2c_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to request irq %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"no irq resource, falling back to poll mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Broadcom iProc (%s)\00", align 1
@bcm_iproc_i2c_quirks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_iproc_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_iproc_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_iproc_i2c_dev*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.bcm_iproc_i2c_dev* @devm_kzalloc(%struct.TYPE_10__* %10, i32 88, i32 %11)
  store %struct.bcm_iproc_i2c_dev* %12, %struct.bcm_iproc_i2c_dev** %6, align 8
  %13 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %14 = icmp ne %struct.bcm_iproc_i2c_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %189

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.bcm_iproc_i2c_dev* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %25 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %24, i32 0, i32 2
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i64 @of_device_get_match_data(%struct.TYPE_10__* %27)
  %29 = trunc i64 %28 to i32
  %30 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %31 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %33 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %32, i32 0, i32 8
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %8, align 8
  %38 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %39 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = call i8* @devm_ioremap_resource(%struct.TYPE_10__* %40, %struct.resource* %41)
  %43 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %44 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %46 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %45, i32 0, i32 7
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %18
  %51 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %52 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %51, i32 0, i32 7
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %189

55:                                               ; preds = %18
  %56 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %57 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @IPROC_I2C_NIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %55
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load i32, i32* @IORESOURCE_MEM, align 4
  %65 = call %struct.resource* @platform_get_resource(%struct.platform_device* %63, i32 %64, i32 1)
  store %struct.resource* %65, %struct.resource** %8, align 8
  %66 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %67 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load %struct.resource*, %struct.resource** %8, align 8
  %70 = call i8* @devm_ioremap_resource(%struct.TYPE_10__* %68, %struct.resource* %69)
  %71 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %72 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %74 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %80 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %79, i32 0, i32 6
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %2, align 4
  br label %189

83:                                               ; preds = %62
  %84 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %85 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %90 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %89, i32 0, i32 5
  %91 = call i32 @of_property_read_u32(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %83
  %95 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %96 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %95, i32 0, i32 2
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %189

101:                                              ; preds = %83
  %102 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %103 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %102, i32 0, i32 4
  %104 = call i32 @spin_lock_init(i32* %103)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bcm_iproc_algo, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bcm_iproc_algo, i32 0, i32 0), align 8
  br label %105

105:                                              ; preds = %101, %55
  %106 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %107 = call i32 @bcm_iproc_i2c_init(%struct.bcm_iproc_i2c_dev* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %189

112:                                              ; preds = %105
  %113 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %114 = call i32 @bcm_iproc_i2c_cfg_speed(%struct.bcm_iproc_i2c_dev* %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %189

119:                                              ; preds = %112
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i32 @platform_get_irq(%struct.platform_device* %120, i32 0)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %119
  %125 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %126 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @bcm_iproc_i2c_isr, align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %134 = call i32 @devm_request_irq(%struct.TYPE_10__* %127, i32 %128, i32 %129, i32 0, i32 %132, %struct.bcm_iproc_i2c_dev* %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %124
  %138 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %139 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %2, align 4
  br label %189

144:                                              ; preds = %124
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %147 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %153

148:                                              ; preds = %119
  %149 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %150 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %149, i32 0, i32 2
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = call i32 @dev_warn(%struct.TYPE_10__* %151, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %153

153:                                              ; preds = %148, %144
  %154 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %155 = call i32 @bcm_iproc_i2c_enable_disable(%struct.bcm_iproc_i2c_dev* %154, i32 1)
  %156 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %157 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %156, i32 0, i32 3
  store %struct.i2c_adapter* %157, %struct.i2c_adapter** %7, align 8
  %158 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %159 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %160 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %158, %struct.bcm_iproc_i2c_dev* %159)
  %161 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %162 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %6, align 8
  %165 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %164, i32 0, i32 2
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @of_node_full_name(i32 %168)
  %170 = call i32 @snprintf(i32 %163, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %169)
  %171 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %172 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %171, i32 0, i32 2
  store %struct.TYPE_11__* @bcm_iproc_algo, %struct.TYPE_11__** %172, align 8
  %173 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %174 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %173, i32 0, i32 1
  store i32* @bcm_iproc_i2c_quirks, i32** %174, align 8
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %178 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  store %struct.TYPE_10__* %176, %struct.TYPE_10__** %179, align 8
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %185 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  %187 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %188 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %187)
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %153, %137, %117, %110, %94, %78, %50, %15
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.bcm_iproc_i2c_dev* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm_iproc_i2c_dev*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_10__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bcm_iproc_i2c_init(%struct.bcm_iproc_i2c_dev*) #1

declare dso_local i32 @bcm_iproc_i2c_cfg_speed(%struct.bcm_iproc_i2c_dev*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.bcm_iproc_i2c_dev*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @bcm_iproc_i2c_enable_disable(%struct.bcm_iproc_i2c_dev*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.bcm_iproc_i2c_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @of_node_full_name(i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
