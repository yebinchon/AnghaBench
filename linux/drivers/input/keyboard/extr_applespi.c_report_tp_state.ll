; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_report_tp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_report_tp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { %struct.TYPE_3__*, i32*, i64, i32, %struct.applespi_tp_info }
%struct.TYPE_3__ = type { i64, i64 }
%struct.applespi_tp_info = type { i64, i64 }
%struct.touchpad_protocol = type { i32, i32, %struct.tp_finger* }
%struct.tp_finger = type { i32, i32, i32 }
%struct.input_dev = type { i32 }

@BTN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*, %struct.touchpad_protocol*)* @report_tp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_tp_state(%struct.applespi_data* %0, %struct.touchpad_protocol* %1) #0 {
  %3 = alloca %struct.applespi_data*, align 8
  %4 = alloca %struct.touchpad_protocol*, align 8
  %5 = alloca %struct.tp_finger*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.applespi_tp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.applespi_data* %0, %struct.applespi_data** %3, align 8
  store %struct.touchpad_protocol* %1, %struct.touchpad_protocol** %4, align 8
  %10 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %11 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %10, i32 0, i32 4
  store %struct.applespi_tp_info* %11, %struct.applespi_tp_info** %7, align 8
  %12 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %13 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %12, i32 0, i32 3
  %14 = call %struct.input_dev* @smp_load_acquire(i32* %13)
  store %struct.input_dev* %14, %struct.input_dev** %6, align 8
  %15 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %16 = icmp ne %struct.input_dev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %133

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %80, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %4, align 8
  %22 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %19
  %26 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %4, align 8
  %27 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %26, i32 0, i32 2
  %28 = load %struct.tp_finger*, %struct.tp_finger** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %28, i64 %30
  store %struct.tp_finger* %31, %struct.tp_finger** %5, align 8
  %32 = load %struct.tp_finger*, %struct.tp_finger** %5, align 8
  %33 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_int(i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %80

38:                                               ; preds = %25
  %39 = load %struct.tp_finger*, %struct.tp_finger** %5, align 8
  %40 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le16_to_int(i32 %41)
  %43 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %44 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i64 %42, i64* %49, align 8
  %50 = load %struct.applespi_tp_info*, %struct.applespi_tp_info** %7, align 8
  %51 = getelementptr inbounds %struct.applespi_tp_info, %struct.applespi_tp_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.applespi_tp_info*, %struct.applespi_tp_info** %7, align 8
  %54 = getelementptr inbounds %struct.applespi_tp_info, %struct.applespi_tp_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.tp_finger*, %struct.tp_finger** %5, align 8
  %58 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le16_to_int(i32 %59)
  %61 = sub nsw i64 %56, %60
  %62 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %63 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i64 %61, i64* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %72 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %38
  %76 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %77 = load %struct.tp_finger*, %struct.tp_finger** %5, align 8
  %78 = call i32 @applespi_debug_update_dimensions(%struct.applespi_data* %76, %struct.tp_finger* %77)
  br label %79

79:                                               ; preds = %75, %38
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %19

83:                                               ; preds = %19
  %84 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %85 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %86 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %89 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @input_mt_assign_slots(%struct.input_dev* %84, i32* %87, %struct.TYPE_3__* %90, i32 %91, i32 0)
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %119, %83
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %93
  %98 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %99 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %100 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %107 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %4, align 8
  %113 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %112, i32 0, i32 2
  %114 = load %struct.tp_finger*, %struct.tp_finger** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %114, i64 %116
  %118 = call i32 @report_finger_data(%struct.input_dev* %98, i32 %105, %struct.TYPE_3__* %111, %struct.tp_finger* %117)
  br label %119

119:                                              ; preds = %97
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %93

122:                                              ; preds = %93
  %123 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %124 = call i32 @input_mt_sync_frame(%struct.input_dev* %123)
  %125 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %126 = load i32, i32* @BTN_LEFT, align 4
  %127 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %4, align 8
  %128 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @input_report_key(%struct.input_dev* %125, i32 %126, i32 %129)
  %131 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %132 = call i32 @input_sync(%struct.input_dev* %131)
  br label %133

133:                                              ; preds = %122, %17
  ret void
}

declare dso_local %struct.input_dev* @smp_load_acquire(i32*) #1

declare dso_local i64 @le16_to_int(i32) #1

declare dso_local i32 @applespi_debug_update_dimensions(%struct.applespi_data*, %struct.tp_finger*) #1

declare dso_local i32 @input_mt_assign_slots(%struct.input_dev*, i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @report_finger_data(%struct.input_dev*, i32, %struct.TYPE_3__*, %struct.tp_finger*) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
