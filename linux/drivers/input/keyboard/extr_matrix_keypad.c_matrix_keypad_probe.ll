; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c_matrix_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c_matrix_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.matrix_keypad_platform_data = type { i32, i32, i32, i32, i32 }
%struct.matrix_keypad = type { i32, %struct.input_dev*, i32, i32, i32, %struct.matrix_keypad_platform_data* }
%struct.input_dev = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"no keymap data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@matrix_keypad_scan = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@matrix_keypad_start = common dso_local global i32 0, align 4
@matrix_keypad_stop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @matrix_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matrix_keypad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.matrix_keypad_platform_data*, align 8
  %5 = alloca %struct.matrix_keypad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.matrix_keypad_platform_data* @dev_get_platdata(i32* %9)
  store %struct.matrix_keypad_platform_data* %10, %struct.matrix_keypad_platform_data** %4, align 8
  %11 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %12 = icmp ne %struct.matrix_keypad_platform_data* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.matrix_keypad_platform_data* @matrix_keypad_parse_dt(i32* %15)
  store %struct.matrix_keypad_platform_data* %16, %struct.matrix_keypad_platform_data** %4, align 8
  %17 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %18 = call i64 @IS_ERR(%struct.matrix_keypad_platform_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %22 = call i32 @PTR_ERR(%struct.matrix_keypad_platform_data* %21)
  store i32 %22, i32* %2, align 4
  br label %159

23:                                               ; preds = %13
  br label %36

24:                                               ; preds = %1
  %25 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %159

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.matrix_keypad* @kzalloc(i32 40, i32 %37)
  store %struct.matrix_keypad* %38, %struct.matrix_keypad** %5, align 8
  %39 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %39, %struct.input_dev** %6, align 8
  %40 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %41 = icmp ne %struct.matrix_keypad* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %44 = icmp ne %struct.input_dev* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %153

48:                                               ; preds = %42
  %49 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %50 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %51 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %50, i32 0, i32 1
  store %struct.input_dev* %49, %struct.input_dev** %51, align 8
  %52 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %53 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %54 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %53, i32 0, i32 5
  store %struct.matrix_keypad_platform_data* %52, %struct.matrix_keypad_platform_data** %54, align 8
  %55 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %56 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @get_count_order(i32 %57)
  %59 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %60 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %62 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %64 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %63, i32 0, i32 3
  %65 = load i32, i32* @matrix_keypad_scan, align 4
  %66 = call i32 @INIT_DELAYED_WORK(i32* %64, i32 %65)
  %67 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %68 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @BUS_HOST, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  %84 = load i32, i32* @matrix_keypad_start, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @matrix_keypad_stop, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %91 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %94 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %97 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %100 = call i32 @matrix_keypad_build_keymap(i32 %92, i32* null, i32 %95, i32 %98, i32* null, %struct.input_dev* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %48
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %153

107:                                              ; preds = %48
  %108 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %109 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @EV_REP, align 4
  %114 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @__set_bit(i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %120 = load i32, i32* @EV_MSC, align 4
  %121 = load i32, i32* @MSC_SCAN, align 4
  %122 = call i32 @input_set_capability(%struct.input_dev* %119, i32 %120, i32 %121)
  %123 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %124 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %125 = call i32 @input_set_drvdata(%struct.input_dev* %123, %struct.matrix_keypad* %124)
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %128 = call i32 @matrix_keypad_init_gpio(%struct.platform_device* %126, %struct.matrix_keypad* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %118
  br label %153

132:                                              ; preds = %118
  %133 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %134 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %133, i32 0, i32 1
  %135 = load %struct.input_dev*, %struct.input_dev** %134, align 8
  %136 = call i32 @input_register_device(%struct.input_dev* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %150

140:                                              ; preds = %132
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %4, align 8
  %144 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @device_init_wakeup(i32* %142, i32 %145)
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %149 = call i32 @platform_set_drvdata(%struct.platform_device* %147, %struct.matrix_keypad* %148)
  store i32 0, i32* %2, align 4
  br label %159

150:                                              ; preds = %139
  %151 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %152 = call i32 @matrix_keypad_free_gpio(%struct.matrix_keypad* %151)
  br label %153

153:                                              ; preds = %150, %131, %103, %45
  %154 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %155 = call i32 @input_free_device(%struct.input_dev* %154)
  %156 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %157 = call i32 @kfree(%struct.matrix_keypad* %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %153, %140, %29, %20
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.matrix_keypad_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.matrix_keypad_platform_data* @matrix_keypad_parse_dt(i32*) #1

declare dso_local i64 @IS_ERR(%struct.matrix_keypad_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.matrix_keypad_platform_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.matrix_keypad* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32, i32*, i32, i32, i32*, %struct.input_dev*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.matrix_keypad*) #1

declare dso_local i32 @matrix_keypad_init_gpio(%struct.platform_device*, %struct.matrix_keypad*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.matrix_keypad*) #1

declare dso_local i32 @matrix_keypad_free_gpio(%struct.matrix_keypad*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.matrix_keypad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
