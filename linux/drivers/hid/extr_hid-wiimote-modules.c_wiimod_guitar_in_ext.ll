; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_guitar_in_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_guitar_in_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WIIPROTO_FLAG_MP_ACTIVE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@wiimod_guitar_map = common dso_local global i32* null, align 8
@WIIMOD_GUITAR_KEY_G = common dso_local global i64 0, align 8
@WIIMOD_GUITAR_KEY_R = common dso_local global i64 0, align 8
@WIIMOD_GUITAR_KEY_Y = common dso_local global i64 0, align 8
@WIIMOD_GUITAR_KEY_B = common dso_local global i64 0, align 8
@WIIMOD_GUITAR_KEY_O = common dso_local global i64 0, align 8
@WIIMOD_GUITAR_KEY_UP = common dso_local global i64 0, align 8
@WIIMOD_GUITAR_KEY_DOWN = common dso_local global i64 0, align 8
@WIIMOD_GUITAR_KEY_PLUS = common dso_local global i64 0, align 8
@WIIMOD_GUITAR_KEY_MINUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @wiimod_guitar_in_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_guitar_in_ext(%struct.wiimote_data* %0, i32* %1) #0 {
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
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 63
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 63
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 31
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 31
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 64
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 16
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 32
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %14, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 16
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %16, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %17, align 4
  %97 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %98 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %2
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 62
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, 62
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %104, %2
  %117 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %118 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ABS_X, align 4
  %122 = load i32, i32* %5, align 4
  %123 = sub nsw i32 %122, 32
  %124 = call i32 @input_report_abs(i32 %120, i32 %121, i32 %123)
  %125 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %126 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ABS_Y, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %130, 32
  %132 = call i32 @input_report_abs(i32 %128, i32 %129, i32 %131)
  %133 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %134 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ABS_HAT0X, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @input_report_abs(i32 %136, i32 %137, i32 %138)
  %140 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %141 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ABS_HAT1X, align 4
  %145 = load i32, i32* %8, align 4
  %146 = sub nsw i32 %145, 16
  %147 = call i32 @input_report_abs(i32 %143, i32 %144, i32 %146)
  %148 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %149 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** @wiimod_guitar_map, align 8
  %153 = load i64, i64* @WIIMOD_GUITAR_KEY_G, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @input_report_key(i32 %151, i32 %155, i32 %156)
  %158 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %159 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** @wiimod_guitar_map, align 8
  %163 = load i64, i64* @WIIMOD_GUITAR_KEY_R, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @input_report_key(i32 %161, i32 %165, i32 %166)
  %168 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %169 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** @wiimod_guitar_map, align 8
  %173 = load i64, i64* @WIIMOD_GUITAR_KEY_Y, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %16, align 4
  %177 = call i32 @input_report_key(i32 %171, i32 %175, i32 %176)
  %178 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %179 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** @wiimod_guitar_map, align 8
  %183 = load i64, i64* @WIIMOD_GUITAR_KEY_B, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @input_report_key(i32 %181, i32 %185, i32 %186)
  %188 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %189 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** @wiimod_guitar_map, align 8
  %193 = load i64, i64* @WIIMOD_GUITAR_KEY_O, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @input_report_key(i32 %191, i32 %195, i32 %196)
  %198 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %199 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** @wiimod_guitar_map, align 8
  %203 = load i64, i64* @WIIMOD_GUITAR_KEY_UP, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %17, align 4
  %207 = call i32 @input_report_key(i32 %201, i32 %205, i32 %206)
  %208 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %209 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** @wiimod_guitar_map, align 8
  %213 = load i64, i64* @WIIMOD_GUITAR_KEY_DOWN, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @input_report_key(i32 %211, i32 %215, i32 %216)
  %218 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %219 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** @wiimod_guitar_map, align 8
  %223 = load i64, i64* @WIIMOD_GUITAR_KEY_PLUS, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @input_report_key(i32 %221, i32 %225, i32 %226)
  %228 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %229 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** @wiimod_guitar_map, align 8
  %233 = load i64, i64* @WIIMOD_GUITAR_KEY_MINUS, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @input_report_key(i32 %231, i32 %235, i32 %236)
  %238 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %239 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @input_sync(i32 %241)
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
