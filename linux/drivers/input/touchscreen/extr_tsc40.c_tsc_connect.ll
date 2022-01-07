; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc40.c_tsc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc40.c_tsc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.tsc_ser = type { %struct.input_dev*, i32, %struct.serio* }
%struct.input_dev = type { i8*, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"TSC-10/25/40 Serial TouchScreen\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_TSC40 = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @tsc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.tsc_ser*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tsc_ser* @kzalloc(i32 24, i32 %9)
  store %struct.tsc_ser* %10, %struct.tsc_ser** %6, align 8
  %11 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %11, %struct.input_dev** %7, align 8
  %12 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %13 = icmp ne %struct.tsc_ser* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %16 = icmp ne %struct.input_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %108

20:                                               ; preds = %14
  %21 = load %struct.serio*, %struct.serio** %4, align 8
  %22 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %23 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %22, i32 0, i32 2
  store %struct.serio* %21, %struct.serio** %23, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %25 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %26 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %25, i32 0, i32 0
  store %struct.input_dev* %24, %struct.input_dev** %26, align 8
  %27 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %28 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.serio*, %struct.serio** %4, align 8
  %31 = getelementptr inbounds %struct.serio, %struct.serio* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %37 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @BUS_RS232, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @SERIO_TSC40, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 40, i32* %51, align 8
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.serio*, %struct.serio** %4, align 8
  %56 = getelementptr inbounds %struct.serio, %struct.serio* %55, i32 0, i32 1
  %57 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  %60 = load i32, i32* @EV_KEY, align 4
  %61 = call i32 @BIT_MASK(i32 %60)
  %62 = load i32, i32* @EV_ABS, align 4
  %63 = call i32 @BIT_MASK(i32 %62)
  %64 = or i32 %61, %63
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @BTN_TOUCH, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @__set_bit(i32 %69, i32 %72)
  %74 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %75 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %74, i32 0, i32 0
  %76 = load %struct.input_dev*, %struct.input_dev** %75, align 8
  %77 = load i32, i32* @ABS_X, align 4
  %78 = call i32 @input_set_abs_params(%struct.input_dev* %76, i32 %77, i32 0, i32 1023, i32 0, i32 0)
  %79 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %80 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %79, i32 0, i32 0
  %81 = load %struct.input_dev*, %struct.input_dev** %80, align 8
  %82 = load i32, i32* @ABS_Y, align 4
  %83 = call i32 @input_set_abs_params(%struct.input_dev* %81, i32 %82, i32 0, i32 1023, i32 0, i32 0)
  %84 = load %struct.serio*, %struct.serio** %4, align 8
  %85 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %86 = call i32 @serio_set_drvdata(%struct.serio* %84, %struct.tsc_ser* %85)
  %87 = load %struct.serio*, %struct.serio** %4, align 8
  %88 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %89 = call i32 @serio_open(%struct.serio* %87, %struct.serio_driver* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %20
  br label %105

93:                                               ; preds = %20
  %94 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %95 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %94, i32 0, i32 0
  %96 = load %struct.input_dev*, %struct.input_dev** %95, align 8
  %97 = call i32 @input_register_device(%struct.input_dev* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %102

101:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %114

102:                                              ; preds = %100
  %103 = load %struct.serio*, %struct.serio** %4, align 8
  %104 = call i32 @serio_close(%struct.serio* %103)
  br label %105

105:                                              ; preds = %102, %92
  %106 = load %struct.serio*, %struct.serio** %4, align 8
  %107 = call i32 @serio_set_drvdata(%struct.serio* %106, %struct.tsc_ser* null)
  br label %108

108:                                              ; preds = %105, %17
  %109 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %110 = call i32 @input_free_device(%struct.input_dev* %109)
  %111 = load %struct.tsc_ser*, %struct.tsc_ser** %6, align 8
  %112 = call i32 @kfree(%struct.tsc_ser* %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %101
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.tsc_ser* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.tsc_ser*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.tsc_ser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
