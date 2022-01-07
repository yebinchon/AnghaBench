; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.vmmouse_data*, i32, i32, i32, %struct.TYPE_8__, i32, %struct.input_dev* }
%struct.vmmouse_data = type { %struct.input_dev*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.input_dev = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@VMMOUSE_PSNAME = common dso_local global i8* null, align 8
@VMMOUSE_VENDOR = common dso_local global i8* null, align 8
@VMMOUSE_NAME = common dso_local global i8* null, align 8
@BUS_I8042 = common dso_local global i32 0, align 4
@PSMOUSE_VMMOUSE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@VMMOUSE_MAX_X = common dso_local global i32 0, align 4
@VMMOUSE_MAX_Y = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@vmmouse_process_byte = common dso_local global i32 0, align 4
@vmmouse_disconnect = common dso_local global i32 0, align 4
@vmmouse_reconnect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmmouse_init(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.vmmouse_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 6
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = call i32 @psmouse_reset(%struct.psmouse* %11)
  %13 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %14 = call i32 @vmmouse_enable(%struct.psmouse* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %151

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.vmmouse_data* @kzalloc(i32 16, i32 %20)
  store %struct.vmmouse_data* %21, %struct.vmmouse_data** %4, align 8
  %22 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %22, %struct.input_dev** %6, align 8
  %23 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %24 = icmp ne %struct.vmmouse_data* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %139

31:                                               ; preds = %25
  %32 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %33 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %34 = getelementptr inbounds %struct.vmmouse_data, %struct.vmmouse_data* %33, i32 0, i32 0
  store %struct.input_dev* %32, %struct.input_dev** %34, align 8
  %35 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %36 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %37 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %36, i32 0, i32 0
  store %struct.vmmouse_data* %35, %struct.vmmouse_data** %37, align 8
  %38 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %39 = getelementptr inbounds %struct.vmmouse_data, %struct.vmmouse_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %42 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %40, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %49 = getelementptr inbounds %struct.vmmouse_data, %struct.vmmouse_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** @VMMOUSE_PSNAME, align 8
  %52 = load i8*, i8** @VMMOUSE_VENDOR, align 8
  %53 = load i8*, i8** @VMMOUSE_NAME, align 8
  %54 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %50, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %52, i8* %53)
  %55 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %56 = getelementptr inbounds %struct.vmmouse_data, %struct.vmmouse_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %61 = getelementptr inbounds %struct.vmmouse_data, %struct.vmmouse_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @BUS_I8042, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 2, i32* %71, align 8
  %72 = load i32, i32* @PSMOUSE_VMMOUSE, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %77 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %83 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32* %86, i32** %89, align 8
  %90 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %91 = load i32, i32* @EV_KEY, align 4
  %92 = load i32, i32* @BTN_LEFT, align 4
  %93 = call i32 @input_set_capability(%struct.input_dev* %90, i32 %91, i32 %92)
  %94 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %95 = load i32, i32* @EV_KEY, align 4
  %96 = load i32, i32* @BTN_RIGHT, align 4
  %97 = call i32 @input_set_capability(%struct.input_dev* %94, i32 %95, i32 %96)
  %98 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %99 = load i32, i32* @EV_KEY, align 4
  %100 = load i32, i32* @BTN_MIDDLE, align 4
  %101 = call i32 @input_set_capability(%struct.input_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %103 = load i32, i32* @EV_ABS, align 4
  %104 = load i32, i32* @ABS_X, align 4
  %105 = call i32 @input_set_capability(%struct.input_dev* %102, i32 %103, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %107 = load i32, i32* @EV_ABS, align 4
  %108 = load i32, i32* @ABS_Y, align 4
  %109 = call i32 @input_set_capability(%struct.input_dev* %106, i32 %107, i32 %108)
  %110 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %111 = load i32, i32* @ABS_X, align 4
  %112 = load i32, i32* @VMMOUSE_MAX_X, align 4
  %113 = call i32 @input_set_abs_params(%struct.input_dev* %110, i32 %111, i32 0, i32 %112, i32 0, i32 0)
  %114 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %115 = load i32, i32* @ABS_Y, align 4
  %116 = load i32, i32* @VMMOUSE_MAX_Y, align 4
  %117 = call i32 @input_set_abs_params(%struct.input_dev* %114, i32 %115, i32 0, i32 %116, i32 0, i32 0)
  %118 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %119 = getelementptr inbounds %struct.vmmouse_data, %struct.vmmouse_data* %118, i32 0, i32 0
  %120 = load %struct.input_dev*, %struct.input_dev** %119, align 8
  %121 = call i32 @input_register_device(%struct.input_dev* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %31
  br label %139

125:                                              ; preds = %31
  %126 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %127 = load i32, i32* @EV_REL, align 4
  %128 = load i32, i32* @REL_WHEEL, align 4
  %129 = call i32 @input_set_capability(%struct.input_dev* %126, i32 %127, i32 %128)
  %130 = load i32, i32* @vmmouse_process_byte, align 4
  %131 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %132 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @vmmouse_disconnect, align 4
  %134 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %135 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @vmmouse_reconnect, align 4
  %137 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %138 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  store i32 0, i32* %2, align 4
  br label %151

139:                                              ; preds = %124, %28
  %140 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %141 = call i32 @vmmouse_disable(%struct.psmouse* %140)
  %142 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %143 = call i32 @psmouse_reset(%struct.psmouse* %142)
  %144 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %145 = call i32 @input_free_device(%struct.input_dev* %144)
  %146 = load %struct.vmmouse_data*, %struct.vmmouse_data** %4, align 8
  %147 = call i32 @kfree(%struct.vmmouse_data* %146)
  %148 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %149 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %148, i32 0, i32 0
  store %struct.vmmouse_data* null, %struct.vmmouse_data** %149, align 8
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %139, %125, %17
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i32 @vmmouse_enable(%struct.psmouse*) #1

declare dso_local %struct.vmmouse_data* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @vmmouse_disable(%struct.psmouse*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.vmmouse_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
