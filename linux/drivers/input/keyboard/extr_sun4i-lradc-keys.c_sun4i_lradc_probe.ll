; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sun4i-lradc-keys.c_sun4i_lradc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sun4i-lradc-keys.c_sun4i_lradc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.sun4i_lradc_data = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.device*, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Missing sun4i-a10-lradc-keys variant\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sun4i_lradc/input0\00", align 1
@sun4i_lradc_open = common dso_local global i32 0, align 4
@sun4i_lradc_close = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sun4i_lradc_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"sun4i-a10-lradc-keys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_lradc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_lradc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sun4i_lradc_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sun4i_lradc_data* @devm_kzalloc(%struct.device* %10, i32 48, i32 %11)
  store %struct.sun4i_lradc_data* %12, %struct.sun4i_lradc_data** %4, align 8
  %13 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %14 = icmp ne %struct.sun4i_lradc_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %190

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %21 = call i32 @sun4i_lradc_load_dt_keymap(%struct.device* %19, %struct.sun4i_lradc_data* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %190

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 1
  %29 = call i32 @of_device_get_match_data(%struct.device* %28)
  %30 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %31 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %33 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 1
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %190

42:                                               ; preds = %26
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @devm_regulator_get(%struct.device* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %46 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %48 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %54 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %190

57:                                               ; preds = %42
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %60 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %59, i32 0, i32 4
  store %struct.device* %58, %struct.device** %60, align 8
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call %struct.TYPE_8__* @devm_input_allocate_device(%struct.device* %61)
  %63 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %64 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %63, i32 0, i32 1
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %66 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %57
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %190

72:                                               ; preds = %57
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %77 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  store i32 %75, i32* %79, align 8
  %80 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %81 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %83, align 8
  %84 = load i32, i32* @sun4i_lradc_open, align 4
  %85 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %86 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 5
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @sun4i_lradc_close, align 4
  %90 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %91 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  store i32 %89, i32* %93, align 8
  %94 = load i32, i32* @BUS_HOST, align 4
  %95 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %96 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i32 %94, i32* %99, align 4
  %100 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %101 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %106 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %111 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store i32 256, i32* %114, align 8
  %115 = load i32, i32* @EV_KEY, align 4
  %116 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %117 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @__set_bit(i32 %115, i32 %120)
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %143, %72
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %125 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %122
  %129 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %130 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %129, i32 0, i32 3
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %138 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @__set_bit(i32 %136, i32 %141)
  br label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %122

146:                                              ; preds = %122
  %147 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %148 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %151 = call i32 @input_set_drvdata(%struct.TYPE_8__* %149, %struct.sun4i_lradc_data* %150)
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = load i32, i32* @IORESOURCE_MEM, align 4
  %155 = call i32 @platform_get_resource(%struct.platform_device* %153, i32 %154, i32 0)
  %156 = call i32 @devm_ioremap_resource(%struct.device* %152, i32 %155)
  %157 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %158 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %160 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @IS_ERR(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %146
  %165 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %166 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @PTR_ERR(i32 %167)
  store i32 %168, i32* %2, align 4
  br label %190

169:                                              ; preds = %146
  %170 = load %struct.device*, %struct.device** %5, align 8
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = call i32 @platform_get_irq(%struct.platform_device* %171, i32 0)
  %173 = load i32, i32* @sun4i_lradc_irq, align 4
  %174 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %175 = call i32 @devm_request_irq(%struct.device* %170, i32 %172, i32 %173, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.sun4i_lradc_data* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %190

180:                                              ; preds = %169
  %181 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %182 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %181, i32 0, i32 1
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = call i32 @input_register_device(%struct.TYPE_8__* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i32, i32* %7, align 4
  store i32 %188, i32* %2, align 4
  br label %190

189:                                              ; preds = %180
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %187, %178, %164, %69, %52, %36, %24, %15
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.sun4i_lradc_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @sun4i_lradc_load_dt_keymap(%struct.device*, %struct.sun4i_lradc_data*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_8__* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_8__*, %struct.sun4i_lradc_data*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, i32) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.sun4i_lradc_data*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
