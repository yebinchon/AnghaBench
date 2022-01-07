; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_touchpad_packet_v7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_touchpad_packet_v7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.input_dev*, %struct.alps_data* }
%struct.input_dev = type { i32 }
%struct.alps_data = type { i64 (%struct.alps_fields*, i32, %struct.psmouse*)*, %struct.alps_fields }
%struct.alps_fields = type { i32, i32, i32, i32, i32 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_touchpad_packet_v7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_touchpad_packet_v7(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.alps_fields*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 2
  %8 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  store %struct.alps_data* %8, %struct.alps_data** %3, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %4, align 8
  %12 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %13 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %12, i32 0, i32 1
  store %struct.alps_fields* %13, %struct.alps_fields** %5, align 8
  %14 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %15 = call i32 @memset(%struct.alps_fields* %14, i32 0, i32 20)
  %16 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %17 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %16, i32 0, i32 0
  %18 = load i64 (%struct.alps_fields*, i32, %struct.psmouse*)*, i64 (%struct.alps_fields*, i32, %struct.psmouse*)** %17, align 8
  %19 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %20 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %21 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %24 = call i64 %18(%struct.alps_fields* %19, i32 %22, %struct.psmouse* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %59

27:                                               ; preds = %1
  %28 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %29 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %30 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @alps_get_mt_count(i32 %31)
  %33 = call i32 @alps_report_mt_data(%struct.psmouse* %28, i32 %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %36 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @input_mt_report_finger_count(%struct.input_dev* %34, i32 %37)
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = load i32, i32* @BTN_LEFT, align 4
  %41 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %42 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @input_report_key(%struct.input_dev* %39, i32 %40, i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %46 = load i32, i32* @BTN_RIGHT, align 4
  %47 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %48 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @input_report_key(%struct.input_dev* %45, i32 %46, i32 %49)
  %51 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %52 = load i32, i32* @BTN_MIDDLE, align 4
  %53 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %54 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @input_report_key(%struct.input_dev* %51, i32 %52, i32 %55)
  %57 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %58 = call i32 @input_sync(%struct.input_dev* %57)
  br label %59

59:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @memset(%struct.alps_fields*, i32, i32) #1

declare dso_local i32 @alps_report_mt_data(%struct.psmouse*, i32) #1

declare dso_local i32 @alps_get_mt_count(i32) #1

declare dso_local i32 @input_mt_report_finger_count(%struct.input_dev*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
