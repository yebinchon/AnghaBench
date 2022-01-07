; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_report_contact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_report_contact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wdt87xx_sys_param = type { i32, i32, i32, i32, i32 }

@FINGER_EV_V1_OFFSET_ID = common dso_local global i64 0, align 8
@FINGER_EV_V1_OFFSET_W = common dso_local global i64 0, align 8
@FINGER_EV_V1_OFFSET_P = common dso_local global i64 0, align 8
@FINGER_EV_V1_OFFSET_X = common dso_local global i32 0, align 4
@FINGER_EV_V1_OFFSET_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tip on (%d), x(%d), y(%d)\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.wdt87xx_sys_param*, i32*)* @wdt87xx_report_contact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt87xx_report_contact(%struct.input_dev* %0, %struct.wdt87xx_sys_param* %1, i32* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.wdt87xx_sys_param*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.wdt87xx_sys_param* %1, %struct.wdt87xx_sys_param** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* @FINGER_EV_V1_OFFSET_ID, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 3
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %105

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* @FINGER_EV_V1_OFFSET_ID, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %105

29:                                               ; preds = %21
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* @FINGER_EV_V1_OFFSET_W, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %35 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* @FINGER_EV_V1_OFFSET_P, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @FINGER_EV_V1_OFFSET_X, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @get_unaligned_le16(i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @FINGER_EV_V1_OFFSET_Y, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @get_unaligned_le16(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %55 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %59 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DIV_ROUND_CLOSEST(i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %64 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %29
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %70 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %29
  br label %105

74:                                               ; preds = %67
  %75 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @input_mt_slot(%struct.input_dev* %83, i32 %84)
  %86 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %87 = load i32, i32* @MT_TOOL_FINGER, align 4
  %88 = call i32 @input_mt_report_slot_state(%struct.input_dev* %86, i32 %87, i32 1)
  %89 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %90 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @input_report_abs(%struct.input_dev* %89, i32 %90, i32 %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %94 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @input_report_abs(%struct.input_dev* %93, i32 %94, i32 %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %98 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @input_report_abs(%struct.input_dev* %97, i32 %98, i32 %99)
  %101 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %102 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @input_report_abs(%struct.input_dev* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %74, %73, %28, %20
  ret void
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
