; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data*, %struct.input_dev* }
%struct.elantech_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i32 }
%struct.input_dev = type { i32 }

@PACKET_V3_HEAD = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @elantech_report_absolute_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_report_absolute_v3(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.elantech_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 2
  %17 = load %struct.input_dev*, %struct.input_dev** %16, align 8
  store %struct.input_dev* %17, %struct.input_dev** %5, align 8
  %18 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %19 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 1
  %20 = load %struct.elantech_data*, %struct.elantech_data** %19, align 8
  store %struct.elantech_data* %20, %struct.elantech_data** %6, align 8
  %21 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %22 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 192
  %29 = ashr i32 %28, 6
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %140 [
    i32 3, label %31
    i32 1, label %31
    i32 2, label %58
  ]

31:                                               ; preds = %2, %2
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = shl i32 %36, 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %37, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  %44 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 15
  %51 = shl i32 %50, 8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 5
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %51, %55
  %57 = sub nsw i32 %45, %56
  store i32 %57, i32* %10, align 4
  br label %140

58:                                               ; preds = %2
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @PACKET_V3_HEAD, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 15
  %68 = shl i32 %67, 8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %68, %72
  %74 = trunc i32 %73 to i8
  %75 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  %76 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i8 %74, i8* %79, align 4
  %80 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  %81 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 15
  %88 = shl i32 %87, 8
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 5
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %88, %92
  %94 = sub nsw i32 %82, %93
  %95 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  %96 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %94, i32* %99, align 4
  br label %244

100:                                              ; preds = %58
  %101 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  %102 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 4
  %107 = zext i8 %106 to i32
  store i32 %107, i32* %9, align 4
  %108 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  %109 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %10, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 15
  %119 = shl i32 %118, 8
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %119, %123
  store i32 %124, i32* %11, align 4
  %125 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  %126 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 15
  %133 = shl i32 %132, 8
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 5
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %133, %137
  %139 = sub nsw i32 %127, %138
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %2, %100, %31
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 240
  %146 = load i8*, i8** %7, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 4
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 240
  %151 = ashr i32 %150, 4
  %152 = or i32 %145, %151
  store i32 %152, i32* %14, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 48
  %158 = ashr i32 %157, 2
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, 48
  %164 = ashr i32 %163, 4
  %165 = or i32 %158, %164
  store i32 %165, i32* %13, align 4
  %166 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %167 = load i32, i32* @BTN_TOUCH, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i32
  %171 = trunc i32 %170 to i8
  %172 = call i32 @input_report_key(%struct.input_dev* %166, i32 %167, i8 zeroext %171)
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %140
  %176 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %177 = load i32, i32* @ABS_X, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @input_report_abs(%struct.input_dev* %176, i32 %177, i32 %178)
  %180 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %181 = load i32, i32* @ABS_Y, align 4
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @input_report_abs(%struct.input_dev* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %175, %140
  %185 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @elantech_report_semi_mt_data(%struct.input_dev* %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %193 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp eq i32 %194, 1
  %196 = zext i1 %195 to i32
  %197 = trunc i32 %196 to i8
  %198 = call i32 @input_report_key(%struct.input_dev* %192, i32 %193, i8 zeroext %197)
  %199 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %200 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i32
  %204 = trunc i32 %203 to i8
  %205 = call i32 @input_report_key(%struct.input_dev* %199, i32 %200, i8 zeroext %204)
  %206 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %207 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp eq i32 %208, 3
  %210 = zext i1 %209 to i32
  %211 = trunc i32 %210 to i8
  %212 = call i32 @input_report_key(%struct.input_dev* %206, i32 %207, i8 zeroext %211)
  %213 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  %214 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %213, i32 0, i32 0
  %215 = call i64 @elantech_is_buttonpad(i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %184
  %218 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %219 = load i32, i32* @BTN_LEFT, align 4
  %220 = load i8*, i8** %7, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = and i32 %223, 3
  %225 = trunc i32 %224 to i8
  %226 = call i32 @input_report_key(%struct.input_dev* %218, i32 %219, i8 zeroext %225)
  br label %233

227:                                              ; preds = %184
  %228 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %229 = load i8*, i8** %7, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = call i32 @psmouse_report_standard_buttons(%struct.input_dev* %228, i8 zeroext %231)
  br label %233

233:                                              ; preds = %227, %217
  %234 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %235 = load i32, i32* @ABS_PRESSURE, align 4
  %236 = load i32, i32* %14, align 4
  %237 = call i32 @input_report_abs(%struct.input_dev* %234, i32 %235, i32 %236)
  %238 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %239 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @input_report_abs(%struct.input_dev* %238, i32 %239, i32 %240)
  %242 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %243 = call i32 @input_sync(%struct.input_dev* %242)
  br label %244

244:                                              ; preds = %233, %62
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @elantech_report_semi_mt_data(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @elantech_is_buttonpad(i32*) #1

declare dso_local i32 @psmouse_report_standard_buttons(%struct.input_dev*, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
