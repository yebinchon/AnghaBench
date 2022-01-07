; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 (%struct.platform_device*, %struct.iio_dev*, i32)*, i32 }
%struct.iio_dev = type { i8*, i32, %struct.TYPE_12__*, i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_13__* }
%struct.resource = type { i32 }
%struct.xadc = type { i32, i32*, %struct.TYPE_10__*, i8*, i8*, i8*, i32, i8*, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@xadc_of_match_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xadc_zynq_unmask_worker = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xadc\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@xadc_info = common dso_local global i32 0, align 4
@XADC_FLAGS_BUFFERED = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@xadc_trigger_handler = common dso_local global i32 0, align 4
@xadc_buffer_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"convst\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"samplerate\00", align 1
@XADC_REG_CONF0 = common dso_local global i32 0, align 4
@XADC_REG_CONF1 = common dso_local global i32 0, align 4
@XADC_CONF1_ALARM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xadc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %430

21:                                               ; preds = %1
  %22 = load i32, i32* @xadc_of_match_table, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.of_device_id* @of_match_node(i32 %22, i32 %26)
  store %struct.of_device_id* %27, %struct.of_device_id** %4, align 8
  %28 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %29 = icmp ne %struct.of_device_id* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %430

33:                                               ; preds = %21
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @platform_get_irq(%struct.platform_device* %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %430

41:                                               ; preds = %33
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_13__* %43, i32 80)
  store %struct.iio_dev* %44, %struct.iio_dev** %5, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = icmp ne %struct.iio_dev* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %430

50:                                               ; preds = %41
  %51 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %52 = call %struct.xadc* @iio_priv(%struct.iio_dev* %51)
  store %struct.xadc* %52, %struct.xadc** %9, align 8
  %53 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %54 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load %struct.xadc*, %struct.xadc** %9, align 8
  %57 = getelementptr inbounds %struct.xadc, %struct.xadc* %56, i32 0, i32 2
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.xadc*, %struct.xadc** %9, align 8
  %60 = getelementptr inbounds %struct.xadc, %struct.xadc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.xadc*, %struct.xadc** %9, align 8
  %62 = getelementptr inbounds %struct.xadc, %struct.xadc* %61, i32 0, i32 10
  %63 = call i32 @init_completion(i32* %62)
  %64 = load %struct.xadc*, %struct.xadc** %9, align 8
  %65 = getelementptr inbounds %struct.xadc, %struct.xadc* %64, i32 0, i32 9
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.xadc*, %struct.xadc** %9, align 8
  %68 = getelementptr inbounds %struct.xadc, %struct.xadc* %67, i32 0, i32 8
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.xadc*, %struct.xadc** %9, align 8
  %71 = getelementptr inbounds %struct.xadc, %struct.xadc* %70, i32 0, i32 6
  %72 = load i32, i32* @xadc_zynq_unmask_worker, align 4
  %73 = call i32 @INIT_DELAYED_WORK(i32* %71, i32 %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load i32, i32* @IORESOURCE_MEM, align 4
  %76 = call %struct.resource* @platform_get_resource(%struct.platform_device* %74, i32 %75, i32 0)
  store %struct.resource* %76, %struct.resource** %7, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.resource*, %struct.resource** %7, align 8
  %80 = call i8* @devm_ioremap_resource(%struct.TYPE_13__* %78, %struct.resource* %79)
  %81 = load %struct.xadc*, %struct.xadc** %9, align 8
  %82 = getelementptr inbounds %struct.xadc, %struct.xadc* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load %struct.xadc*, %struct.xadc** %9, align 8
  %84 = getelementptr inbounds %struct.xadc, %struct.xadc* %83, i32 0, i32 7
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %50
  %89 = load %struct.xadc*, %struct.xadc** %9, align 8
  %90 = getelementptr inbounds %struct.xadc, %struct.xadc* %89, i32 0, i32 7
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @PTR_ERR(i8* %91)
  store i32 %92, i32* %2, align 4
  br label %430

93:                                               ; preds = %50
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %98, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %107, align 8
  %108 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %109 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %112 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %111, i32 0, i32 3
  store i32* @xadc_info, i32** %112, align 8
  %113 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @xadc_parse_dt(%struct.iio_dev* %113, i32 %117, i32* %8)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %93
  br label %424

122:                                              ; preds = %93
  %123 = load %struct.xadc*, %struct.xadc** %9, align 8
  %124 = getelementptr inbounds %struct.xadc, %struct.xadc* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @XADC_FLAGS_BUFFERED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %168

131:                                              ; preds = %122
  %132 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %133 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %132, i32* @iio_pollfunc_store_time, i32* @xadc_trigger_handler, i32* @xadc_buffer_ops)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %424

137:                                              ; preds = %131
  %138 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %139 = call i8* @xadc_alloc_trigger(%struct.iio_dev* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %140 = load %struct.xadc*, %struct.xadc** %9, align 8
  %141 = getelementptr inbounds %struct.xadc, %struct.xadc* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.xadc*, %struct.xadc** %9, align 8
  %143 = getelementptr inbounds %struct.xadc, %struct.xadc* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @IS_ERR(i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %137
  %148 = load %struct.xadc*, %struct.xadc** %9, align 8
  %149 = getelementptr inbounds %struct.xadc, %struct.xadc* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @PTR_ERR(i8* %150)
  store i32 %151, i32* %10, align 4
  br label %411

152:                                              ; preds = %137
  %153 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %154 = call i8* @xadc_alloc_trigger(%struct.iio_dev* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %155 = load %struct.xadc*, %struct.xadc** %9, align 8
  %156 = getelementptr inbounds %struct.xadc, %struct.xadc* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load %struct.xadc*, %struct.xadc** %9, align 8
  %158 = getelementptr inbounds %struct.xadc, %struct.xadc* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @IS_ERR(i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load %struct.xadc*, %struct.xadc** %9, align 8
  %164 = getelementptr inbounds %struct.xadc, %struct.xadc* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @PTR_ERR(i8* %165)
  store i32 %166, i32* %10, align 4
  br label %396

167:                                              ; preds = %152
  br label %168

168:                                              ; preds = %167, %122
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i8* @devm_clk_get(%struct.TYPE_13__* %170, i32* null)
  %172 = load %struct.xadc*, %struct.xadc** %9, align 8
  %173 = getelementptr inbounds %struct.xadc, %struct.xadc* %172, i32 0, i32 5
  store i8* %171, i8** %173, align 8
  %174 = load %struct.xadc*, %struct.xadc** %9, align 8
  %175 = getelementptr inbounds %struct.xadc, %struct.xadc* %174, i32 0, i32 5
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @IS_ERR(i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %168
  %180 = load %struct.xadc*, %struct.xadc** %9, align 8
  %181 = getelementptr inbounds %struct.xadc, %struct.xadc* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @PTR_ERR(i8* %182)
  store i32 %183, i32* %10, align 4
  br label %381

184:                                              ; preds = %168
  %185 = load %struct.xadc*, %struct.xadc** %9, align 8
  %186 = getelementptr inbounds %struct.xadc, %struct.xadc* %185, i32 0, i32 5
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @clk_prepare_enable(i8* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %381

192:                                              ; preds = %184
  %193 = load %struct.xadc*, %struct.xadc** %9, align 8
  %194 = getelementptr inbounds %struct.xadc, %struct.xadc* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.xadc*, %struct.xadc** %9, align 8
  %197 = getelementptr inbounds %struct.xadc, %struct.xadc* %196, i32 0, i32 2
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = call i32 @dev_name(%struct.TYPE_13__* %202)
  %204 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %205 = call i32 @request_irq(i32 %195, i32 %200, i32 0, i32 %203, %struct.iio_dev* %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %192
  br label %376

209:                                              ; preds = %192
  %210 = load %struct.xadc*, %struct.xadc** %9, align 8
  %211 = getelementptr inbounds %struct.xadc, %struct.xadc* %210, i32 0, i32 2
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i32 (%struct.platform_device*, %struct.iio_dev*, i32)*, i32 (%struct.platform_device*, %struct.iio_dev*, i32)** %213, align 8
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %217 = load %struct.xadc*, %struct.xadc** %9, align 8
  %218 = getelementptr inbounds %struct.xadc, %struct.xadc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 %214(%struct.platform_device* %215, %struct.iio_dev* %216, i32 %219)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %209
  br label %367

224:                                              ; preds = %209
  store i32 0, i32* %12, align 4
  br label %225

225:                                              ; preds = %239, %224
  %226 = load i32, i32* %12, align 4
  %227 = icmp slt i32 %226, 16
  br i1 %227, label %228, label %242

228:                                              ; preds = %225
  %229 = load %struct.xadc*, %struct.xadc** %9, align 8
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @XADC_REG_THRESHOLD(i32 %230)
  %232 = load %struct.xadc*, %struct.xadc** %9, align 8
  %233 = getelementptr inbounds %struct.xadc, %struct.xadc* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = call i32 @xadc_read_adc_reg(%struct.xadc* %229, i32 %231, i32* %237)
  br label %239

239:                                              ; preds = %228
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %12, align 4
  br label %225

242:                                              ; preds = %225
  %243 = load %struct.xadc*, %struct.xadc** %9, align 8
  %244 = load i32, i32* @XADC_REG_CONF0, align 4
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @xadc_write_adc_reg(%struct.xadc* %243, i32 %244, i32 %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %367

250:                                              ; preds = %242
  store i32 0, i32* %6, align 4
  store i32 0, i32* %12, align 4
  br label %251

251:                                              ; preds = %282, %250
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %254 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %285

257:                                              ; preds = %251
  %258 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %259 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %258, i32 0, i32 2
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = load i8, i8* %265, align 4
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 115
  br i1 %268, label %269, label %281

269:                                              ; preds = %257
  %270 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %271 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %270, i32 0, i32 2
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @BIT(i32 %277)
  %279 = load i32, i32* %6, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %6, align 4
  br label %281

281:                                              ; preds = %269, %257
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %251

285:                                              ; preds = %251
  %286 = load %struct.xadc*, %struct.xadc** %9, align 8
  %287 = call i32 @XADC_REG_INPUT_MODE(i32 0)
  %288 = load i32, i32* %6, align 4
  %289 = call i32 @xadc_write_adc_reg(%struct.xadc* %286, i32 %287, i32 %288)
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %10, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %285
  br label %367

293:                                              ; preds = %285
  %294 = load %struct.xadc*, %struct.xadc** %9, align 8
  %295 = call i32 @XADC_REG_INPUT_MODE(i32 1)
  %296 = load i32, i32* %6, align 4
  %297 = lshr i32 %296, 16
  %298 = call i32 @xadc_write_adc_reg(%struct.xadc* %294, i32 %295, i32 %297)
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  br label %367

302:                                              ; preds = %293
  %303 = load %struct.xadc*, %struct.xadc** %9, align 8
  %304 = load i32, i32* @XADC_REG_CONF1, align 4
  %305 = load i32, i32* @XADC_CONF1_ALARM_MASK, align 4
  %306 = load i32, i32* @XADC_CONF1_ALARM_MASK, align 4
  %307 = call i32 @xadc_update_adc_reg(%struct.xadc* %303, i32 %304, i32 %305, i32 %306)
  store i32 %307, i32* %10, align 4
  %308 = load i32, i32* %10, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %302
  br label %367

311:                                              ; preds = %302
  store i32 0, i32* %12, align 4
  br label %312

312:                                              ; preds = %352, %311
  %313 = load i32, i32* %12, align 4
  %314 = icmp slt i32 %313, 16
  br i1 %314, label %315, label %355

315:                                              ; preds = %312
  %316 = load i32, i32* %12, align 4
  %317 = srem i32 %316, 8
  %318 = icmp slt i32 %317, 4
  br i1 %318, label %322, label %319

319:                                              ; preds = %315
  %320 = load i32, i32* %12, align 4
  %321 = icmp eq i32 %320, 7
  br i1 %321, label %322, label %329

322:                                              ; preds = %319, %315
  %323 = load %struct.xadc*, %struct.xadc** %9, align 8
  %324 = getelementptr inbounds %struct.xadc, %struct.xadc* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %12, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 65535, i32* %328, align 4
  br label %336

329:                                              ; preds = %319
  %330 = load %struct.xadc*, %struct.xadc** %9, align 8
  %331 = getelementptr inbounds %struct.xadc, %struct.xadc* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %12, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 0, i32* %335, align 4
  br label %336

336:                                              ; preds = %329, %322
  %337 = load %struct.xadc*, %struct.xadc** %9, align 8
  %338 = load i32, i32* %12, align 4
  %339 = call i32 @XADC_REG_THRESHOLD(i32 %338)
  %340 = load %struct.xadc*, %struct.xadc** %9, align 8
  %341 = getelementptr inbounds %struct.xadc, %struct.xadc* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @xadc_write_adc_reg(%struct.xadc* %337, i32 %339, i32 %346)
  store i32 %347, i32* %10, align 4
  %348 = load i32, i32* %10, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %336
  br label %367

351:                                              ; preds = %336
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %12, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %12, align 4
  br label %312

355:                                              ; preds = %312
  %356 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %357 = call i32 @xadc_postdisable(%struct.iio_dev* %356)
  %358 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %359 = call i32 @iio_device_register(%struct.iio_dev* %358)
  store i32 %359, i32* %10, align 4
  %360 = load i32, i32* %10, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %355
  br label %367

363:                                              ; preds = %355
  %364 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %365 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %366 = call i32 @platform_set_drvdata(%struct.platform_device* %364, %struct.iio_dev* %365)
  store i32 0, i32* %2, align 4
  br label %430

367:                                              ; preds = %362, %350, %310, %301, %292, %249, %223
  %368 = load %struct.xadc*, %struct.xadc** %9, align 8
  %369 = getelementptr inbounds %struct.xadc, %struct.xadc* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %372 = call i32 @free_irq(i32 %370, %struct.iio_dev* %371)
  %373 = load %struct.xadc*, %struct.xadc** %9, align 8
  %374 = getelementptr inbounds %struct.xadc, %struct.xadc* %373, i32 0, i32 6
  %375 = call i32 @cancel_delayed_work_sync(i32* %374)
  br label %376

376:                                              ; preds = %367, %208
  %377 = load %struct.xadc*, %struct.xadc** %9, align 8
  %378 = getelementptr inbounds %struct.xadc, %struct.xadc* %377, i32 0, i32 5
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 @clk_disable_unprepare(i8* %379)
  br label %381

381:                                              ; preds = %376, %191, %179
  %382 = load %struct.xadc*, %struct.xadc** %9, align 8
  %383 = getelementptr inbounds %struct.xadc, %struct.xadc* %382, i32 0, i32 2
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @XADC_FLAGS_BUFFERED, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %381
  %391 = load %struct.xadc*, %struct.xadc** %9, align 8
  %392 = getelementptr inbounds %struct.xadc, %struct.xadc* %391, i32 0, i32 4
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @iio_trigger_free(i8* %393)
  br label %395

395:                                              ; preds = %390, %381
  br label %396

396:                                              ; preds = %395, %162
  %397 = load %struct.xadc*, %struct.xadc** %9, align 8
  %398 = getelementptr inbounds %struct.xadc, %struct.xadc* %397, i32 0, i32 2
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @XADC_FLAGS_BUFFERED, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %396
  %406 = load %struct.xadc*, %struct.xadc** %9, align 8
  %407 = getelementptr inbounds %struct.xadc, %struct.xadc* %406, i32 0, i32 3
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 @iio_trigger_free(i8* %408)
  br label %410

410:                                              ; preds = %405, %396
  br label %411

411:                                              ; preds = %410, %147
  %412 = load %struct.xadc*, %struct.xadc** %9, align 8
  %413 = getelementptr inbounds %struct.xadc, %struct.xadc* %412, i32 0, i32 2
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @XADC_FLAGS_BUFFERED, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %411
  %421 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %422 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %421)
  br label %423

423:                                              ; preds = %420, %411
  br label %424

424:                                              ; preds = %423, %136, %121
  %425 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %426 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %425, i32 0, i32 2
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** %426, align 8
  %428 = call i32 @kfree(%struct.TYPE_12__* %427)
  %429 = load i32, i32* %10, align 4
  store i32 %429, i32* %2, align 4
  br label %430

430:                                              ; preds = %424, %363, %88, %47, %38, %30, %18
  %431 = load i32, i32* %2, align 4
  ret i32 %431
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @xadc_parse_dt(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i8* @xadc_alloc_trigger(%struct.iio_dev*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @xadc_read_adc_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @XADC_REG_THRESHOLD(i32) #1

declare dso_local i32 @xadc_write_adc_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @XADC_REG_INPUT_MODE(i32) #1

declare dso_local i32 @xadc_update_adc_reg(%struct.xadc*, i32, i32, i32) #1

declare dso_local i32 @xadc_postdisable(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.iio_dev*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @iio_trigger_free(i8*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
