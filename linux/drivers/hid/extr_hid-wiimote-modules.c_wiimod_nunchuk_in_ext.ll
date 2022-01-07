; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_nunchuk_in_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_nunchuk_in_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WIIPROTO_FLAG_MP_ACTIVE = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@wiimod_nunchuk_map = common dso_local global i32* null, align 8
@WIIMOD_NUNCHUK_KEY_Z = common dso_local global i64 0, align 8
@WIIMOD_NUNCHUK_KEY_C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @wiimod_nunchuk_in_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_nunchuk_in_ext(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 128
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 128
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 2
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 2
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 2
  store i32 %31, i32* %7, align 4
  %32 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %33 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %2
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 3
  %44 = and i32 %43, 2
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 4
  %51 = and i32 %50, 2
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, -5
  store i32 %55, i32* %7, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 5
  %60 = and i32 %59, 6
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %85

63:                                               ; preds = %2
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 2
  %68 = and i32 %67, 3
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 4
  %75 = and i32 %74, 3
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 6
  %82 = and i32 %81, 3
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %63, %39
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %86, 512
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 512
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 512
  store i32 %91, i32* %7, align 4
  %92 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %93 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ABS_HAT0X, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @input_report_abs(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %100 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ABS_HAT0Y, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @input_report_abs(i32 %102, i32 %103, i32 %104)
  %106 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %107 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ABS_RX, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @input_report_abs(i32 %109, i32 %110, i32 %111)
  %113 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %114 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ABS_RY, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @input_report_abs(i32 %116, i32 %117, i32 %118)
  %120 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %121 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ABS_RZ, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @input_report_abs(i32 %123, i32 %124, i32 %125)
  %127 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %128 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %85
  %135 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %136 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** @wiimod_nunchuk_map, align 8
  %140 = load i64, i64* @WIIMOD_NUNCHUK_KEY_Z, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i32 @input_report_key(i32 %138, i32 %142, i32 %149)
  %151 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %152 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** @wiimod_nunchuk_map, align 8
  %156 = load i64, i64* @WIIMOD_NUNCHUK_KEY_C, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 5
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 8
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @input_report_key(i32 %154, i32 %158, i32 %165)
  br label %200

167:                                              ; preds = %85
  %168 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %169 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** @wiimod_nunchuk_map, align 8
  %173 = load i64, i64* @WIIMOD_NUNCHUK_KEY_Z, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 5
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 @input_report_key(i32 %171, i32 %175, i32 %182)
  %184 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %185 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** @wiimod_nunchuk_map, align 8
  %189 = load i64, i64* @WIIMOD_NUNCHUK_KEY_C, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %4, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 5
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 2
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = call i32 @input_report_key(i32 %187, i32 %191, i32 %198)
  br label %200

200:                                              ; preds = %167, %134
  %201 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %202 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @input_sync(i32 %204)
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
