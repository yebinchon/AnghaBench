; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_twidjoy.c_twidjoy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_twidjoy.c_twidjoy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twidjoy_button_spec = type { i32, i32* }
%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.twidjoy = type { %struct.input_dev*, i32 }
%struct.input_dev = type { i8*, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Handykey Twiddler\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_TWIDJOY = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@twidjoy_buttons = common dso_local global %struct.twidjoy_button_spec* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @twidjoy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twidjoy_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.twidjoy_button_spec*, align 8
  %7 = alloca %struct.twidjoy*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.twidjoy* @kzalloc(i32 16, i32 %13)
  store %struct.twidjoy* %14, %struct.twidjoy** %7, align 8
  %15 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %15, %struct.input_dev** %8, align 8
  %16 = load %struct.twidjoy*, %struct.twidjoy** %7, align 8
  %17 = icmp ne %struct.twidjoy* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %20 = icmp ne %struct.input_dev* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  br label %131

22:                                               ; preds = %18
  %23 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %24 = load %struct.twidjoy*, %struct.twidjoy** %7, align 8
  %25 = getelementptr inbounds %struct.twidjoy, %struct.twidjoy* %24, i32 0, i32 0
  store %struct.input_dev* %23, %struct.input_dev** %25, align 8
  %26 = load %struct.twidjoy*, %struct.twidjoy** %7, align 8
  %27 = getelementptr inbounds %struct.twidjoy, %struct.twidjoy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.serio*, %struct.serio** %4, align 8
  %30 = getelementptr inbounds %struct.serio, %struct.serio* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.twidjoy*, %struct.twidjoy** %7, align 8
  %36 = getelementptr inbounds %struct.twidjoy, %struct.twidjoy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @BUS_RS232, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @SERIO_TWIDJOY, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 256, i32* %53, align 4
  %54 = load %struct.serio*, %struct.serio** %4, align 8
  %55 = getelementptr inbounds %struct.serio, %struct.serio* %54, i32 0, i32 1
  %56 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load i32, i32* @EV_KEY, align 4
  %60 = call i32 @BIT_MASK(i32 %59)
  %61 = load i32, i32* @EV_ABS, align 4
  %62 = call i32 @BIT_MASK(i32 %61)
  %63 = or i32 %60, %62
  %64 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %69 = load i32, i32* @ABS_X, align 4
  %70 = call i32 @input_set_abs_params(%struct.input_dev* %68, i32 %69, i32 -50, i32 50, i32 4, i32 4)
  %71 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %72 = load i32, i32* @ABS_Y, align 4
  %73 = call i32 @input_set_abs_params(%struct.input_dev* %71, i32 %72, i32 -50, i32 50, i32 4, i32 4)
  %74 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** @twidjoy_buttons, align 8
  store %struct.twidjoy_button_spec* %74, %struct.twidjoy_button_spec** %6, align 8
  br label %75

75:                                               ; preds = %103, %22
  %76 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %6, align 8
  %77 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %99, %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %6, align 8
  %84 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %6, align 8
  %89 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @set_bit(i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %87
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %81

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %6, align 8
  %105 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %104, i32 1
  store %struct.twidjoy_button_spec* %105, %struct.twidjoy_button_spec** %6, align 8
  br label %75

106:                                              ; preds = %75
  %107 = load %struct.serio*, %struct.serio** %4, align 8
  %108 = load %struct.twidjoy*, %struct.twidjoy** %7, align 8
  %109 = call i32 @serio_set_drvdata(%struct.serio* %107, %struct.twidjoy* %108)
  %110 = load %struct.serio*, %struct.serio** %4, align 8
  %111 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %112 = call i32 @serio_open(%struct.serio* %110, %struct.serio_driver* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %128

116:                                              ; preds = %106
  %117 = load %struct.twidjoy*, %struct.twidjoy** %7, align 8
  %118 = getelementptr inbounds %struct.twidjoy, %struct.twidjoy* %117, i32 0, i32 0
  %119 = load %struct.input_dev*, %struct.input_dev** %118, align 8
  %120 = call i32 @input_register_device(%struct.input_dev* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %125

124:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %137

125:                                              ; preds = %123
  %126 = load %struct.serio*, %struct.serio** %4, align 8
  %127 = call i32 @serio_close(%struct.serio* %126)
  br label %128

128:                                              ; preds = %125, %115
  %129 = load %struct.serio*, %struct.serio** %4, align 8
  %130 = call i32 @serio_set_drvdata(%struct.serio* %129, %struct.twidjoy* null)
  br label %131

131:                                              ; preds = %128, %21
  %132 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %133 = call i32 @input_free_device(%struct.input_dev* %132)
  %134 = load %struct.twidjoy*, %struct.twidjoy** %7, align 8
  %135 = call i32 @kfree(%struct.twidjoy* %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %131, %124
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.twidjoy* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.twidjoy*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.twidjoy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
