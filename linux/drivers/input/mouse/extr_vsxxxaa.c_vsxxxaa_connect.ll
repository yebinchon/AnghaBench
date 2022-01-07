; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vsxxxaa.c_vsxxxaa_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vsxxxaa.c_vsxxxaa_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.vsxxxaa = type { i32, i32, %struct.serio*, %struct.input_dev* }
%struct.input_dev = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"DEC VSXXX-AA/-GA mouse or VSXXX-AB digitizer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @vsxxxaa_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsxxxaa_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.vsxxxaa*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vsxxxaa* @kzalloc(i32 24, i32 %11)
  store %struct.vsxxxaa* %12, %struct.vsxxxaa** %6, align 8
  %13 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %13, %struct.input_dev** %7, align 8
  %14 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %15 = icmp ne %struct.vsxxxaa* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = icmp ne %struct.input_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %132

20:                                               ; preds = %16
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %23 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %22, i32 0, i32 3
  store %struct.input_dev* %21, %struct.input_dev** %23, align 8
  %24 = load %struct.serio*, %struct.serio** %4, align 8
  %25 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %26 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %25, i32 0, i32 2
  store %struct.serio* %24, %struct.serio** %26, align 8
  %27 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %28 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlcat(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 4)
  %31 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %32 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.serio*, %struct.serio** %4, align 8
  %35 = getelementptr inbounds %struct.serio, %struct.serio* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %39 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %44 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @BUS_RS232, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.serio*, %struct.serio** %4, align 8
  %53 = getelementptr inbounds %struct.serio, %struct.serio* %52, i32 0, i32 1
  %54 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load i32, i32* @EV_KEY, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @__set_bit(i32 %57, i32 %60)
  %62 = load i32, i32* @EV_REL, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @__set_bit(i32 %62, i32 %65)
  %67 = load i32, i32* @EV_ABS, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @__set_bit(i32 %67, i32 %70)
  %72 = load i32, i32* @BTN_LEFT, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__set_bit(i32 %72, i32 %75)
  %77 = load i32, i32* @BTN_MIDDLE, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__set_bit(i32 %77, i32 %80)
  %82 = load i32, i32* @BTN_RIGHT, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @__set_bit(i32 %82, i32 %85)
  %87 = load i32, i32* @BTN_TOUCH, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @__set_bit(i32 %87, i32 %90)
  %92 = load i32, i32* @REL_X, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @__set_bit(i32 %92, i32 %95)
  %97 = load i32, i32* @REL_Y, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @__set_bit(i32 %97, i32 %100)
  %102 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %103 = load i32, i32* @ABS_X, align 4
  %104 = call i32 @input_set_abs_params(%struct.input_dev* %102, i32 %103, i32 0, i32 1023, i32 0, i32 0)
  %105 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %106 = load i32, i32* @ABS_Y, align 4
  %107 = call i32 @input_set_abs_params(%struct.input_dev* %105, i32 %106, i32 0, i32 1023, i32 0, i32 0)
  %108 = load %struct.serio*, %struct.serio** %4, align 8
  %109 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %110 = call i32 @serio_set_drvdata(%struct.serio* %108, %struct.vsxxxaa* %109)
  %111 = load %struct.serio*, %struct.serio** %4, align 8
  %112 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %113 = call i32 @serio_open(%struct.serio* %111, %struct.serio_driver* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %20
  br label %129

117:                                              ; preds = %20
  %118 = load %struct.serio*, %struct.serio** %4, align 8
  %119 = call i32 @serio_write(%struct.serio* %118, i8 signext 84)
  %120 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %121 = call i32 @input_register_device(%struct.input_dev* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %126

125:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %138

126:                                              ; preds = %124
  %127 = load %struct.serio*, %struct.serio** %4, align 8
  %128 = call i32 @serio_close(%struct.serio* %127)
  br label %129

129:                                              ; preds = %126, %116
  %130 = load %struct.serio*, %struct.serio** %4, align 8
  %131 = call i32 @serio_set_drvdata(%struct.serio* %130, %struct.vsxxxaa* null)
  br label %132

132:                                              ; preds = %129, %19
  %133 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %134 = call i32 @input_free_device(%struct.input_dev* %133)
  %135 = load %struct.vsxxxaa*, %struct.vsxxxaa** %6, align 8
  %136 = call i32 @kfree(%struct.vsxxxaa* %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %125
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.vsxxxaa* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.vsxxxaa*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @serio_write(%struct.serio*, i8 signext) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.vsxxxaa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
