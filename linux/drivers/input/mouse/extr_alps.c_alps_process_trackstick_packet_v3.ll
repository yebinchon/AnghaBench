; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_trackstick_packet_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_trackstick_packet_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.alps_data* }
%struct.alps_data = type { i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Rejected trackstick packet from non DualPoint device\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Bad trackstick packet, discarding\0A\00", align 1
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ALPS_QUIRK_TRACKSTICK_BUTTONS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_trackstick_packet_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_trackstick_packet_v3(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 1
  %14 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  store %struct.alps_data* %14, %struct.alps_data** %3, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  %18 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %19 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %18, i32 0, i32 2
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %5, align 8
  %21 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %22 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ALPS_DUALPOINT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %29 = call i32 @psmouse_warn(%struct.psmouse* %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %165

30:                                               ; preds = %1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 64
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %39 = call i32 @psmouse_dbg(%struct.psmouse* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %165

40:                                               ; preds = %30
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 127
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 127
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 127
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %165

59:                                               ; preds = %52, %46, %40
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 32
  %65 = shl i32 %64, 2
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 127
  %71 = or i32 %65, %70
  store i32 %71, i32* %6, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 16
  %77 = shl i32 %76, 3
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 127
  %83 = or i32 %77, %82
  store i32 %83, i32* %7, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 127
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sdiv i32 %89, 8
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sdiv i32 %91, 8
  store i32 %92, i32* %7, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %94 = load i32, i32* @REL_X, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @input_report_rel(%struct.input_dev* %93, i32 %94, i32 %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %98 = load i32, i32* @REL_Y, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 0, %99
  %101 = call i32 @input_report_rel(%struct.input_dev* %97, i32 %98, i32 %100)
  %102 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %103 = load i32, i32* @ABS_PRESSURE, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @input_report_abs(%struct.input_dev* %102, i32 %103, i32 %104)
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 3
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 2
  store i32 %115, i32* %10, align 4
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 4
  store i32 %120, i32* %11, align 4
  %121 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %122 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ALPS_QUIRK_TRACKSTICK_BUTTONS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %59
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133, %130, %127
  %137 = load i32, i32* @ALPS_QUIRK_TRACKSTICK_BUTTONS, align 4
  %138 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %139 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %133, %59
  %143 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %144 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ALPS_QUIRK_TRACKSTICK_BUTTONS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %151 = load i32, i32* @BTN_LEFT, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @input_report_key(%struct.input_dev* %150, i32 %151, i32 %152)
  %154 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %155 = load i32, i32* @BTN_RIGHT, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @input_report_key(%struct.input_dev* %154, i32 %155, i32 %156)
  %158 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %159 = load i32, i32* @BTN_MIDDLE, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @input_report_key(%struct.input_dev* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %149, %142
  %163 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %164 = call i32 @input_sync(%struct.input_dev* %163)
  br label %165

165:                                              ; preds = %162, %58, %37, %27
  ret void
}

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
