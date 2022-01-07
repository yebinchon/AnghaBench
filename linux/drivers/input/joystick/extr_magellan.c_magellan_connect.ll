; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_magellan.c_magellan_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_magellan.c_magellan_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.magellan = type { %struct.input_dev*, i32 }
%struct.input_dev = type { i8*, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"LogiCad3D Magellan / SpaceMouse\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_MAGELLAN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@magellan_buttons = common dso_local global i32* null, align 8
@magellan_axes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @magellan_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magellan_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.magellan*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.magellan* @kzalloc(i32 16, i32 %12)
  store %struct.magellan* %13, %struct.magellan** %6, align 8
  %14 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %14, %struct.input_dev** %7, align 8
  %15 = load %struct.magellan*, %struct.magellan** %6, align 8
  %16 = icmp ne %struct.magellan* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %19 = icmp ne %struct.input_dev* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  br label %123

21:                                               ; preds = %17
  %22 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %23 = load %struct.magellan*, %struct.magellan** %6, align 8
  %24 = getelementptr inbounds %struct.magellan, %struct.magellan* %23, i32 0, i32 0
  store %struct.input_dev* %22, %struct.input_dev** %24, align 8
  %25 = load %struct.magellan*, %struct.magellan** %6, align 8
  %26 = getelementptr inbounds %struct.magellan, %struct.magellan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.serio*, %struct.serio** %4, align 8
  %29 = getelementptr inbounds %struct.serio, %struct.serio* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load %struct.magellan*, %struct.magellan** %6, align 8
  %35 = getelementptr inbounds %struct.magellan, %struct.magellan* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @BUS_RS232, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @SERIO_MAGELLAN, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 256, i32* %52, align 4
  %53 = load %struct.serio*, %struct.serio** %4, align 8
  %54 = getelementptr inbounds %struct.serio, %struct.serio* %53, i32 0, i32 1
  %55 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32* %54, i32** %57, align 8
  %58 = load i32, i32* @EV_KEY, align 4
  %59 = call i32 @BIT_MASK(i32 %58)
  %60 = load i32, i32* @EV_ABS, align 4
  %61 = call i32 @BIT_MASK(i32 %60)
  %62 = or i32 %59, %61
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %80, %21
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 9
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32*, i32** @magellan_buttons, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @set_bit(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %67

83:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 6
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %89 = load i32*, i32** @magellan_axes, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @input_set_abs_params(%struct.input_dev* %88, i32 %93, i32 -360, i32 360, i32 0, i32 0)
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %84

98:                                               ; preds = %84
  %99 = load %struct.serio*, %struct.serio** %4, align 8
  %100 = load %struct.magellan*, %struct.magellan** %6, align 8
  %101 = call i32 @serio_set_drvdata(%struct.serio* %99, %struct.magellan* %100)
  %102 = load %struct.serio*, %struct.serio** %4, align 8
  %103 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %104 = call i32 @serio_open(%struct.serio* %102, %struct.serio_driver* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %120

108:                                              ; preds = %98
  %109 = load %struct.magellan*, %struct.magellan** %6, align 8
  %110 = getelementptr inbounds %struct.magellan, %struct.magellan* %109, i32 0, i32 0
  %111 = load %struct.input_dev*, %struct.input_dev** %110, align 8
  %112 = call i32 @input_register_device(%struct.input_dev* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %117

116:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %129

117:                                              ; preds = %115
  %118 = load %struct.serio*, %struct.serio** %4, align 8
  %119 = call i32 @serio_close(%struct.serio* %118)
  br label %120

120:                                              ; preds = %117, %107
  %121 = load %struct.serio*, %struct.serio** %4, align 8
  %122 = call i32 @serio_set_drvdata(%struct.serio* %121, %struct.magellan* null)
  br label %123

123:                                              ; preds = %120, %20
  %124 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %125 = call i32 @input_free_device(%struct.input_dev* %124)
  %126 = load %struct.magellan*, %struct.magellan** %6, align 8
  %127 = call i32 @kfree(%struct.magellan* %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %123, %116
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.magellan* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.magellan*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.magellan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
