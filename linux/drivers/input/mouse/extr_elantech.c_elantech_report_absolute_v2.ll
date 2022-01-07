; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev*, %struct.elantech_data* }
%struct.input_dev = type { i32 }
%struct.elantech_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_QUADTAP = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @elantech_report_absolute_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_report_absolute_v2(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.elantech_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 2
  %15 = load %struct.elantech_data*, %struct.elantech_data** %14, align 8
  store %struct.elantech_data* %15, %struct.elantech_data** %3, align 8
  %16 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 1
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %4, align 8
  %19 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 192
  %27 = ashr i32 %26, 6
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %147 [
    i32 3, label %29
    i32 1, label %38
    i32 2, label %90
  ]

29:                                               ; preds = %1
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 4, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %29
  br label %38

38:                                               ; preds = %1, %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %44, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %51 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = shl i32 %57, 8
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %58, %62
  %64 = sub nsw i32 %52, %63
  store i32 %64, i32* %8, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 240
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 240
  %75 = ashr i32 %74, 4
  %76 = or i32 %69, %75
  store i32 %76, i32* %12, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 48
  %82 = ashr i32 %81, 2
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 48
  %88 = ashr i32 %87, 4
  %89 = or i32 %82, %88
  store i32 %89, i32* %11, align 4
  br label %147

90:                                               ; preds = %1
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 16
  %96 = shl i32 %95, 4
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %96, %100
  %102 = shl i32 %101, 2
  store i32 %102, i32* %7, align 4
  %103 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %104 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 32
  %111 = shl i32 %110, 3
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %111, %115
  %117 = shl i32 %116, 2
  %118 = sub nsw i32 %105, %117
  store i32 %118, i32* %8, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 16
  %124 = shl i32 %123, 4
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %124, %128
  %130 = shl i32 %129, 2
  store i32 %130, i32* %9, align 4
  %131 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %132 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 32
  %139 = shl i32 %138, 3
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 5
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %139, %143
  %145 = shl i32 %144, 2
  %146 = sub nsw i32 %133, %145
  store i32 %146, i32* %10, align 4
  store i32 127, i32* %12, align 4
  store i32 7, i32* %11, align 4
  br label %147

147:                                              ; preds = %1, %90, %38
  %148 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %149 = load i32, i32* @BTN_TOUCH, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @input_report_key(%struct.input_dev* %148, i32 %149, i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %158 = load i32, i32* @ABS_X, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @input_report_abs(%struct.input_dev* %157, i32 %158, i32 %159)
  %161 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %162 = load i32, i32* @ABS_Y, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @input_report_abs(%struct.input_dev* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %147
  %166 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @elantech_report_semi_mt_data(%struct.input_dev* %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %174 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp eq i32 %175, 1
  %177 = zext i1 %176 to i32
  %178 = call i32 @input_report_key(%struct.input_dev* %173, i32 %174, i32 %177)
  %179 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %180 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i32
  %184 = call i32 @input_report_key(%struct.input_dev* %179, i32 %180, i32 %183)
  %185 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %186 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp eq i32 %187, 3
  %189 = zext i1 %188 to i32
  %190 = call i32 @input_report_key(%struct.input_dev* %185, i32 %186, i32 %189)
  %191 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %192 = load i32, i32* @BTN_TOOL_QUADTAP, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp eq i32 %193, 4
  %195 = zext i1 %194 to i32
  %196 = call i32 @input_report_key(%struct.input_dev* %191, i32 %192, i32 %195)
  %197 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = call i32 @psmouse_report_standard_buttons(%struct.input_dev* %197, i8 zeroext %200)
  %202 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %203 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %165
  %208 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %209 = load i32, i32* @ABS_PRESSURE, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @input_report_abs(%struct.input_dev* %208, i32 %209, i32 %210)
  %212 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %213 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @input_report_abs(%struct.input_dev* %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %207, %165
  %217 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %218 = call i32 @input_sync(%struct.input_dev* %217)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @elantech_report_semi_mt_data(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @psmouse_report_standard_buttons(%struct.input_dev*, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
