; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8333.c_lm8333_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8333.c_lm8333_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm8333_platform_data = type { i32, i32, i32 }
%struct.lm8333 = type { i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Active time not big enough!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@LM8333_NUM_ROWS = common dso_local global i32 0, align 4
@LM8333_NUM_COLS = common dso_local global i32 0, align 4
@LM8333_DEBOUNCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to set debounce time\0A\00", align 1
@LM8333_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to set active time\0A\00", align 1
@lm8333_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"lm8333\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm8333_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm8333_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm8333_platform_data*, align 8
  %7 = alloca %struct.lm8333*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = call %struct.lm8333_platform_data* @dev_get_platdata(i32* %12)
  store %struct.lm8333_platform_data* %13, %struct.lm8333_platform_data** %6, align 8
  %14 = load %struct.lm8333_platform_data*, %struct.lm8333_platform_data** %6, align 8
  %15 = icmp ne %struct.lm8333_platform_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %166

19:                                               ; preds = %2
  %20 = load %struct.lm8333_platform_data*, %struct.lm8333_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.lm8333_platform_data, %struct.lm8333_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi i32 [ %22, %24 ], [ 500, %25 ]
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sdiv i32 %28, 3
  %30 = load %struct.lm8333_platform_data*, %struct.lm8333_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.lm8333_platform_data, %struct.lm8333_platform_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 3
  %34 = icmp sle i32 %29, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %166

41:                                               ; preds = %26
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.lm8333* @kzalloc(i32 24, i32 %42)
  store %struct.lm8333* %43, %struct.lm8333** %7, align 8
  %44 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %44, %struct.input_dev** %8, align 8
  %45 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %46 = icmp ne %struct.lm8333* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = icmp ne %struct.input_dev* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %160

53:                                               ; preds = %47
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %56 = getelementptr inbounds %struct.lm8333, %struct.lm8333* %55, i32 0, i32 2
  store %struct.i2c_client* %54, %struct.i2c_client** %56, align 8
  %57 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %58 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %59 = getelementptr inbounds %struct.lm8333, %struct.lm8333* %58, i32 0, i32 1
  store %struct.input_dev* %57, %struct.input_dev** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 1
  %67 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  %70 = load i32, i32* @BUS_I2C, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %75 = load i32, i32* @EV_MSC, align 4
  %76 = load i32, i32* @MSC_SCAN, align 4
  %77 = call i32 @input_set_capability(%struct.input_dev* %74, i32 %75, i32 %76)
  %78 = load %struct.lm8333_platform_data*, %struct.lm8333_platform_data** %6, align 8
  %79 = getelementptr inbounds %struct.lm8333_platform_data, %struct.lm8333_platform_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LM8333_NUM_ROWS, align 4
  %82 = load i32, i32* @LM8333_NUM_COLS, align 4
  %83 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %84 = getelementptr inbounds %struct.lm8333, %struct.lm8333* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %87 = call i32 @matrix_keypad_build_keymap(i32 %80, i32* null, i32 %81, i32 %82, i32 %85, %struct.input_dev* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %53
  br label %160

91:                                               ; preds = %53
  %92 = load %struct.lm8333_platform_data*, %struct.lm8333_platform_data** %6, align 8
  %93 = getelementptr inbounds %struct.lm8333_platform_data, %struct.lm8333_platform_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %98 = load i32, i32* @LM8333_DEBOUNCE, align 4
  %99 = load %struct.lm8333_platform_data*, %struct.lm8333_platform_data** %6, align 8
  %100 = getelementptr inbounds %struct.lm8333_platform_data, %struct.lm8333_platform_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 3
  %103 = call i32 @lm8333_write8(%struct.lm8333* %97, i32 %98, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 1
  %109 = call i32 @dev_warn(i32* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %96
  br label %111

111:                                              ; preds = %110, %91
  %112 = load %struct.lm8333_platform_data*, %struct.lm8333_platform_data** %6, align 8
  %113 = getelementptr inbounds %struct.lm8333_platform_data, %struct.lm8333_platform_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %118 = load i32, i32* @LM8333_ACTIVE, align 4
  %119 = load %struct.lm8333_platform_data*, %struct.lm8333_platform_data** %6, align 8
  %120 = getelementptr inbounds %struct.lm8333_platform_data, %struct.lm8333_platform_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %121, 3
  %123 = call i32 @lm8333_write8(%struct.lm8333* %117, i32 %118, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %116
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 1
  %129 = call i32 @dev_warn(i32* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %126, %116
  br label %131

131:                                              ; preds = %130, %111
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @lm8333_irq_thread, align 4
  %136 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %137 = load i32, i32* @IRQF_ONESHOT, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %140 = call i32 @request_threaded_irq(i32 %134, i32* null, i32 %135, i32 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.lm8333* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  br label %160

144:                                              ; preds = %131
  %145 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %146 = call i32 @input_register_device(%struct.input_dev* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %154

150:                                              ; preds = %144
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %153 = call i32 @i2c_set_clientdata(%struct.i2c_client* %151, %struct.lm8333* %152)
  store i32 0, i32* %3, align 4
  br label %166

154:                                              ; preds = %149
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %159 = call i32 @free_irq(i32 %157, %struct.lm8333* %158)
  br label %160

160:                                              ; preds = %154, %143, %90, %50
  %161 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %162 = call i32 @input_free_device(%struct.input_dev* %161)
  %163 = load %struct.lm8333*, %struct.lm8333** %7, align 8
  %164 = call i32 @kfree(%struct.lm8333* %163)
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %160, %150, %35, %16
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.lm8333_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.lm8333* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32, i32*, i32, i32, i32, %struct.input_dev*) #1

declare dso_local i32 @lm8333_write8(%struct.lm8333*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.lm8333*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm8333*) #1

declare dso_local i32 @free_irq(i32, %struct.lm8333*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.lm8333*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
