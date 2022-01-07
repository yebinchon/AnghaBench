; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cht-wc.c_cht_wc_i2c_adap_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cht-wc.c_cht_wc_i2c_adap_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.intel_soc_pmic = type { i32 }
%struct.cht_wc_i2c_adap = type { i32, %struct.TYPE_10__, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.i2c_board_info = type { i8*, i32, i8*, i64, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"bq24190\00", align 1
@bq24190_pdata = common dso_local global i32 0, align 4
@bq24190_props = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error missing irq resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cht_wc_i2c_irq_chip = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@cht_wc_i2c_adap_algo = common dso_local global i32 0, align 4
@cht_wc_i2c_adap_lock_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"PMIC I2C Adapter\00", align 1
@CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK = common dso_local global i32 0, align 4
@CHT_WC_I2C_RDDATA = common dso_local global i32 0, align 4
@CHT_WC_EXTCHGRIRQ = common dso_local global i32 0, align 4
@CHT_WC_EXTCHGRIRQ_MSK = common dso_local global i32 0, align 4
@irq_domain_simple_ops = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@cht_wc_i2c_adap_thread_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"INT33FE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cht_wc_i2c_adap_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_wc_i2c_adap_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_soc_pmic*, align 8
  %5 = alloca %struct.cht_wc_i2c_adap*, align 8
  %6 = alloca %struct.i2c_board_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %13)
  store %struct.intel_soc_pmic* %14, %struct.intel_soc_pmic** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 1
  store i32 107, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 4
  store i32* @bq24190_pdata, i32** %19, align 8
  %20 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 5
  %21 = load i32, i32* @bq24190_props, align 4
  store i32 %21, i32* %20, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %225

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.cht_wc_i2c_adap* @devm_kzalloc(%struct.TYPE_11__* %34, i32 96, i32 %35)
  store %struct.cht_wc_i2c_adap* %36, %struct.cht_wc_i2c_adap** %5, align 8
  %37 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %38 = icmp ne %struct.cht_wc_i2c_adap* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %225

42:                                               ; preds = %32
  %43 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %44 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %43, i32 0, i32 10
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %47 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %46, i32 0, i32 9
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %50 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %49, i32 0, i32 8
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load i32, i32* @cht_wc_i2c_irq_chip, align 4
  %53 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %54 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %56 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %59 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %62 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %65 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %66 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 8
  %68 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %69 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i32* @cht_wc_i2c_adap_algo, i32** %70, align 8
  %71 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %72 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i32* @cht_wc_i2c_adap_lock_ops, i32** %73, align 8
  %74 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %75 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @strlcpy(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %82 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %84, align 8
  %85 = load i32, i32* @CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %88 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %90 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %89, i32 0, i32 7
  store i32 %86, i32* %90, align 4
  %91 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %92 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CHT_WC_I2C_RDDATA, align 4
  %95 = call i32 @regmap_read(i32 %93, i32 %94, i32* %8)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %42
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %225

100:                                              ; preds = %42
  %101 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %102 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CHT_WC_EXTCHGRIRQ, align 4
  %105 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %106 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, -1
  %109 = call i32 @regmap_write(i32 %103, i32 %104, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %225

114:                                              ; preds = %100
  %115 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %116 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CHT_WC_EXTCHGRIRQ_MSK, align 4
  %119 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %120 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @regmap_write(i32 %117, i32 %118, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %225

127:                                              ; preds = %114
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @irq_domain_add_linear(i32 %131, i32 1, i32* @irq_domain_simple_ops, i32* null)
  %133 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %134 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %136 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %127
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %225

142:                                              ; preds = %127
  %143 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %144 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @irq_create_mapping(i32 %145, i32 0)
  %147 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %148 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %147, i32 0, i32 3
  store i64 %146, i64* %148, align 8
  %149 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %150 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %142
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  br label %219

156:                                              ; preds = %142
  %157 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %158 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %161 = call i32 @irq_set_chip_data(i64 %159, %struct.cht_wc_i2c_adap* %160)
  %162 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %163 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %166 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %165, i32 0, i32 4
  %167 = load i32, i32* @handle_simple_irq, align 4
  %168 = call i32 @irq_set_chip_and_handler(i64 %164, i32* %166, i32 %167)
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @cht_wc_i2c_adap_thread_handler, align 4
  %173 = load i32, i32* @IRQF_ONESHOT, align 4
  %174 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %175 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %170, i32 %171, i32* null, i32 %172, i32 %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.cht_wc_i2c_adap* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %156
  br label %219

179:                                              ; preds = %156
  %180 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %181 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %180, i32 0, i32 1
  %182 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %183 = call i32 @i2c_set_adapdata(%struct.TYPE_10__* %181, %struct.cht_wc_i2c_adap* %182)
  %184 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %185 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %184, i32 0, i32 1
  %186 = call i32 @i2c_add_adapter(%struct.TYPE_10__* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  br label %219

190:                                              ; preds = %179
  %191 = call i64 @acpi_dev_present(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 -1)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %190
  %194 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %195 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 3
  store i64 %196, i64* %197, align 8
  %198 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %199 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %198, i32 0, i32 1
  %200 = call i32 @i2c_new_device(%struct.TYPE_10__* %199, %struct.i2c_board_info* %6)
  %201 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %202 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %204 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %193
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %7, align 4
  br label %215

210:                                              ; preds = %193
  br label %211

211:                                              ; preds = %210, %190
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %214 = call i32 @platform_set_drvdata(%struct.platform_device* %212, %struct.cht_wc_i2c_adap* %213)
  store i32 0, i32* %2, align 4
  br label %225

215:                                              ; preds = %207
  %216 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %217 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %216, i32 0, i32 1
  %218 = call i32 @i2c_del_adapter(%struct.TYPE_10__* %217)
  br label %219

219:                                              ; preds = %215, %189, %178, %153
  %220 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %5, align 8
  %221 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @irq_domain_remove(i32 %222)
  %224 = load i32, i32* %7, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %219, %211, %139, %125, %112, %98, %39, %26
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.cht_wc_i2c_adap* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, i32*) #1

declare dso_local i64 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @irq_set_chip_data(i64, %struct.cht_wc_i2c_adap*) #1

declare dso_local i32 @irq_set_chip_and_handler(i64, i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i32, i32*, i32, i32, i8*, %struct.cht_wc_i2c_adap*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_10__*, %struct.cht_wc_i2c_adap*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_10__*) #1

declare dso_local i64 @acpi_dev_present(i8*, i32*, i32) #1

declare dso_local i32 @i2c_new_device(%struct.TYPE_10__*, %struct.i2c_board_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cht_wc_i2c_adap*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_10__*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
