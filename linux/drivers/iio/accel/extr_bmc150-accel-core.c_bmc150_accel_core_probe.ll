; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.bmc150_accel_data = type { i32, %struct.regmap*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.iio_dev = type { i8*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@bmc150_accel_scan_masks = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@bmc150_accel_info = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@bmc150_accel_trigger_handler = common dso_local global i32 0, align 4
@bmc150_accel_buffer_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed: iio triggered buffer setup\0A\00", align 1
@bmc150_accel_irq_handler = common dso_local global i32 0, align 4
@bmc150_accel_irq_thread_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@BMC150_ACCEL_IRQ_NAME = common dso_local global i32 0, align 4
@BMC150_ACCEL_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMC150_ACCEL_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Error writing reg_int_rst_latch\0A\00", align 1
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@bmc150_accel_info_fifo = common dso_local global i32 0, align 4
@bmc150_accel_fifo_attributes = common dso_local global i32 0, align 4
@BMC150_AUTO_SUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to register iio device\0A\00", align 1
@BMC150_ACCEL_TRIGGERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmc150_accel_core_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bmc150_accel_data*, align 8
  %13 = alloca %struct.iio_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.regmap* %1, %struct.regmap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %15, i32 32)
  store %struct.iio_dev* %16, %struct.iio_dev** %13, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %191

22:                                               ; preds = %5
  %23 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %24 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %23)
  store %struct.bmc150_accel_data* %24, %struct.bmc150_accel_data** %12, align 8
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %27 = call i32 @dev_set_drvdata(%struct.device* %25, %struct.iio_dev* %26)
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %30 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.regmap*, %struct.regmap** %8, align 8
  %32 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %33 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %32, i32 0, i32 1
  store %struct.regmap* %31, %struct.regmap** %33, align 8
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %36 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %35, i32 0, i32 4
  %37 = call i32 @iio_read_mount_matrix(%struct.device* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %191

42:                                               ; preds = %22
  %43 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %44 = call i32 @bmc150_accel_chip_init(%struct.bmc150_accel_data* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %6, align 4
  br label %191

49:                                               ; preds = %42
  %50 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %51 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %50, i32 0, i32 3
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %58 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %65 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %49
  %74 = load i8*, i8** %10, align 8
  br label %81

75:                                               ; preds = %49
  %76 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %77 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  br label %81

81:                                               ; preds = %75, %73
  %82 = phi i8* [ %74, %73 ], [ %80, %75 ]
  %83 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @bmc150_accel_scan_masks, align 4
  %86 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %89 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %90 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 2
  store i32* @bmc150_accel_info, i32** %92, align 8
  %93 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %94 = load i32, i32* @bmc150_accel_trigger_handler, align 4
  %95 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %93, i32* @iio_pollfunc_store_time, i32 %94, i32* @bmc150_accel_buffer_ops)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %81
  %99 = load %struct.device*, %struct.device** %7, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %6, align 4
  br label %191

102:                                              ; preds = %81
  %103 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %104 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %160

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %7, align 8
  %109 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %110 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @bmc150_accel_irq_handler, align 4
  %113 = load i32, i32* @bmc150_accel_irq_thread_handler, align 4
  %114 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %115 = load i32, i32* @BMC150_ACCEL_IRQ_NAME, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %117 = call i32 @devm_request_threaded_irq(%struct.device* %108, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, %struct.iio_dev* %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  br label %187

121:                                              ; preds = %107
  %122 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %123 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %122, i32 0, i32 1
  %124 = load %struct.regmap*, %struct.regmap** %123, align 8
  %125 = load i32, i32* @BMC150_ACCEL_REG_INT_RST_LATCH, align 4
  %126 = load i32, i32* @BMC150_ACCEL_INT_MODE_LATCH_RESET, align 4
  %127 = call i32 @regmap_write(%struct.regmap* %124, i32 %125, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %187

133:                                              ; preds = %121
  %134 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %135 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %136 = call i32 @bmc150_accel_interrupts_setup(%struct.iio_dev* %134, %struct.bmc150_accel_data* %135)
  %137 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %138 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %139 = call i32 @bmc150_accel_triggers_setup(%struct.iio_dev* %137, %struct.bmc150_accel_data* %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %187

143:                                              ; preds = %133
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %148 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %149 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %153 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %152, i32 0, i32 2
  store i32* @bmc150_accel_info_fifo, i32** %153, align 8
  %154 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %155 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @bmc150_accel_fifo_attributes, align 4
  %158 = call i32 @iio_buffer_set_attrs(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %146, %143
  br label %160

160:                                              ; preds = %159, %102
  %161 = load %struct.device*, %struct.device** %7, align 8
  %162 = call i32 @pm_runtime_set_active(%struct.device* %161)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %182

166:                                              ; preds = %160
  %167 = load %struct.device*, %struct.device** %7, align 8
  %168 = call i32 @pm_runtime_enable(%struct.device* %167)
  %169 = load %struct.device*, %struct.device** %7, align 8
  %170 = load i32, i32* @BMC150_AUTO_SUSPEND_DELAY_MS, align 4
  %171 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %169, i32 %170)
  %172 = load %struct.device*, %struct.device** %7, align 8
  %173 = call i32 @pm_runtime_use_autosuspend(%struct.device* %172)
  %174 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %175 = call i32 @iio_device_register(%struct.iio_dev* %174)
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = load %struct.device*, %struct.device** %7, align 8
  %180 = call i32 @dev_err(%struct.device* %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %182

181:                                              ; preds = %166
  store i32 0, i32* %6, align 4
  br label %191

182:                                              ; preds = %178, %165
  %183 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %12, align 8
  %184 = load i64, i64* @BMC150_ACCEL_TRIGGERS, align 8
  %185 = sub nsw i64 %184, 1
  %186 = call i32 @bmc150_accel_unregister_triggers(%struct.bmc150_accel_data* %183, i64 %185)
  br label %187

187:                                              ; preds = %182, %142, %130, %120
  %188 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %189 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %188)
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %187, %181, %98, %47, %40, %19
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.device*, i8*, i32*) #1

declare dso_local i32 @bmc150_accel_chip_init(%struct.bmc150_accel_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @bmc150_accel_interrupts_setup(%struct.iio_dev*, %struct.bmc150_accel_data*) #1

declare dso_local i32 @bmc150_accel_triggers_setup(%struct.iio_dev*, %struct.bmc150_accel_data*) #1

declare dso_local i32 @iio_buffer_set_attrs(i32, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @bmc150_accel_unregister_triggers(%struct.bmc150_accel_data*, i64) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
