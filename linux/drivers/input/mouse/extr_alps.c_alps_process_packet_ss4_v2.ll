; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_packet_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_packet_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev*, %struct.alps_data* }
%struct.input_dev = type { i32 }
%struct.alps_data = type { i32, i8*, i32, i32 (%struct.alps_fields*, i8*, %struct.psmouse*)*, %struct.alps_fields, %struct.input_dev* }
%struct.alps_fields = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@SS4_PACKET_ID_STICK = common dso_local global i64 0, align 8
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Rejected trackstick packet from non DualPoint device\00", align 1
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_packet_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_packet_ss4_v2(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.alps_fields*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2
  %10 = load %struct.alps_data*, %struct.alps_data** %9, align 8
  store %struct.alps_data* %10, %struct.alps_data** %3, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 1
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %5, align 8
  %17 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %18 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %17, i32 0, i32 5
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %6, align 8
  %20 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %21 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %20, i32 0, i32 4
  store %struct.alps_fields* %21, %struct.alps_fields** %7, align 8
  %22 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %23 = call i32 @memset(%struct.alps_fields* %22, i32 0, i32 48)
  %24 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %25 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %24, i32 0, i32 3
  %26 = load i32 (%struct.alps_fields*, i8*, %struct.psmouse*)*, i32 (%struct.alps_fields*, i8*, %struct.psmouse*)** %25, align 8
  %27 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %30 = call i32 %26(%struct.alps_fields* %27, i8* %28, %struct.psmouse* %29)
  %31 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %32 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %1
  %36 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %37 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %42 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %41, i32 0, i32 3
  %43 = load i32 (%struct.alps_fields*, i8*, %struct.psmouse*)*, i32 (%struct.alps_fields*, i8*, %struct.psmouse*)** %42, align 8
  %44 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %45 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %46 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %49 = call i32 %43(%struct.alps_fields* %44, i8* %47, %struct.psmouse* %48)
  br label %53

50:                                               ; preds = %35
  %51 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %52 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %40
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %56 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %176

60:                                               ; preds = %54
  %61 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %62 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %67 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %72 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %74 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @memcpy(i8* %75, i8* %76, i32 8)
  br label %176

78:                                               ; preds = %65, %60
  %79 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %80 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @alps_get_pkt_id_ss4_v2(i8* %81)
  %83 = load i64, i64* @SS4_PACKET_ID_STICK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %78
  %86 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %87 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ALPS_DUALPOINT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %94 = call i32 @psmouse_warn(%struct.psmouse* %93, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %176

95:                                               ; preds = %85
  %96 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %97 = load i32, i32* @REL_X, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @SS4_TS_X_V2(i8* %98)
  %100 = call i32 @input_report_rel(%struct.input_dev* %96, i32 %97, i32 %99)
  %101 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %102 = load i32, i32* @REL_Y, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @SS4_TS_Y_V2(i8* %103)
  %105 = call i32 @input_report_rel(%struct.input_dev* %101, i32 %102, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %107 = load i32, i32* @ABS_PRESSURE, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @SS4_TS_Z_V2(i8* %108)
  %110 = call i32 @input_report_abs(%struct.input_dev* %106, i32 %107, i32 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %112 = load i32, i32* @BTN_LEFT, align 4
  %113 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %114 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @input_report_key(%struct.input_dev* %111, i32 %112, i32 %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %118 = load i32, i32* @BTN_RIGHT, align 4
  %119 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %120 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @input_report_key(%struct.input_dev* %117, i32 %118, i32 %121)
  %123 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %124 = load i32, i32* @BTN_MIDDLE, align 4
  %125 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %126 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @input_report_key(%struct.input_dev* %123, i32 %124, i32 %127)
  %129 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %130 = call i32 @input_sync(%struct.input_dev* %129)
  br label %176

131:                                              ; preds = %78
  %132 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %133 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %134 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sle i32 %135, 4
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %139 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  br label %142

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %137
  %143 = phi i32 [ %140, %137 ], [ 4, %141 ]
  %144 = call i32 @alps_report_mt_data(%struct.psmouse* %132, i32 %143)
  %145 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %146 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %147 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @input_mt_report_finger_count(%struct.input_dev* %145, i32 %148)
  %150 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %151 = load i32, i32* @BTN_LEFT, align 4
  %152 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %153 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @input_report_key(%struct.input_dev* %150, i32 %151, i32 %154)
  %156 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %157 = load i32, i32* @BTN_RIGHT, align 4
  %158 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %159 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @input_report_key(%struct.input_dev* %156, i32 %157, i32 %160)
  %162 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %163 = load i32, i32* @BTN_MIDDLE, align 4
  %164 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %165 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @input_report_key(%struct.input_dev* %162, i32 %163, i32 %166)
  %168 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %169 = load i32, i32* @ABS_PRESSURE, align 4
  %170 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %171 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @input_report_abs(%struct.input_dev* %168, i32 %169, i32 %172)
  %174 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %175 = call i32 @input_sync(%struct.input_dev* %174)
  br label %176

176:                                              ; preds = %142, %95, %92, %70, %59
  ret void
}

declare dso_local i32 @memset(%struct.alps_fields*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @alps_get_pkt_id_ss4_v2(i8*) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @SS4_TS_X_V2(i8*) #1

declare dso_local i32 @SS4_TS_Y_V2(i8*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @SS4_TS_Z_V2(i8*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @alps_report_mt_data(%struct.psmouse*, i32) #1

declare dso_local i32 @input_mt_report_finger_count(%struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
