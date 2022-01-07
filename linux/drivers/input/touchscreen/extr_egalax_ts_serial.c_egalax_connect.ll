; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts_serial.c_egalax_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts_serial.c_egalax_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.egalax = type { i32, %struct.input_dev*, %struct.serio* }
%struct.input_dev = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"EETI eGalaxTouch Serial TouchScreen\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_EGALAX = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@EGALAX_MIN_XC = common dso_local global i32 0, align 4
@EGALAX_MAX_XC = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@EGALAX_MIN_YC = common dso_local global i32 0, align 4
@EGALAX_MAX_YC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @egalax_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egalax_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.egalax*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.egalax* @kzalloc(i32 24, i32 %9)
  store %struct.egalax* %10, %struct.egalax** %6, align 8
  %11 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %11, %struct.input_dev** %7, align 8
  %12 = load %struct.egalax*, %struct.egalax** %6, align 8
  %13 = icmp ne %struct.egalax* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %16 = icmp ne %struct.input_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %96

20:                                               ; preds = %14
  %21 = load %struct.serio*, %struct.serio** %4, align 8
  %22 = load %struct.egalax*, %struct.egalax** %6, align 8
  %23 = getelementptr inbounds %struct.egalax, %struct.egalax* %22, i32 0, i32 2
  store %struct.serio* %21, %struct.serio** %23, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %25 = load %struct.egalax*, %struct.egalax** %6, align 8
  %26 = getelementptr inbounds %struct.egalax, %struct.egalax* %25, i32 0, i32 1
  store %struct.input_dev* %24, %struct.input_dev** %26, align 8
  %27 = load %struct.egalax*, %struct.egalax** %6, align 8
  %28 = getelementptr inbounds %struct.egalax, %struct.egalax* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.serio*, %struct.serio** %4, align 8
  %31 = getelementptr inbounds %struct.serio, %struct.serio* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.egalax*, %struct.egalax** %6, align 8
  %37 = getelementptr inbounds %struct.egalax, %struct.egalax* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @BUS_RS232, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @SERIO_EGALAX, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.serio*, %struct.serio** %4, align 8
  %56 = getelementptr inbounds %struct.serio, %struct.serio* %55, i32 0, i32 1
  %57 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = load i32, i32* @EV_KEY, align 4
  %62 = load i32, i32* @BTN_TOUCH, align 4
  %63 = call i32 @input_set_capability(%struct.input_dev* %60, i32 %61, i32 %62)
  %64 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %65 = load i32, i32* @ABS_X, align 4
  %66 = load i32, i32* @EGALAX_MIN_XC, align 4
  %67 = load i32, i32* @EGALAX_MAX_XC, align 4
  %68 = call i32 @input_set_abs_params(%struct.input_dev* %64, i32 %65, i32 %66, i32 %67, i32 0, i32 0)
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = load i32, i32* @ABS_Y, align 4
  %71 = load i32, i32* @EGALAX_MIN_YC, align 4
  %72 = load i32, i32* @EGALAX_MAX_YC, align 4
  %73 = call i32 @input_set_abs_params(%struct.input_dev* %69, i32 %70, i32 %71, i32 %72, i32 0, i32 0)
  %74 = load %struct.serio*, %struct.serio** %4, align 8
  %75 = load %struct.egalax*, %struct.egalax** %6, align 8
  %76 = call i32 @serio_set_drvdata(%struct.serio* %74, %struct.egalax* %75)
  %77 = load %struct.serio*, %struct.serio** %4, align 8
  %78 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %79 = call i32 @serio_open(%struct.serio* %77, %struct.serio_driver* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %20
  br label %93

83:                                               ; preds = %20
  %84 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %85 = call i32 @input_register_device(%struct.input_dev* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %90

89:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %102

90:                                               ; preds = %88
  %91 = load %struct.serio*, %struct.serio** %4, align 8
  %92 = call i32 @serio_close(%struct.serio* %91)
  br label %93

93:                                               ; preds = %90, %82
  %94 = load %struct.serio*, %struct.serio** %4, align 8
  %95 = call i32 @serio_set_drvdata(%struct.serio* %94, %struct.egalax* null)
  br label %96

96:                                               ; preds = %93, %17
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = call i32 @input_free_device(%struct.input_dev* %97)
  %99 = load %struct.egalax*, %struct.egalax** %6, align 8
  %100 = call i32 @kfree(%struct.egalax* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %89
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.egalax* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.egalax*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.egalax*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
