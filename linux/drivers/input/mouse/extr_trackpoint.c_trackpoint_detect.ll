; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i32, %struct.trackpoint_data*, %struct.TYPE_4__*, i32, i32, %struct.ps2dev }
%struct.trackpoint_data = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ps2dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@trackpoint_variants = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"TrackPoint\00", align 1
@trackpoint_reconnect = common dso_local global i32 0, align 4
@trackpoint_disconnect = common dso_local global i32 0, align 4
@TP_VARIANT_IBM = common dso_local global i64 0, align 8
@TP_EXT_BTN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"failed to get extended button data, assuming 3 buttons\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"got 0 in extended button data, assuming 3 buttons\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@INPUT_PROP_POINTING_STICK = common dso_local global i32 0, align 4
@trackpoint_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to create sysfs attributes, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s TrackPoint firmware: 0x%02x, buttons: %d/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trackpoint_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca %struct.trackpoint_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 6
  store %struct.ps2dev* %13, %struct.ps2dev** %6, align 8
  %14 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %15 = call i32 @trackpoint_start_protocol(%struct.psmouse* %14, i64* %8, i64* %9)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %3, align 4
  br label %145

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %145

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.trackpoint_data* @kzalloc(i32 16, i32 %25)
  store %struct.trackpoint_data* %26, %struct.trackpoint_data** %7, align 8
  %27 = load %struct.trackpoint_data*, %struct.trackpoint_data** %7, align 8
  %28 = icmp ne %struct.trackpoint_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %145

32:                                               ; preds = %24
  %33 = load %struct.trackpoint_data*, %struct.trackpoint_data** %7, align 8
  %34 = call i32 @trackpoint_defaults(%struct.trackpoint_data* %33)
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.trackpoint_data*, %struct.trackpoint_data** %7, align 8
  %37 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.trackpoint_data*, %struct.trackpoint_data** %7, align 8
  %40 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.trackpoint_data*, %struct.trackpoint_data** %7, align 8
  %42 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 2
  store %struct.trackpoint_data* %41, %struct.trackpoint_data** %43, align 8
  %44 = load i32*, i32** @trackpoint_variants, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %49 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %51 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %51, align 8
  %52 = load i32, i32* @trackpoint_reconnect, align 4
  %53 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @trackpoint_disconnect, align 4
  %56 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %57 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @TP_VARIANT_IBM, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %32
  store i64 51, i64* %10, align 8
  br label %79

62:                                               ; preds = %32
  %63 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %64 = load i32, i32* @TP_EXT_BTN, align 4
  %65 = call i32 @trackpoint_read(%struct.ps2dev* %63, i32 %64, i64* %10)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %70 = call i32 @psmouse_warn(%struct.psmouse* %69, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i64 51, i64* %10, align 8
  br label %78

71:                                               ; preds = %62
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %76 = call i32 @psmouse_warn(%struct.psmouse* %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i64 51, i64* %10, align 8
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %68
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i64, i64* %10, align 8
  %81 = and i64 %80, 15
  %82 = icmp uge i64 %81, 3
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %85 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* @EV_KEY, align 4
  %88 = load i32, i32* @BTN_MIDDLE, align 4
  %89 = call i32 @input_set_capability(%struct.TYPE_4__* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %79
  %91 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %92 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %93 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @__set_bit(i32 %91, i32 %96)
  %98 = load i32, i32* @INPUT_PROP_POINTING_STICK, align 4
  %99 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %100 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @__set_bit(i32 %98, i32 %103)
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @TP_VARIANT_IBM, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %90
  %109 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %110 = call i64 @trackpoint_power_on_reset(%struct.ps2dev* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108, %90
  %113 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %114 = call i32 @trackpoint_sync(%struct.psmouse* %113, i32 0)
  br label %115

115:                                              ; preds = %112, %108
  %116 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %117 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = call i32 @device_add_group(i32* %119, i32* @trackpoint_attr_group)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %115
  %124 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @psmouse_err(%struct.psmouse* %124, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %128 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %127, i32 0, i32 2
  %129 = load %struct.trackpoint_data*, %struct.trackpoint_data** %128, align 8
  %130 = call i32 @kfree(%struct.trackpoint_data* %129)
  %131 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %132 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %131, i32 0, i32 2
  store %struct.trackpoint_data* null, %struct.trackpoint_data** %132, align 8
  store i32 -1, i32* %3, align 4
  br label %145

133:                                              ; preds = %115
  %134 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %135 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %136 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = and i64 %139, 240
  %141 = lshr i64 %140, 4
  %142 = load i64, i64* %10, align 8
  %143 = and i64 %142, 15
  %144 = call i32 @psmouse_info(%struct.psmouse* %134, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %137, i64 %138, i64 %141, i64 %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %133, %123, %29, %23, %18
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @trackpoint_start_protocol(%struct.psmouse*, i64*, i64*) #1

declare dso_local %struct.trackpoint_data* @kzalloc(i32, i32) #1

declare dso_local i32 @trackpoint_defaults(%struct.trackpoint_data*) #1

declare dso_local i32 @trackpoint_read(%struct.ps2dev*, i32, i64*) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @trackpoint_power_on_reset(%struct.ps2dev*) #1

declare dso_local i32 @trackpoint_sync(%struct.psmouse*, i32) #1

declare dso_local i32 @device_add_group(i32*, i32*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.trackpoint_data*) #1

declare dso_local i32 @psmouse_info(%struct.psmouse*, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
