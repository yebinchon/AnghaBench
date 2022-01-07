; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_event_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cyapa_pip_report_data = type { i64* }

@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_WAKEUP_EVENT_REPORT_ID = common dso_local global i64 0, align 8
@PIP_WAKEUP_EVENT_SIZE = common dso_local global i32 0, align 4
@PIP_TOUCH_REPORT_ID = common dso_local global i64 0, align 8
@PIP_BTN_REPORT_ID = common dso_local global i64 0, align 8
@GEN5_OLD_PUSH_BTN_REPORT_ID = common dso_local global i64 0, align 8
@PIP_PUSH_BTN_REPORT_ID = common dso_local global i64 0, align 8
@PIP_PROXIMITY_REPORT_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid report_id=0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PIP_TOUCH_REPORT_HEAD_SIZE = common dso_local global i32 0, align 4
@PIP_TOUCH_REPORT_MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid touch packet length=%d\0A\00", align 1
@PIP_BTN_REPORT_HEAD_SIZE = common dso_local global i32 0, align 4
@PIP_BTN_REPORT_MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid button packet length=%d\0A\00", align 1
@PIP_PROXIMITY_REPORT_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid proximity data, length=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, %struct.cyapa_pip_report_data*)* @cyapa_pip_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_pip_event_process(%struct.cyapa* %0, %struct.cyapa_pip_report_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca %struct.cyapa_pip_report_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store %struct.cyapa_pip_report_data* %1, %struct.cyapa_pip_report_data** %5, align 8
  %9 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %10 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %5, align 8
  %14 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = call i32 @get_unaligned_le16(i64* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

23:                                               ; preds = %2
  %24 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %5, align 8
  %25 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @PIP_WAKEUP_EVENT_REPORT_ID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PIP_WAKEUP_EVENT_SIZE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @pm_runtime_get_sync(%struct.device* %38)
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @pm_runtime_mark_last_busy(%struct.device* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %42)
  store i32 0, i32* %3, align 4
  br label %146

44:                                               ; preds = %33, %23
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @PIP_TOUCH_REPORT_ID, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @PIP_BTN_REPORT_ID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @GEN5_OLD_PUSH_BTN_REPORT_ID, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @PIP_PUSH_BTN_REPORT_ID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @PIP_PROXIMITY_REPORT_ID, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %146

71:                                               ; preds = %60, %56, %52, %48, %44
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @PIP_TOUCH_REPORT_ID, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @PIP_TOUCH_REPORT_HEAD_SIZE, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PIP_TOUCH_REPORT_MAX_SIZE, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80, %76
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  store i32 0, i32* %3, align 4
  br label %146

88:                                               ; preds = %80, %72
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @PIP_BTN_REPORT_ID, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @GEN5_OLD_PUSH_BTN_REPORT_ID, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @PIP_PUSH_BTN_REPORT_ID, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96, %92, %88
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @PIP_BTN_REPORT_HEAD_SIZE, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @PIP_BTN_REPORT_MAX_SIZE, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104, %100
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  store i32 0, i32* %3, align 4
  br label %146

112:                                              ; preds = %104, %96
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* @PIP_PROXIMITY_REPORT_ID, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @PIP_PROXIMITY_REPORT_SIZE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  store i32 0, i32* %3, align 4
  br label %146

124:                                              ; preds = %116, %112
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @PIP_TOUCH_REPORT_ID, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %130 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %5, align 8
  %131 = call i32 @cyapa_pip_report_touches(%struct.cyapa* %129, %struct.cyapa_pip_report_data* %130)
  br label %145

132:                                              ; preds = %124
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @PIP_PROXIMITY_REPORT_ID, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %138 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %5, align 8
  %139 = call i32 @cyapa_pip_report_proximity(%struct.cyapa* %137, %struct.cyapa_pip_report_data* %138)
  br label %144

140:                                              ; preds = %132
  %141 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %142 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %5, align 8
  %143 = call i32 @cyapa_pip_report_buttons(%struct.cyapa* %141, %struct.cyapa_pip_report_data* %142)
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %128
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %120, %108, %84, %64, %37, %22
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @get_unaligned_le16(i64*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @cyapa_pip_report_touches(%struct.cyapa*, %struct.cyapa_pip_report_data*) #1

declare dso_local i32 @cyapa_pip_report_proximity(%struct.cyapa*, %struct.cyapa_pip_report_data*) #1

declare dso_local i32 @cyapa_pip_report_buttons(%struct.cyapa*, %struct.cyapa_pip_report_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
