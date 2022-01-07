; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_m560_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_m560_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hidpp_device = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"error in parameter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"error in report\0A\00", align 1
@REPORT_ID_HIDPP_LONG = common dso_local global i32 0, align 4
@M560_SUB_ID = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@M560_MOUSE_BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@M560_MOUSE_BTN_RIGHT = common dso_local global i32 0, align 4
@M560_MOUSE_BTN_WHEEL_LEFT = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL_HI_RES = common dso_local global i32 0, align 4
@M560_MOUSE_BTN_WHEEL_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32*, i32)* @m560_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m560_raw_event(%struct.hid_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hidpp_device*, align 8
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %11 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %10)
  store %struct.hidpp_device* %11, %struct.hidpp_device** %8, align 8
  %12 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %13 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %18 = call i32 @hid_err(%struct.hid_device* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %204

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %26 = call i32 @hid_err(%struct.hid_device* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %204

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @REPORT_ID_HIDPP_LONG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @M560_SUB_ID, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %82 [
    i32 175, label %48
    i32 176, label %54
    i32 174, label %60
    i32 0, label %66
  ]

48:                                               ; preds = %44
  %49 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %50 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BTN_MIDDLE, align 4
  %53 = call i32 @input_report_key(i32 %51, i32 %52, i32 1)
  br label %85

54:                                               ; preds = %44
  %55 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %56 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BTN_FORWARD, align 4
  %59 = call i32 @input_report_key(i32 %57, i32 %58, i32 1)
  br label %85

60:                                               ; preds = %44
  %61 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %62 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BTN_BACK, align 4
  %65 = call i32 @input_report_key(i32 %63, i32 %64, i32 1)
  br label %85

66:                                               ; preds = %44
  %67 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %68 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BTN_BACK, align 4
  %71 = call i32 @input_report_key(i32 %69, i32 %70, i32 0)
  %72 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %73 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BTN_FORWARD, align 4
  %76 = call i32 @input_report_key(i32 %74, i32 %75, i32 0)
  %77 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %78 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BTN_MIDDLE, align 4
  %81 = call i32 @input_report_key(i32 %79, i32 %80, i32 0)
  br label %85

82:                                               ; preds = %44
  %83 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %84 = call i32 @hid_err(%struct.hid_device* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %204

85:                                               ; preds = %66, %60, %54, %48
  %86 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %87 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @input_sync(i32 %88)
  br label %203

90:                                               ; preds = %39, %33, %27
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %202

95:                                               ; preds = %90
  %96 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %97 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BTN_LEFT, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @M560_MOUSE_BTN_LEFT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @input_report_key(i32 %98, i32 %99, i32 %108)
  %110 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %111 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BTN_RIGHT, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @M560_MOUSE_BTN_RIGHT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @input_report_key(i32 %112, i32 %113, i32 %122)
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @M560_MOUSE_BTN_WHEEL_LEFT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %95
  %131 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %132 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @REL_HWHEEL, align 4
  %135 = call i32 @input_report_rel(i32 %133, i32 %134, i32 -1)
  %136 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %137 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @REL_HWHEEL_HI_RES, align 4
  %140 = call i32 @input_report_rel(i32 %138, i32 %139, i32 -120)
  br label %160

141:                                              ; preds = %95
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @M560_MOUSE_BTN_WHEEL_RIGHT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %141
  %149 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %150 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @REL_HWHEEL, align 4
  %153 = call i32 @input_report_rel(i32 %151, i32 %152, i32 1)
  %154 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %155 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @REL_HWHEEL_HI_RES, align 4
  %158 = call i32 @input_report_rel(i32 %156, i32 %157, i32 120)
  br label %159

159:                                              ; preds = %148, %141
  br label %160

160:                                              ; preds = %159, %130
  %161 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = call i32 @hid_field_extract(%struct.hid_device* %161, i32* %163, i32 0, i32 12)
  %165 = call i32 @hid_snto32(i32 %164, i32 12)
  store i32 %165, i32* %9, align 4
  %166 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %167 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @REL_X, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @input_report_rel(i32 %168, i32 %169, i32 %170)
  %172 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  %175 = call i32 @hid_field_extract(%struct.hid_device* %172, i32* %174, i32 12, i32 12)
  %176 = call i32 @hid_snto32(i32 %175, i32 12)
  store i32 %176, i32* %9, align 4
  %177 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %178 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @REL_Y, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @input_report_rel(i32 %179, i32 %180, i32 %181)
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 6
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @hid_snto32(i32 %185, i32 8)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %160
  %190 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %191 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %194 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %193, i32 0, i32 1
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @hidpp_scroll_counter_handle_scroll(i32 %192, i32* %194, i32 %195)
  br label %197

197:                                              ; preds = %189, %160
  %198 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %199 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @input_sync(i32 %200)
  br label %202

202:                                              ; preds = %197, %90
  br label %203

203:                                              ; preds = %202, %85
  store i32 1, i32* %4, align 4
  br label %204

204:                                              ; preds = %203, %82, %24, %16
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @hid_snto32(i32, i32) #1

declare dso_local i32 @hid_field_extract(%struct.hid_device*, i32*, i32, i32) #1

declare dso_local i32 @hidpp_scroll_counter_handle_scroll(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
