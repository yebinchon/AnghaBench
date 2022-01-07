; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-adc-jack.c_adc_jack_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-adc-jack.c_adc_jack_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.adc_jack_data = type { i32, i64, %struct.TYPE_4__, i64, i32, i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.adc_jack_pdata = type { i32, i32, i64, i32, i32, %struct.TYPE_3__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error: cable_names not defined.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"error: adc_conditions not defined.\0A\00", align 1
@EXTCON_NONE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@adc_jack_irq_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"error: irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adc_jack_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_jack_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adc_jack_data*, align 8
  %5 = alloca %struct.adc_jack_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.adc_jack_pdata* @dev_get_platdata(i32* %9)
  store %struct.adc_jack_pdata* %10, %struct.adc_jack_pdata** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.adc_jack_data* @devm_kzalloc(i32* %12, i32 64, i32 %13)
  store %struct.adc_jack_data* %14, %struct.adc_jack_data** %4, align 8
  %15 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %16 = icmp ne %struct.adc_jack_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %186

20:                                               ; preds = %1
  %21 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %22 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %186

31:                                               ; preds = %20
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %35 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %34, i32 0, i32 8
  store i32* %33, i32** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %39 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @devm_extcon_dev_allocate(i32* %37, i32 %40)
  %42 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %43 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %45 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %31
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %186

55:                                               ; preds = %31
  %56 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %57 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %56, i32 0, i32 5
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %186

66:                                               ; preds = %55
  %67 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %68 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %67, i32 0, i32 5
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %71 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %70, i32 0, i32 7
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %71, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %84, %66
  %73 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %74 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %73, i32 0, i32 7
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EXTCON_NONE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %72

87:                                               ; preds = %72
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %90 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %94 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @iio_channel_get(i32* %92, i32 %95)
  %97 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %98 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %100 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %87
  %105 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %106 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @PTR_ERR(i32 %107)
  store i32 %108, i32* %2, align 4
  br label %186

109:                                              ; preds = %87
  %110 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %111 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @msecs_to_jiffies(i32 %112)
  %114 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %115 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %117 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %120 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %122 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %121, i32 0, i32 2
  %123 = call i32 @INIT_DEFERRABLE_WORK(%struct.TYPE_4__* %122, i32 (i32*)* @adc_jack_handler)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %126 = call i32 @platform_set_drvdata(%struct.platform_device* %124, %struct.adc_jack_data* %125)
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %130 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @devm_extcon_dev_register(i32* %128, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %109
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %186

137:                                              ; preds = %109
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = call i64 @platform_get_irq(%struct.platform_device* %138, i32 0)
  %140 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %141 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %143 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @ENODEV, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %186

149:                                              ; preds = %137
  %150 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %151 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @adc_jack_irq_thread, align 4
  %154 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %155 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.adc_jack_pdata*, %struct.adc_jack_pdata** %5, align 8
  %158 = getelementptr inbounds %struct.adc_jack_pdata, %struct.adc_jack_pdata* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %161 = call i32 @request_any_context_irq(i64 %152, i32 %153, i32 %156, i32 %159, %struct.adc_jack_data* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %149
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %168 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %169)
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %186

172:                                              ; preds = %149
  %173 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %174 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @device_init_wakeup(i32* %179, i32 1)
  br label %181

181:                                              ; preds = %177, %172
  %182 = load %struct.adc_jack_data*, %struct.adc_jack_data** %4, align 8
  %183 = getelementptr inbounds %struct.adc_jack_data, %struct.adc_jack_data* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = call i32 @adc_jack_handler(i32* %184)
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %181, %164, %146, %135, %104, %60, %49, %25, %17
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.adc_jack_pdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.adc_jack_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_extcon_dev_allocate(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @iio_channel_get(i32*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(%struct.TYPE_4__*, i32 (i32*)*) #1

declare dso_local i32 @adc_jack_handler(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.adc_jack_data*) #1

declare dso_local i32 @devm_extcon_dev_register(i32*, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_any_context_irq(i64, i32, i32, i32, %struct.adc_jack_data*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
