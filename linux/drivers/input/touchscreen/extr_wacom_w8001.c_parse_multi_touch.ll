; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_parse_multi_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_parse_multi_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001 = type { i8*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i64 0, align 8
@BTN_TOOL_RUBBER = common dso_local global i64 0, align 8
@BTN_TOOL_FINGER = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w8001*)* @parse_multi_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_multi_touch(%struct.w8001* %0) #0 {
  %2 = alloca %struct.w8001*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.w8001* %0, %struct.w8001** %2, align 8
  %10 = load %struct.w8001*, %struct.w8001** %2, align 8
  %11 = getelementptr inbounds %struct.w8001, %struct.w8001* %10, i32 0, i32 2
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %3, align 8
  %13 = load %struct.w8001*, %struct.w8001** %2, align 8
  %14 = getelementptr inbounds %struct.w8001, %struct.w8001* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %86, %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %89

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @input_mt_slot(%struct.input_dev* %27, i32 %28)
  %30 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %31 = load i32, i32* @MT_TOOL_FINGER, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @input_mt_report_slot_state(%struct.input_dev* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %85

36:                                               ; preds = %19
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 6, %38
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 7
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 6, %47
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %45, %53
  store i32 %54, i32* %5, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 6, %56
  %58 = add nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 7
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 6, %65
  %67 = add nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %63, %71
  store i32 %72, i32* %6, align 4
  %73 = load %struct.w8001*, %struct.w8001** %2, align 8
  %74 = call i32 @scale_touch_coordinates(%struct.w8001* %73, i32* %5, i32* %6)
  %75 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %76 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @input_report_abs(%struct.input_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %36, %19
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %16

89:                                               ; preds = %16
  %90 = load %struct.w8001*, %struct.w8001** %2, align 8
  %91 = getelementptr inbounds %struct.w8001, %struct.w8001* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BTN_TOOL_PEN, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load %struct.w8001*, %struct.w8001** %2, align 8
  %97 = getelementptr inbounds %struct.w8001, %struct.w8001* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BTN_TOOL_RUBBER, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i64, i64* @BTN_TOOL_FINGER, align 8
  br label %108

106:                                              ; preds = %101
  %107 = load i64, i64* @KEY_RESERVED, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i64 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.w8001*, %struct.w8001** %2, align 8
  %111 = getelementptr inbounds %struct.w8001, %struct.w8001* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %113 = call i32 @input_mt_report_pointer_emulation(%struct.input_dev* %112, i32 1)
  br label %114

114:                                              ; preds = %108, %95, %89
  %115 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %116 = call i32 @input_sync(%struct.input_dev* %115)
  ret void
}

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @scale_touch_coordinates(%struct.w8001*, i32*, i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_report_pointer_emulation(%struct.input_dev*, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
