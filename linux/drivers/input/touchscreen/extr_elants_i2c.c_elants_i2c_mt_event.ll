; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_mt_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_mt_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elants_data = type { %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@FW_POS_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"n_fingers: %u, state: %04x\0A\00", align 1
@MAX_CONTACT_NUM = common dso_local global i32 0, align 4
@FW_POS_XY = common dso_local global i32 0, align 4
@FW_POS_PRESSURE = common dso_local global i32 0, align 4
@FW_POS_WIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"i=%d x=%d y=%d p=%d w=%d\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elants_data*, i32*)* @elants_i2c_mt_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elants_i2c_mt_event(%struct.elants_data* %0, i32* %1) #0 {
  %3 = alloca %struct.elants_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.elants_data* %0, %struct.elants_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %15 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %14, i32 0, i32 1
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @FW_POS_STATE, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @FW_POS_STATE, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 48
  %31 = shl i32 %30, 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @FW_POS_STATE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %31, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %39 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %139, %2
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MAX_CONTACT_NUM, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %142

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %136

58:                                               ; preds = %54
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @FW_POS_XY, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 3
  %63 = add nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32* %65, i32** %13, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 240
  %70 = shl i32 %69, 4
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %70, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 15
  %79 = shl i32 %78, 8
  %80 = load i32*, i32** %13, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %79, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @FW_POS_PRESSURE, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* @FW_POS_WIDTH, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %99 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @input_mt_slot(%struct.input_dev* %108, i32 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = load i32, i32* @MT_TOOL_FINGER, align 4
  %113 = call i32 @input_mt_report_slot_state(%struct.input_dev* %111, i32 %112, i32 1)
  %114 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %115 = load i32, i32* @EV_ABS, align 4
  %116 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @input_event(%struct.input_dev* %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %120 = load i32, i32* @EV_ABS, align 4
  %121 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @input_event(%struct.input_dev* %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %125 = load i32, i32* @EV_ABS, align 4
  %126 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @input_event(%struct.input_dev* %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %130 = load i32, i32* @EV_ABS, align 4
  %131 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @input_event(%struct.input_dev* %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = add i32 %134, -1
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %58, %54
  %137 = load i32, i32* %7, align 4
  %138 = ashr i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %45

142:                                              ; preds = %52
  %143 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %144 = call i32 @input_mt_sync_frame(%struct.input_dev* %143)
  %145 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %146 = call i32 @input_sync(%struct.input_dev* %145)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
