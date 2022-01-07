; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_clps711x-keypad.c_clps711x_keypad_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_clps711x-keypad.c_clps711x_keypad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.TYPE_4__*, %struct.clps711x_keypad_data* }
%struct.TYPE_4__ = type { i16* }
%struct.clps711x_keypad_data = type { i32, i32, i32, %struct.clps711x_gpio_data* }
%struct.clps711x_gpio_data = type { i32, i32 }

@CLPS711X_KEYPAD_COL_COUNT = common dso_local global i32 0, align 4
@SYSCON_OFFSET = common dso_local global i32 0, align 4
@SYSCON1_KBDSCAN_MASK = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @clps711x_keypad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clps711x_keypad_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca %struct.clps711x_keypad_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clps711x_gpio_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %12 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %13 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i16*, i16** %15, align 8
  store i16* %16, i16** %3, align 8
  %17 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %18 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %17, i32 0, i32 1
  %19 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %18, align 8
  store %struct.clps711x_keypad_data* %19, %struct.clps711x_keypad_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %128, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CLPS711X_KEYPAD_COL_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %131

24:                                               ; preds = %20
  %25 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %26 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SYSCON_OFFSET, align 4
  %29 = load i32, i32* @SYSCON1_KBDSCAN_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 8, %30
  %32 = call i32 @SYSCON1_KBDSCAN(i32 %31)
  %33 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %32)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %117, %24
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %37 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %120

40:                                               ; preds = %34
  %41 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %42 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %41, i32 0, i32 3
  %43 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %43, i64 %45
  store %struct.clps711x_gpio_data* %46, %struct.clps711x_gpio_data** %8, align 8
  br label %47

47:                                               ; preds = %57, %40
  %48 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %8, align 8
  %49 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpiod_get_value_cansleep(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = call i32 (...) @cond_resched()
  %53 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %8, align 8
  %54 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gpiod_get_value_cansleep(i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %47, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %8, align 8
  %64 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @test_bit(i32 %62, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %61
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %73 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @MATRIX_SCAN_CODE(i32 %70, i32 %71, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %8, align 8
  %81 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @set_bit(i32 %79, i32 %82)
  %84 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %85 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* @EV_MSC, align 4
  %88 = load i32, i32* @MSC_SCAN, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @input_event(%struct.TYPE_4__* %86, i32 %87, i32 %88, i32 %89)
  br label %97

91:                                               ; preds = %69
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %8, align 8
  %94 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @clear_bit(i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %78
  %98 = load i16*, i16** %3, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16, i16* %98, i64 %100
  %102 = load i16, i16* %101, align 2
  %103 = icmp ne i16 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %106 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i16*, i16** %3, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %108, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @input_report_key(%struct.TYPE_4__* %107, i16 zeroext %112, i32 %113)
  br label %115

115:                                              ; preds = %104, %97
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %61
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %34

120:                                              ; preds = %34
  %121 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %122 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SYSCON_OFFSET, align 4
  %125 = load i32, i32* @SYSCON1_KBDSCAN_MASK, align 4
  %126 = call i32 @SYSCON1_KBDSCAN(i32 1)
  %127 = call i32 @regmap_update_bits(i32 %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %20

131:                                              ; preds = %20
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %136 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = call i32 @input_sync(%struct.TYPE_4__* %137)
  br label %139

139:                                              ; preds = %134, %131
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SYSCON1_KBDSCAN(i32) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_event(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.TYPE_4__*, i16 zeroext, i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
