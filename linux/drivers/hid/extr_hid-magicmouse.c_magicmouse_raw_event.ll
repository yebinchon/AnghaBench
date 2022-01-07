; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.magicmouse_sc = type { i32, %struct.input_dev* }
%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"invalid size value (%d) for TRACKPAD_REPORT_ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"invalid size value (%d) for TRACKPAD2_USB_REPORT_ID\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"invalid size value (%d) for MOUSE_REPORT_ID\0A\00", align 1
@USB_DEVICE_ID_APPLE_MAGICMOUSE = common dso_local global i64 0, align 8
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@USB_DEVICE_ID_APPLE_MAGICTRACKPAD2 = common dso_local global i64 0, align 8
@BTN_MOUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @magicmouse_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magicmouse_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.magicmouse_sc*, align 8
  %11 = alloca %struct.input_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = call %struct.magicmouse_sc* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.magicmouse_sc* %18, %struct.magicmouse_sc** %10, align 8
  %19 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %10, align 8
  %20 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %19, i32 0, i32 1
  %21 = load %struct.input_dev*, %struct.input_dev** %20, align 8
  store %struct.input_dev* %21, %struct.input_dev** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %201 [
    i32 128, label %25
    i32 130, label %25
    i32 129, label %68
    i32 131, label %111
    i32 132, label %176
  ]

25:                                               ; preds = %4, %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 4
  %31 = srem i32 %30, 9
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %25
  store i32 0, i32* %5, align 4
  br label %249

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 4
  %37 = sdiv i32 %36, 9
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp sgt i32 %38, 15
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @hid_warn(%struct.hid_device* %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %5, align 4
  br label %249

44:                                               ; preds = %34
  %45 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %10, align 8
  %46 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %61, %44
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = mul nsw i32 %55, 9
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = call i32 @magicmouse_emit_touch(%struct.magicmouse_sc* %52, i32 %53, i32* %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %47

64:                                               ; preds = %47
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %15, align 4
  br label %202

68:                                               ; preds = %4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 12
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 12
  %74 = srem i32 %73, 9
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %68
  store i32 0, i32* %5, align 4
  br label %249

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 12
  %80 = sdiv i32 %79, 9
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp sgt i32 %81, 15
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @hid_warn(%struct.hid_device* %84, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  store i32 0, i32* %5, align 4
  br label %249

87:                                               ; preds = %77
  %88 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %10, align 8
  %89 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %104, %87
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %10, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 %98, 9
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = getelementptr inbounds i32, i32* %101, i64 12
  %103 = call i32 @magicmouse_emit_touch(%struct.magicmouse_sc* %95, i32 %96, i32* %102)
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %90

107:                                              ; preds = %90
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %15, align 4
  br label %202

111:                                              ; preds = %4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 6
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 %115, 6
  %117 = srem i32 %116, 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %111
  store i32 0, i32* %5, align 4
  br label %249

120:                                              ; preds = %114
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %121, 6
  %123 = sdiv i32 %122, 8
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp sgt i32 %124, 15
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @hid_warn(%struct.hid_device* %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  store i32 0, i32* %5, align 4
  br label %249

130:                                              ; preds = %120
  %131 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %10, align 8
  %132 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %147, %130
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %10, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %14, align 4
  %142 = mul nsw i32 %141, 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = getelementptr inbounds i32, i32* %144, i64 6
  %146 = call i32 @magicmouse_emit_touch(%struct.magicmouse_sc* %138, i32 %139, i32* %145)
  br label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %133

150:                                              ; preds = %133
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 12
  %155 = shl i32 %154, 28
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 22
  %160 = or i32 %155, %159
  %161 = ashr i32 %160, 22
  store i32 %161, i32* %12, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 48
  %166 = shl i32 %165, 26
  %167 = load i32*, i32** %8, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 22
  %171 = or i32 %166, %170
  %172 = ashr i32 %171, 22
  store i32 %172, i32* %13, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %15, align 4
  br label %202

176:                                              ; preds = %4
  %177 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %178 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32*, i32** %8, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @magicmouse_raw_event(%struct.hid_device* %177, %struct.hid_report* %178, i32* %180, i32 %183)
  %185 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %186 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %187 = load i32*, i32** %8, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32*, i32** %8, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i32, i32* %9, align 4
  %195 = sub nsw i32 %194, 2
  %196 = load i32*, i32** %8, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %195, %198
  %200 = call i32 @magicmouse_raw_event(%struct.hid_device* %185, %struct.hid_report* %186, i32* %193, i32 %199)
  br label %202

201:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %249

202:                                              ; preds = %176, %150, %107, %64
  %203 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %204 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICMOUSE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %202
  %210 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %10, align 8
  %211 = load i32, i32* %15, align 4
  %212 = and i32 %211, 3
  %213 = call i32 @magicmouse_emit_buttons(%struct.magicmouse_sc* %210, i32 %212)
  %214 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %215 = load i32, i32* @REL_X, align 4
  %216 = load i32, i32* %12, align 4
  %217 = call i32 @input_report_rel(%struct.input_dev* %214, i32 %215, i32 %216)
  %218 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %219 = load i32, i32* @REL_Y, align 4
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @input_report_rel(%struct.input_dev* %218, i32 %219, i32 %220)
  br label %246

222:                                              ; preds = %202
  %223 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %224 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD2, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %222
  %230 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %231 = call i32 @input_mt_sync_frame(%struct.input_dev* %230)
  %232 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %233 = load i32, i32* @BTN_MOUSE, align 4
  %234 = load i32, i32* %15, align 4
  %235 = and i32 %234, 1
  %236 = call i32 @input_report_key(%struct.input_dev* %232, i32 %233, i32 %235)
  br label %245

237:                                              ; preds = %222
  %238 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %239 = load i32, i32* @BTN_MOUSE, align 4
  %240 = load i32, i32* %15, align 4
  %241 = and i32 %240, 1
  %242 = call i32 @input_report_key(%struct.input_dev* %238, i32 %239, i32 %241)
  %243 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %244 = call i32 @input_mt_report_pointer_emulation(%struct.input_dev* %243, i32 1)
  br label %245

245:                                              ; preds = %237, %229
  br label %246

246:                                              ; preds = %245, %209
  %247 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %248 = call i32 @input_sync(%struct.input_dev* %247)
  store i32 1, i32* %5, align 4
  br label %249

249:                                              ; preds = %246, %201, %126, %119, %83, %76, %40, %33
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local %struct.magicmouse_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @magicmouse_emit_touch(%struct.magicmouse_sc*, i32, i32*) #1

declare dso_local i32 @magicmouse_emit_buttons(%struct.magicmouse_sc*, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_report_pointer_emulation(%struct.input_dev*, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
