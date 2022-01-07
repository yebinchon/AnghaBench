; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tm2-touchkey.c_tm2_touchkey_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tm2-touchkey.c_tm2_touchkey_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm2_touchkey_data = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to read i2c data: %d\0A\00", align 1
@TM2_TOUCHKEY_BIT_KEYCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid keycode index %d\0A\00", align 1
@TM2_TOUCHKEY_BIT_PRESS_EV = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tm2_touchkey_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_touchkey_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tm2_touchkey_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tm2_touchkey_data*
  store %struct.tm2_touchkey_data* %10, %struct.tm2_touchkey_data** %5, align 8
  %11 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %12 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %19 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %18, i32 0, i32 5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i32 @i2c_smbus_read_byte(%struct.TYPE_7__* %20)
  store i32 %21, i32* %6, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %24 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %23, i32 0, i32 5
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %27 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_7__* %25, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %22, %17
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %37 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %36, i32 0, i32 5
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %107

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @TM2_TOUCHKEY_BIT_KEYCODE, align 4
  %45 = and i32 %43, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %52 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49, %42
  %56 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %57 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %56, i32 0, i32 5
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_warn(i32* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %107

62:                                               ; preds = %49
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @TM2_TOUCHKEY_BIT_PRESS_EV, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %71 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %76 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %79 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @input_report_key(i32 %77, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %68

89:                                               ; preds = %68
  br label %102

90:                                               ; preds = %62
  %91 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %92 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %95 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @input_report_key(i32 %93, i32 %100, i32 1)
  br label %102

102:                                              ; preds = %90, %89
  %103 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %104 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @input_sync(i32 %105)
  br label %107

107:                                              ; preds = %102, %55, %35
  %108 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %109 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %107
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @TM2_TOUCHKEY_BIT_PRESS_EV, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %121 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @LED_OFF, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %5, align 8
  %128 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %127, i32 0, i32 1
  %129 = load i64, i64* @LED_OFF, align 8
  %130 = call i32 @tm2_touchkey_led_brightness_set(%struct.TYPE_6__* %128, i64 %129)
  br label %131

131:                                              ; preds = %126, %119
  br label %132

132:                                              ; preds = %131, %114, %107
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %133
}

declare dso_local i32 @i2c_smbus_read_byte(%struct.TYPE_7__*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @tm2_touchkey_led_brightness_set(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
