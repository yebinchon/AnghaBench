; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_drums_in_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_drums_in_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }

@WIIPROTO_FLAG_MP_ACTIVE = common dso_local global i32 0, align 4
@ABS_HAT2Y = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT2X = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ABS_HAT3X = common dso_local global i32 0, align 4
@ABS_HAT3Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @wiimod_drums_in_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_drums_in_ext(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 5
  %23 = sub nsw i32 7, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 1
  %28 = and i32 %27, 31
  store i32 %28, i32* %6, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 64
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 63
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 63
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 64
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 32
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 16
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 8
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 16
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %18, align 4
  %108 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %109 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %2
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 62
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 62
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %115, %2
  %121 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %127 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* @ABS_HAT2Y, align 4
  %132 = call i32 @wiimod_drums_report_pressure(%struct.wiimote_data* %121, i32 %122, i32 %123, i32 %124, i32 %125, i32* %130, i32 %131, i32 14)
  %133 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %139 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* @ABS_HAT0X, align 4
  %144 = call i32 @wiimod_drums_report_pressure(%struct.wiimote_data* %133, i32 %134, i32 %135, i32 %136, i32 %137, i32* %142, i32 %143, i32 25)
  %145 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %151 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* @ABS_HAT2X, align 4
  %156 = call i32 @wiimod_drums_report_pressure(%struct.wiimote_data* %145, i32 %146, i32 %147, i32 %148, i32 %149, i32* %154, i32 %155, i32 17)
  %157 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %163 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* @ABS_HAT1X, align 4
  %168 = call i32 @wiimod_drums_report_pressure(%struct.wiimote_data* %157, i32 %158, i32 %159, i32 %160, i32 %161, i32* %166, i32 %167, i32 18)
  %169 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %175 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  %179 = load i32, i32* @ABS_HAT0Y, align 4
  %180 = call i32 @wiimod_drums_report_pressure(%struct.wiimote_data* %169, i32 %170, i32 %171, i32 %172, i32 %173, i32* %178, i32 %179, i32 15)
  %181 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %120
  br label %188

186:                                              ; preds = %120
  %187 = load i32, i32* %6, align 4
  br label %188

188:                                              ; preds = %186, %185
  %189 = phi i32 [ 255, %185 ], [ %187, %186 ]
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %193 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 5
  %197 = load i32, i32* @ABS_HAT3X, align 4
  %198 = call i32 @wiimod_drums_report_pressure(%struct.wiimote_data* %181, i32 %182, i32 %189, i32 %190, i32 %191, i32* %196, i32 %197, i32 27)
  %199 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %188
  %204 = load i32, i32* %6, align 4
  br label %206

205:                                              ; preds = %188
  br label %206

206:                                              ; preds = %205, %203
  %207 = phi i32 [ %204, %203 ], [ 255, %205 ]
  %208 = load i32, i32* %5, align 4
  %209 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %210 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 6
  %214 = load i32, i32* @ABS_HAT3Y, align 4
  %215 = call i32 @wiimod_drums_report_pressure(%struct.wiimote_data* %199, i32 %200, i32 %207, i32 %208, i32 0, i32* %213, i32 %214, i32 14)
  %216 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %217 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @ABS_X, align 4
  %221 = load i32, i32* %9, align 4
  %222 = sub nsw i32 %221, 32
  %223 = call i32 @input_report_abs(i32 %219, i32 %220, i32 %222)
  %224 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %225 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ABS_Y, align 4
  %229 = load i32, i32* %10, align 4
  %230 = sub nsw i32 %229, 32
  %231 = call i32 @input_report_abs(i32 %227, i32 %228, i32 %230)
  %232 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %233 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @BTN_START, align 4
  %237 = load i32, i32* %18, align 4
  %238 = call i32 @input_report_key(i32 %235, i32 %236, i32 %237)
  %239 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %240 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @BTN_SELECT, align 4
  %244 = load i32, i32* %17, align 4
  %245 = call i32 @input_report_key(i32 %242, i32 %243, i32 %244)
  %246 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %247 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @input_sync(i32 %249)
  ret void
}

declare dso_local i32 @wiimod_drums_report_pressure(%struct.wiimote_data*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
