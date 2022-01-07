; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_process_packet_head_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_process_packet_head_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data*, %struct.input_dev* }
%struct.elantech_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i32 }
%struct.input_dev = type { i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @process_packet_head_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_packet_head_v4(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 2
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 1
  %14 = load %struct.elantech_data*, %struct.elantech_data** %13, align 8
  store %struct.elantech_data* %14, %struct.elantech_data** %4, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 224
  %23 = ashr i32 %22, 5
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %135

28:                                               ; preds = %1
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 15
  %34 = shl i32 %33, 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %34, %38
  %40 = trunc i32 %39 to i8
  %41 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %42 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8 %40, i8* %47, align 4
  %48 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %49 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 15
  %56 = shl i32 %55, 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 5
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %56, %60
  %62 = sub nsw i32 %50, %61
  %63 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %64 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 240
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 240
  %80 = ashr i32 %79, 4
  %81 = or i32 %74, %80
  store i32 %81, i32* %7, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 240
  %87 = ashr i32 %86, 4
  store i32 %87, i32* %8, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @input_mt_slot(%struct.input_dev* %88, i32 %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %92 = load i32, i32* @MT_TOOL_FINGER, align 4
  %93 = call i32 @input_mt_report_slot_state(%struct.input_dev* %91, i32 %92, i32 1)
  %94 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %95 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %96 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %97 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 4
  %104 = zext i8 %103 to i32
  %105 = call i32 @input_report_abs(%struct.input_dev* %94, i32 %95, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %107 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %108 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %109 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @input_report_abs(%struct.input_dev* %106, i32 %107, i32 %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %118 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @input_report_abs(%struct.input_dev* %117, i32 %118, i32 %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %122 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %125 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = call i32 @input_report_abs(%struct.input_dev* %121, i32 %122, i32 %127)
  %129 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %130 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @input_report_abs(%struct.input_dev* %129, i32 %130, i32 %131)
  %133 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %134 = call i32 @elantech_input_sync_v4(%struct.psmouse* %133)
  br label %135

135:                                              ; preds = %28, %27
  ret void
}

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @elantech_input_sync_v4(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
