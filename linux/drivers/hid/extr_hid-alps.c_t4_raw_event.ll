; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_t4_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_t4_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_dev = type { i32, i32, i32, i32 }
%struct.t4_input_report = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alps_dev*, i32*, i32)* @t4_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_raw_event(%struct.alps_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alps_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.t4_input_report*, align 8
  store %struct.alps_dev* %0, %struct.alps_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.t4_input_report*
  store %struct.t4_input_report* %14, %struct.t4_input_report** %12, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %153

18:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %133, %18
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %22 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %136

25:                                               ; preds = %19
  %26 = load %struct.t4_input_report*, %struct.t4_input_report** %12, align 8
  %27 = getelementptr inbounds %struct.t4_input_report, %struct.t4_input_report* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = load %struct.t4_input_report*, %struct.t4_input_report** %12, align 8
  %36 = getelementptr inbounds %struct.t4_input_report, %struct.t4_input_report* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %34, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.t4_input_report*, %struct.t4_input_report** %12, align 8
  %45 = getelementptr inbounds %struct.t4_input_report, %struct.t4_input_report* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load %struct.t4_input_report*, %struct.t4_input_report** %12, align 8
  %54 = getelementptr inbounds %struct.t4_input_report, %struct.t4_input_report* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %52, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %63 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub i32 %64, %65
  %67 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %68 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %66, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.t4_input_report*, %struct.t4_input_report** %12, align 8
  %72 = getelementptr inbounds %struct.t4_input_report, %struct.t4_input_report* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 128
  br i1 %79, label %80, label %90

80:                                               ; preds = %25
  %81 = load %struct.t4_input_report*, %struct.t4_input_report** %12, align 8
  %82 = getelementptr inbounds %struct.t4_input_report, %struct.t4_input_report* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br label %90

90:                                               ; preds = %80, %25
  %91 = phi i1 [ false, %25 ], [ %89, %80 ]
  %92 = zext i1 %91 to i32
  %93 = mul nsw i32 %92, 62
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 65535
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %99 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @input_mt_slot(i32 %100, i32 %101)
  %103 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %104 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MT_TOOL_FINGER, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @input_mt_report_slot_state(i32 %105, i32 %106, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %97
  br label %133

114:                                              ; preds = %97
  %115 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %116 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @input_report_abs(i32 %117, i32 %118, i32 %119)
  %121 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %122 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @input_report_abs(i32 %123, i32 %124, i32 %125)
  %127 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %128 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @input_report_abs(i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %114, %113
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %19

136:                                              ; preds = %19
  %137 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %138 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @input_mt_sync_frame(i32 %139)
  %141 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %142 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @BTN_LEFT, align 4
  %145 = load %struct.t4_input_report*, %struct.t4_input_report** %12, align 8
  %146 = getelementptr inbounds %struct.t4_input_report, %struct.t4_input_report* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @input_report_key(i32 %143, i32 %144, i32 %147)
  %149 = load %struct.alps_dev*, %struct.alps_dev** %5, align 8
  %150 = getelementptr inbounds %struct.alps_dev, %struct.alps_dev* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @input_sync(i32 %151)
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %136, %17
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
