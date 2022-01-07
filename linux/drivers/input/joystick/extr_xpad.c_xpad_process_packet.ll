; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@MAP_STICKS_TO_NULL = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@MAP_TRIGGERS_TO_BUTTONS = common dso_local global i32 0, align 4
@BTN_TL2 = common dso_local global i32 0, align 4
@BTN_TR2 = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@MAP_DPAD_TO_BUTTONS = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY1 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY2 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY3 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY4 = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@BTN_THUMBL = common dso_local global i32 0, align 4
@BTN_THUMBR = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_C = common dso_local global i32 0, align 4
@BTN_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xpad*, i32, i8*)* @xpad_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad_process_packet(%struct.usb_xpad* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.usb_xpad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input_dev*, align 8
  store %struct.usb_xpad* %0, %struct.usb_xpad** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %9 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %7, align 8
  %11 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %12 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MAP_STICKS_TO_NULL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %3
  %18 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %19 = load i32, i32* @ABS_X, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 12
  %22 = bitcast i8* %21 to i32*
  %23 = call i64 @le16_to_cpup(i32* %22)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @input_report_abs(%struct.input_dev* %18, i32 %19, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %27 = load i32, i32* @ABS_Y, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 14
  %30 = bitcast i8* %29 to i32*
  %31 = call i64 @le16_to_cpup(i32* %30)
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, -1
  %34 = call i32 @input_report_abs(%struct.input_dev* %26, i32 %27, i32 %33)
  %35 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %36 = load i32, i32* @ABS_RX, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i32*
  %40 = call i64 @le16_to_cpup(i32* %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @input_report_abs(%struct.input_dev* %35, i32 %36, i32 %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %44 = load i32, i32* @ABS_RY, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 18
  %47 = bitcast i8* %46 to i32*
  %48 = call i64 @le16_to_cpup(i32* %47)
  %49 = trunc i64 %48 to i32
  %50 = xor i32 %49, -1
  %51 = call i32 @input_report_abs(%struct.input_dev* %43, i32 %44, i32 %50)
  br label %52

52:                                               ; preds = %17, %3
  %53 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %54 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MAP_TRIGGERS_TO_BUTTONS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = load i32, i32* @BTN_TL2, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 10
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @input_report_key(%struct.input_dev* %60, i32 %61, i8 zeroext %64)
  %66 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %67 = load i32, i32* @BTN_TR2, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 11
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @input_report_key(%struct.input_dev* %66, i32 %67, i8 zeroext %70)
  br label %87

72:                                               ; preds = %52
  %73 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %74 = load i32, i32* @ABS_Z, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 10
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 @input_report_abs(%struct.input_dev* %73, i32 %74, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %81 = load i32, i32* @ABS_RZ, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 11
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = call i32 @input_report_abs(%struct.input_dev* %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %72, %59
  %88 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %89 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MAP_DPAD_TO_BUTTONS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %87
  %95 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %96 = load i32, i32* @BTN_TRIGGER_HAPPY1, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = call i32 @input_report_key(%struct.input_dev* %95, i32 %96, i8 zeroext %102)
  %104 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %105 = load i32, i32* @BTN_TRIGGER_HAPPY2, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 8
  %111 = trunc i32 %110 to i8
  %112 = call i32 @input_report_key(%struct.input_dev* %104, i32 %105, i8 zeroext %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %114 = load i32, i32* @BTN_TRIGGER_HAPPY3, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 1
  %120 = trunc i32 %119 to i8
  %121 = call i32 @input_report_key(%struct.input_dev* %113, i32 %114, i8 zeroext %120)
  %122 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %123 = load i32, i32* @BTN_TRIGGER_HAPPY4, align 4
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 2
  %129 = trunc i32 %128 to i8
  %130 = call i32 @input_report_key(%struct.input_dev* %122, i32 %123, i8 zeroext %129)
  br label %176

131:                                              ; preds = %87
  %132 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %133 = load i32, i32* @ABS_HAT0X, align 4
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 8
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 2
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, 4
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sub nsw i32 %142, %151
  %153 = call i32 @input_report_abs(%struct.input_dev* %132, i32 %133, i32 %152)
  %154 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %155 = load i32, i32* @ABS_HAT0Y, align 4
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %159, 2
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = sub nsw i32 %164, %173
  %175 = call i32 @input_report_abs(%struct.input_dev* %154, i32 %155, i32 %174)
  br label %176

176:                                              ; preds = %131, %94
  %177 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %178 = load i32, i32* @BTN_START, align 4
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, 16
  %184 = trunc i32 %183 to i8
  %185 = call i32 @input_report_key(%struct.input_dev* %177, i32 %178, i8 zeroext %184)
  %186 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %187 = load i32, i32* @BTN_SELECT, align 4
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 2
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = and i32 %191, 32
  %193 = trunc i32 %192 to i8
  %194 = call i32 @input_report_key(%struct.input_dev* %186, i32 %187, i8 zeroext %193)
  %195 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %196 = load i32, i32* @BTN_THUMBL, align 4
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 2
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %200, 64
  %202 = trunc i32 %201 to i8
  %203 = call i32 @input_report_key(%struct.input_dev* %195, i32 %196, i8 zeroext %202)
  %204 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %205 = load i32, i32* @BTN_THUMBR, align 4
  %206 = load i8*, i8** %6, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 128
  %211 = trunc i32 %210 to i8
  %212 = call i32 @input_report_key(%struct.input_dev* %204, i32 %205, i8 zeroext %211)
  %213 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %214 = load i32, i32* @BTN_A, align 4
  %215 = load i8*, i8** %6, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 4
  %217 = load i8, i8* %216, align 1
  %218 = call i32 @input_report_key(%struct.input_dev* %213, i32 %214, i8 zeroext %217)
  %219 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %220 = load i32, i32* @BTN_B, align 4
  %221 = load i8*, i8** %6, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 5
  %223 = load i8, i8* %222, align 1
  %224 = call i32 @input_report_key(%struct.input_dev* %219, i32 %220, i8 zeroext %223)
  %225 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %226 = load i32, i32* @BTN_X, align 4
  %227 = load i8*, i8** %6, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 6
  %229 = load i8, i8* %228, align 1
  %230 = call i32 @input_report_key(%struct.input_dev* %225, i32 %226, i8 zeroext %229)
  %231 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %232 = load i32, i32* @BTN_Y, align 4
  %233 = load i8*, i8** %6, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 7
  %235 = load i8, i8* %234, align 1
  %236 = call i32 @input_report_key(%struct.input_dev* %231, i32 %232, i8 zeroext %235)
  %237 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %238 = load i32, i32* @BTN_C, align 4
  %239 = load i8*, i8** %6, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 8
  %241 = load i8, i8* %240, align 1
  %242 = call i32 @input_report_key(%struct.input_dev* %237, i32 %238, i8 zeroext %241)
  %243 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %244 = load i32, i32* @BTN_Z, align 4
  %245 = load i8*, i8** %6, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 9
  %247 = load i8, i8* %246, align 1
  %248 = call i32 @input_report_key(%struct.input_dev* %243, i32 %244, i8 zeroext %247)
  %249 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %250 = call i32 @input_sync(%struct.input_dev* %249)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i64 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
