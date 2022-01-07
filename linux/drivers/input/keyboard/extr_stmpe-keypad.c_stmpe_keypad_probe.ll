; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.stmpe = type { i64 }
%struct.stmpe_keypad = type { %struct.input_dev*, i32, i32, i32, i32, i32*, %struct.stmpe* }
%struct.input_dev = type { i8*, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stmpe_keypad_variants = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"debounce-interval\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"st,scan-count\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"st,no-autorepeat\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"STMPE keypad\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@stmpe_keypad_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"stmpe-keypad\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unable to get irq: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"unable to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stmpe_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_keypad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stmpe*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stmpe_keypad*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.stmpe* @dev_get_drvdata(i32 %15)
  store %struct.stmpe* %16, %struct.stmpe** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @platform_get_irq(%struct.platform_device* %21, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %2, align 4
  br label %159

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.stmpe_keypad* @devm_kzalloc(%struct.TYPE_10__* %29, i32 40, i32 %30)
  store %struct.stmpe_keypad* %31, %struct.stmpe_keypad** %6, align 8
  %32 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %33 = icmp ne %struct.stmpe_keypad* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %159

37:                                               ; preds = %27
  %38 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %39 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %40 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %39, i32 0, i32 6
  store %struct.stmpe* %38, %struct.stmpe** %40, align 8
  %41 = load i32*, i32** @stmpe_keypad_variants, align 8
  %42 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %43 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %47 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %46, i32 0, i32 5
  store i32* %45, i32** %47, align 8
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %50 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %49, i32 0, i32 4
  %51 = call i32 @of_property_read_u32(%struct.device_node* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %50)
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %54 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %53, i32 0, i32 3
  %55 = call i32 @of_property_read_u32(%struct.device_node* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = call i32 @of_property_read_bool(%struct.device_node* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %59 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_10__* %61)
  store %struct.input_dev* %62, %struct.input_dev** %7, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = icmp ne %struct.input_dev* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %37
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %159

68:                                               ; preds = %37
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* @BUS_I2C, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @matrix_keypad_parse_properties(%struct.TYPE_10__* %81, i32* %8, i32* %9)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %2, align 4
  br label %159

87:                                               ; preds = %68
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %91 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %94 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %88, i32 %89, i32 %92, %struct.input_dev* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %159

99:                                               ; preds = %87
  %100 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %101 = load i32, i32* @EV_MSC, align 4
  %102 = load i32, i32* @MSC_SCAN, align 4
  %103 = call i32 @input_set_capability(%struct.input_dev* %100, i32 %101, i32 %102)
  %104 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %105 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* @EV_REP, align 4
  %110 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @__set_bit(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %99
  %115 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @stmpe_keypad_fill_used_pins(%struct.stmpe_keypad* %115, i32 %116, i32 %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %120 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %121 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %120, i32 0, i32 0
  store %struct.input_dev* %119, %struct.input_dev** %121, align 8
  %122 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %123 = call i32 @stmpe_keypad_chip_init(%struct.stmpe_keypad* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %2, align 4
  br label %159

128:                                              ; preds = %114
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @stmpe_keypad_irq, align 4
  %133 = load i32, i32* @IRQF_ONESHOT, align 4
  %134 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %135 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %130, i32 %131, i32* null, i32 %132, i32 %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.stmpe_keypad* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %128
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @dev_err(%struct.TYPE_10__* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %2, align 4
  br label %159

144:                                              ; preds = %128
  %145 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %146 = call i32 @input_register_device(%struct.input_dev* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @dev_err(%struct.TYPE_10__* %151, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %2, align 4
  br label %159

155:                                              ; preds = %144
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %158 = call i32 @platform_set_drvdata(%struct.platform_device* %156, %struct.stmpe_keypad* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %155, %149, %138, %126, %97, %85, %65, %34, %25
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.stmpe* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.stmpe_keypad* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_10__*) #1

declare dso_local i32 @matrix_keypad_parse_properties(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, i32, %struct.input_dev*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @stmpe_keypad_fill_used_pins(%struct.stmpe_keypad*, i32, i32) #1

declare dso_local i32 @stmpe_keypad_chip_init(%struct.stmpe_keypad*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i8*, %struct.stmpe_keypad*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stmpe_keypad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
