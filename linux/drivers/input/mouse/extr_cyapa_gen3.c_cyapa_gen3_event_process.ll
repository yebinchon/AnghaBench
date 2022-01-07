; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_event_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.cyapa_reg_data = type { i32, %struct.cyapa_touch* }
%struct.cyapa_touch = type { i32, i32, i32, i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@CAPABILITY_LEFT_BTN_MASK = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@OP_DATA_LEFT_BTN = common dso_local global i32 0, align 4
@CAPABILITY_MIDDLE_BTN_MASK = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@OP_DATA_MIDDLE_BTN = common dso_local global i32 0, align 4
@CAPABILITY_RIGHT_BTN_MASK = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@OP_DATA_RIGHT_BTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, %struct.cyapa_reg_data*)* @cyapa_gen3_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_event_process(%struct.cyapa* %0, %struct.cyapa_reg_data* %1) #0 {
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.cyapa_reg_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cyapa_touch*, align 8
  %9 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  store %struct.cyapa_reg_data* %1, %struct.cyapa_reg_data** %4, align 8
  %10 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %11 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %10, i32 0, i32 1
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load %struct.cyapa_reg_data*, %struct.cyapa_reg_data** %4, align 8
  %14 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %69, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = load %struct.cyapa_reg_data*, %struct.cyapa_reg_data** %4, align 8
  %24 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %23, i32 0, i32 1
  %25 = load %struct.cyapa_touch*, %struct.cyapa_touch** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cyapa_touch, %struct.cyapa_touch* %25, i64 %27
  store %struct.cyapa_touch* %28, %struct.cyapa_touch** %8, align 8
  %29 = load %struct.cyapa_touch*, %struct.cyapa_touch** %8, align 8
  %30 = getelementptr inbounds %struct.cyapa_touch, %struct.cyapa_touch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @input_mt_slot(%struct.input_dev* %33, i32 %34)
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = load i32, i32* @MT_TOOL_FINGER, align 4
  %38 = call i32 @input_mt_report_slot_state(%struct.input_dev* %36, i32 %37, i32 1)
  %39 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %40 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %41 = load %struct.cyapa_touch*, %struct.cyapa_touch** %8, align 8
  %42 = getelementptr inbounds %struct.cyapa_touch, %struct.cyapa_touch* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 240
  %45 = shl i32 %44, 4
  %46 = load %struct.cyapa_touch*, %struct.cyapa_touch** %8, align 8
  %47 = getelementptr inbounds %struct.cyapa_touch, %struct.cyapa_touch* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = call i32 @input_report_abs(%struct.input_dev* %39, i32 %40, i32 %49)
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %53 = load %struct.cyapa_touch*, %struct.cyapa_touch** %8, align 8
  %54 = getelementptr inbounds %struct.cyapa_touch, %struct.cyapa_touch* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 8
  %58 = load %struct.cyapa_touch*, %struct.cyapa_touch** %8, align 8
  %59 = getelementptr inbounds %struct.cyapa_touch, %struct.cyapa_touch* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = call i32 @input_report_abs(%struct.input_dev* %51, i32 %52, i32 %61)
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %65 = load %struct.cyapa_touch*, %struct.cyapa_touch** %8, align 8
  %66 = getelementptr inbounds %struct.cyapa_touch, %struct.cyapa_touch* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @input_report_abs(%struct.input_dev* %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %22
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %18

72:                                               ; preds = %18
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = call i32 @input_mt_sync_frame(%struct.input_dev* %73)
  %75 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %76 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CAPABILITY_LEFT_BTN_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = load i32, i32* @BTN_LEFT, align 4
  %84 = load %struct.cyapa_reg_data*, %struct.cyapa_reg_data** %4, align 8
  %85 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @OP_DATA_LEFT_BTN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @input_report_key(%struct.input_dev* %82, i32 %83, i32 %92)
  br label %94

94:                                               ; preds = %81, %72
  %95 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %96 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CAPABILITY_MIDDLE_BTN_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %103 = load i32, i32* @BTN_MIDDLE, align 4
  %104 = load %struct.cyapa_reg_data*, %struct.cyapa_reg_data** %4, align 8
  %105 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @OP_DATA_MIDDLE_BTN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @input_report_key(%struct.input_dev* %102, i32 %103, i32 %112)
  br label %114

114:                                              ; preds = %101, %94
  %115 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %116 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CAPABILITY_RIGHT_BTN_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %114
  %122 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %123 = load i32, i32* @BTN_RIGHT, align 4
  %124 = load %struct.cyapa_reg_data*, %struct.cyapa_reg_data** %4, align 8
  %125 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @OP_DATA_RIGHT_BTN, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @input_report_key(%struct.input_dev* %122, i32 %123, i32 %132)
  br label %134

134:                                              ; preds = %121, %114
  %135 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %136 = call i32 @input_sync(%struct.input_dev* %135)
  ret i32 0
}

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
