; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_report_pointer_emulation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_report_pointer_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, %struct.input_mt* }
%struct.input_mt = type { i32, i32, %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32 }

@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@TRKID_SGN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_MT_DISTANCE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_mt_report_pointer_emulation(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_mt*, align 8
  %6 = alloca %struct.input_mt_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.input_mt_slot*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 1
  %17 = load %struct.input_mt*, %struct.input_mt** %16, align 8
  store %struct.input_mt* %17, %struct.input_mt** %5, align 8
  %18 = load %struct.input_mt*, %struct.input_mt** %5, align 8
  %19 = icmp ne %struct.input_mt* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %146

21:                                               ; preds = %2
  store %struct.input_mt_slot* null, %struct.input_mt_slot** %6, align 8
  %22 = load %struct.input_mt*, %struct.input_mt** %5, align 8
  %23 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %57, %21
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.input_mt*, %struct.input_mt** %5, align 8
  %28 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %25
  %32 = load %struct.input_mt*, %struct.input_mt** %5, align 8
  %33 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %32, i32 0, i32 2
  %34 = load %struct.input_mt_slot*, %struct.input_mt_slot** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %34, i64 %36
  store %struct.input_mt_slot* %37, %struct.input_mt_slot** %10, align 8
  %38 = load %struct.input_mt_slot*, %struct.input_mt_slot** %10, align 8
  %39 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %40 = call i32 @input_mt_get_value(%struct.input_mt_slot* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %57

44:                                               ; preds = %31
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i32, i32* @TRKID_SGN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.input_mt_slot*, %struct.input_mt_slot** %10, align 8
  store %struct.input_mt_slot* %52, %struct.input_mt_slot** %6, align 8
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %43
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %25

60:                                               ; preds = %25
  %61 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %62 = load i32, i32* @EV_KEY, align 4
  %63 = load i32, i32* @BTN_TOUCH, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @input_event(%struct.input_dev* %61, i32 %62, i32 %63, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = load i32, i32* @ABS_MT_DISTANCE, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @test_bit(i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @ABS_DISTANCE, align 4
  %82 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @test_bit(i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %89 = load i32, i32* @ABS_DISTANCE, align 4
  %90 = call i64 @input_abs_get_val(%struct.input_dev* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %87, %80, %73, %70
  %94 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @input_mt_report_finger_count(%struct.input_dev* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %60
  %98 = load %struct.input_mt_slot*, %struct.input_mt_slot** %6, align 8
  %99 = icmp ne %struct.input_mt_slot* %98, null
  br i1 %99, label %100, label %133

100:                                              ; preds = %97
  %101 = load %struct.input_mt_slot*, %struct.input_mt_slot** %6, align 8
  %102 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %103 = call i32 @input_mt_get_value(%struct.input_mt_slot* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load %struct.input_mt_slot*, %struct.input_mt_slot** %6, align 8
  %105 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %106 = call i32 @input_mt_get_value(%struct.input_mt_slot* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %108 = load i32, i32* @EV_ABS, align 4
  %109 = load i32, i32* @ABS_X, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @input_event(%struct.input_dev* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %113 = load i32, i32* @EV_ABS, align 4
  %114 = load i32, i32* @ABS_Y, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @input_event(%struct.input_dev* %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %118 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @test_bit(i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %100
  %124 = load %struct.input_mt_slot*, %struct.input_mt_slot** %6, align 8
  %125 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %126 = call i32 @input_mt_get_value(%struct.input_mt_slot* %124, i32 %125)
  store i32 %126, i32* %14, align 4
  %127 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %128 = load i32, i32* @EV_ABS, align 4
  %129 = load i32, i32* @ABS_PRESSURE, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @input_event(%struct.input_dev* %127, i32 %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %123, %100
  br label %146

133:                                              ; preds = %97
  %134 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %136 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @test_bit(i32 %134, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %142 = load i32, i32* @EV_ABS, align 4
  %143 = load i32, i32* @ABS_PRESSURE, align 4
  %144 = call i32 @input_event(%struct.input_dev* %141, i32 %142, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %140, %133
  br label %146

146:                                              ; preds = %20, %145, %132
  ret void
}

declare dso_local i32 @input_mt_get_value(%struct.input_mt_slot*, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @input_abs_get_val(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_finger_count(%struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
