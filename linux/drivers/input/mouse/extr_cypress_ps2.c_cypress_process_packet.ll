; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.cytp_data*, %struct.input_dev* }
%struct.cytp_data = type { i32 }
%struct.input_dev = type { i32 }
%struct.cytp_report_data = type { i32, i32, i32, i32, %struct.cytp_contact* }
%struct.cytp_contact = type { i32, i32, i32 }
%struct.input_mt_pos = type { i32, i32 }

@CYTP_MAX_MT_SLOTS = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @cypress_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_process_packet(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.cytp_data*, align 8
  %8 = alloca %struct.cytp_report_data, align 8
  %9 = alloca %struct.cytp_contact*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 1
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %6, align 8
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 0
  %19 = load %struct.cytp_data*, %struct.cytp_data** %18, align 8
  store %struct.cytp_data* %19, %struct.cytp_data** %7, align 8
  %20 = load i32, i32* @CYTP_MAX_MT_SLOTS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca %struct.input_mt_pos, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @CYTP_MAX_MT_SLOTS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = load %struct.cytp_data*, %struct.cytp_data** %7, align 8
  %29 = call i32 @cypress_parse_packet(%struct.psmouse* %27, %struct.cytp_data* %28, %struct.cytp_report_data* %8)
  %30 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @CYTP_MAX_MT_SLOTS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @CYTP_MAX_MT_SLOTS, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %35, %2
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %8, i32 0, i32 4
  %44 = load %struct.cytp_contact*, %struct.cytp_contact** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %44, i64 %46
  store %struct.cytp_contact* %47, %struct.cytp_contact** %9, align 8
  %48 = load %struct.cytp_contact*, %struct.cytp_contact** %9, align 8
  %49 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 %52
  %54 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.cytp_contact*, %struct.cytp_contact** %9, align 8
  %56 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 %59
  %61 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  br label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @input_mt_assign_slots(%struct.input_dev* %66, i32* %26, %struct.input_mt_pos* %23, i32 %67, i32 0)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %106, %65
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %8, i32 0, i32 4
  %75 = load %struct.cytp_contact*, %struct.cytp_contact** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %75, i64 %77
  store %struct.cytp_contact* %78, %struct.cytp_contact** %9, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %26, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @input_mt_slot(%struct.input_dev* %79, i32 %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %86 = load i32, i32* @MT_TOOL_FINGER, align 4
  %87 = call i32 @input_mt_report_slot_state(%struct.input_dev* %85, i32 %86, i32 1)
  %88 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %89 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %90 = load %struct.cytp_contact*, %struct.cytp_contact** %9, align 8
  %91 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @input_report_abs(%struct.input_dev* %88, i32 %89, i32 %92)
  %94 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %95 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %96 = load %struct.cytp_contact*, %struct.cytp_contact** %9, align 8
  %97 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @input_report_abs(%struct.input_dev* %94, i32 %95, i32 %98)
  %100 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %101 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %102 = load %struct.cytp_contact*, %struct.cytp_contact** %9, align 8
  %103 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @input_report_abs(%struct.input_dev* %100, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %73
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %69

109:                                              ; preds = %69
  %110 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %111 = call i32 @input_mt_sync_frame(%struct.input_dev* %110)
  %112 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %113 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %8, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @input_mt_report_finger_count(%struct.input_dev* %112, i32 %114)
  %116 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %117 = load i32, i32* @BTN_LEFT, align 4
  %118 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %8, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @input_report_key(%struct.input_dev* %116, i32 %117, i32 %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %122 = load i32, i32* @BTN_RIGHT, align 4
  %123 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %8, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @input_report_key(%struct.input_dev* %121, i32 %122, i32 %124)
  %126 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %127 = load i32, i32* @BTN_MIDDLE, align 4
  %128 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %8, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @input_report_key(%struct.input_dev* %126, i32 %127, i32 %129)
  %131 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %132 = call i32 @input_sync(%struct.input_dev* %131)
  %133 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %133)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cypress_parse_packet(%struct.psmouse*, %struct.cytp_data*, %struct.cytp_report_data*) #2

declare dso_local i32 @input_mt_assign_slots(%struct.input_dev*, i32*, %struct.input_mt_pos*, i32, i32) #2

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #2

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #2

declare dso_local i32 @input_mt_report_finger_count(%struct.input_dev*, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
