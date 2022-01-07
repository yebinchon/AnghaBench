; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_bboard_in_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_bboard_in_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__, %struct.wiimote_state }
%struct.TYPE_2__ = type { i32 }
%struct.wiimote_state = type { i32** }

@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@ABS_HAT1Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @wiimod_bboard_in_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_bboard_in_ext(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiimote_state*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %11 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %10, i32 0, i32 1
  store %struct.wiimote_state* %11, %struct.wiimote_state** %9, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = shl i32 %17, 8
  store i32 %18, i32* %16, align 16
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 16
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 8
  store i32 %44, i32* %42, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  store i32 %57, i32* %55, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 7
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %196, %2
  %65 = load i32, i32* %8, align 4
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %199

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.wiimote_state*, %struct.wiimote_state** %9, align 8
  %73 = getelementptr inbounds %struct.wiimote_state, %struct.wiimote_state* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %71, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %191

83:                                               ; preds = %67
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wiimote_state*, %struct.wiimote_state** %9, align 8
  %89 = getelementptr inbounds %struct.wiimote_state, %struct.wiimote_state* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %87, %96
  br i1 %97, label %98, label %143

98:                                               ; preds = %83
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.wiimote_state*, %struct.wiimote_state** %9, align 8
  %104 = getelementptr inbounds %struct.wiimote_state, %struct.wiimote_state* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %102, %111
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = mul nsw i32 %113, 1700
  store i32 %114, i32* %6, align 4
  %115 = load %struct.wiimote_state*, %struct.wiimote_state** %9, align 8
  %116 = getelementptr inbounds %struct.wiimote_state, %struct.wiimote_state* %115, i32 0, i32 0
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.wiimote_state*, %struct.wiimote_state** %9, align 8
  %125 = getelementptr inbounds %struct.wiimote_state, %struct.wiimote_state* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %123, %132
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %98
  %137 = load i32, i32* %7, align 4
  br label %139

138:                                              ; preds = %98
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 1, %138 ]
  %141 = load i32, i32* %6, align 4
  %142 = sdiv i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %190

143:                                              ; preds = %83
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.wiimote_state*, %struct.wiimote_state** %9, align 8
  %149 = getelementptr inbounds %struct.wiimote_state, %struct.wiimote_state* %148, i32 0, i32 0
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %147, %156
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = mul nsw i32 %158, 1700
  store i32 %159, i32* %6, align 4
  %160 = load %struct.wiimote_state*, %struct.wiimote_state** %9, align 8
  %161 = getelementptr inbounds %struct.wiimote_state, %struct.wiimote_state* %160, i32 0, i32 0
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.wiimote_state*, %struct.wiimote_state** %9, align 8
  %170 = getelementptr inbounds %struct.wiimote_state, %struct.wiimote_state* %169, i32 0, i32 0
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %168, %177
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %143
  %182 = load i32, i32* %7, align 4
  br label %184

183:                                              ; preds = %143
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 1, %183 ]
  %186 = load i32, i32* %6, align 4
  %187 = sdiv i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1700
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %184, %139
  br label %191

191:                                              ; preds = %190, %82
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %8, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %194
  store i32 %192, i32* %195, align 4
  br label %196

196:                                              ; preds = %191
  %197 = load i32, i32* %8, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %64

199:                                              ; preds = %64
  %200 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %201 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @ABS_HAT0X, align 4
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %206 = load i32, i32* %205, align 16
  %207 = call i32 @input_report_abs(i32 %203, i32 %204, i32 %206)
  %208 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %209 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @ABS_HAT0Y, align 4
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @input_report_abs(i32 %211, i32 %212, i32 %214)
  %216 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %217 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @ABS_HAT1X, align 4
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @input_report_abs(i32 %219, i32 %220, i32 %222)
  %224 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %225 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ABS_HAT1Y, align 4
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @input_report_abs(i32 %227, i32 %228, i32 %230)
  %232 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %233 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @input_sync(i32 %235)
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
