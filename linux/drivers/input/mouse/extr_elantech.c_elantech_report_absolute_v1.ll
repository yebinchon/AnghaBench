; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data*, %struct.input_dev* }
%struct.elantech_data = type { i32, i8, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i64 }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"discarding packet\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@ETP_CAP_HAS_ROCKER = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @elantech_report_absolute_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_report_absolute_v1(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 2
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 1
  %12 = load %struct.elantech_data*, %struct.elantech_data** %11, align 8
  store %struct.elantech_data* %12, %struct.elantech_data** %4, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %17 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 131072
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  %27 = ashr i32 %26, 7
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 48
  %33 = ashr i32 %32, 4
  %34 = add nsw i32 %27, %33
  store i32 %34, i32* %6, align 4
  br label %42

35:                                               ; preds = %1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 192
  %41 = ashr i32 %40, 6
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %35, %21
  %43 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %44 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %53 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %66

54:                                               ; preds = %48
  %55 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %56 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %61 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = call i32 @elantech_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %177

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %69 = load i32, i32* @BTN_TOUCH, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = trunc i32 %72 to i8
  %74 = call i32 @input_report_key(%struct.input_dev* %68, i32 %69, i8 zeroext %73)
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %113

77:                                               ; preds = %67
  %78 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %79 = load i32, i32* @ABS_X, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 12
  %85 = shl i32 %84, 6
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %85, %89
  %91 = trunc i32 %90 to i8
  %92 = call i32 @input_report_abs(%struct.input_dev* %78, i32 %79, i8 zeroext %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %94 = load i32, i32* @ABS_Y, align 4
  %95 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %96 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %95, i32 0, i32 1
  %97 = load i8, i8* %96, align 4
  %98 = zext i8 %97 to i32
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 3
  %104 = shl i32 %103, 8
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %104, %108
  %110 = sub nsw i32 %98, %109
  %111 = trunc i32 %110 to i8
  %112 = call i32 @input_report_abs(%struct.input_dev* %93, i32 %94, i8 zeroext %111)
  br label %113

113:                                              ; preds = %77, %67
  %114 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %115 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 1
  %118 = zext i1 %117 to i32
  %119 = trunc i32 %118 to i8
  %120 = call i32 @input_report_key(%struct.input_dev* %114, i32 %115, i8 zeroext %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %122 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 2
  %125 = zext i1 %124 to i32
  %126 = trunc i32 %125 to i8
  %127 = call i32 @input_report_key(%struct.input_dev* %121, i32 %122, i8 zeroext %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %129 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %130, 3
  %132 = zext i1 %131 to i32
  %133 = trunc i32 %132 to i8
  %134 = call i32 @input_report_key(%struct.input_dev* %128, i32 %129, i8 zeroext %133)
  %135 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @psmouse_report_standard_buttons(%struct.input_dev* %135, i8 zeroext %138)
  %140 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %141 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %143, 131072
  br i1 %144, label %145, label %174

145:                                              ; preds = %113
  %146 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %147 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ETP_CAP_HAS_ROCKER, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %145
  %156 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %157 = load i32, i32* @BTN_FORWARD, align 4
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 64
  %163 = trunc i32 %162 to i8
  %164 = call i32 @input_report_key(%struct.input_dev* %156, i32 %157, i8 zeroext %163)
  %165 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %166 = load i32, i32* @BTN_BACK, align 4
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 128
  %172 = trunc i32 %171 to i8
  %173 = call i32 @input_report_key(%struct.input_dev* %165, i32 %166, i8 zeroext %172)
  br label %174

174:                                              ; preds = %155, %145, %113
  %175 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %176 = call i32 @input_sync(%struct.input_dev* %175)
  br label %177

177:                                              ; preds = %174, %59
  ret void
}

declare dso_local i32 @elantech_debug(i8*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @psmouse_report_standard_buttons(%struct.input_dev*, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
