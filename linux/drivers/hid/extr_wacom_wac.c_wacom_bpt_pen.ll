; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt_pen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, i32, i32*, %struct.TYPE_2__*, %struct.input_dev*, %struct.wacom_features }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }
%struct.wacom_features = type { i8 }

@WACOM_REPORT_PENABLED = common dso_local global i8 0, align 1
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@ERASER_DEVICE_ID = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@STYLUS_DEVICE_ID = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_bpt_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_bpt_pen(%struct.wacom_wac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
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
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %18 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %17, i32 0, i32 6
  store %struct.wacom_features* %18, %struct.wacom_features** %4, align 8
  %19 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %20 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %19, i32 0, i32 5
  %21 = load %struct.input_dev*, %struct.input_dev** %20, align 8
  store %struct.input_dev* %21, %struct.input_dev** %5, align 8
  %22 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %23 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @WACOM_REPORT_PENABLED, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %223

33:                                               ; preds = %1
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 128
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 64
  %46 = icmp eq i32 %45, 64
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 32
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %57 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %61 = call i64 @delay_pen_events(%struct.wacom_wac* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %223

64:                                               ; preds = %33
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 6
  %70 = bitcast i8* %69 to i32*
  %71 = call i32 @le16_to_cpup(i32* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 2
  store i32 %81, i32* %12, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %67, %64
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %130

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = bitcast i8* %92 to i32*
  %94 = call i32 @le16_to_cpup(i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = bitcast i8* %96 to i32*
  %98 = call i32 @le16_to_cpup(i32* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %90
  %106 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %107 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %108 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* @ERASER_DEVICE_ID, align 4
  %112 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %113 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %111, i32* %115, align 4
  br label %127

116:                                              ; preds = %90
  %117 = load i32, i32* @BTN_TOOL_PEN, align 4
  %118 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %119 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* @STYLUS_DEVICE_ID, align 4
  %123 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %124 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %116, %105
  %128 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %129 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %128, i32 0, i32 2
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %87
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 8
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %139 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %138, i32 0, i32 0
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp sle i32 %137, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %133
  %144 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %145 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %144, i32 0, i32 0
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 8
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = sub nsw i32 %147, %151
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %143, %133
  br label %159

154:                                              ; preds = %130
  %155 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %156 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 0, i32* %158, align 4
  br label %159

159:                                              ; preds = %154, %153
  %160 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %161 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %216

164:                                              ; preds = %159
  %165 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %166 = load i32, i32* @BTN_TOUCH, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @input_report_key(%struct.input_dev* %165, i32 %166, i32 %167)
  %169 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %170 = load i32, i32* @BTN_STYLUS, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @input_report_key(%struct.input_dev* %169, i32 %170, i32 %171)
  %173 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %174 = load i32, i32* @BTN_STYLUS2, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @input_report_key(%struct.input_dev* %173, i32 %174, i32 %175)
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %164
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %191, label %182

182:                                              ; preds = %179, %164
  %183 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %184 = load i32, i32* @ABS_X, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @input_report_abs(%struct.input_dev* %183, i32 %184, i32 %185)
  %187 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %188 = load i32, i32* @ABS_Y, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @input_report_abs(%struct.input_dev* %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %182, %179
  %192 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %193 = load i32, i32* @ABS_PRESSURE, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @input_report_abs(%struct.input_dev* %192, i32 %193, i32 %194)
  %196 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %197 = load i32, i32* @ABS_DISTANCE, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @input_report_abs(%struct.input_dev* %196, i32 %197, i32 %198)
  %200 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %201 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %202 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %14, align 4
  %207 = call i32 @input_report_key(%struct.input_dev* %200, i32 %205, i32 %206)
  %208 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %209 = load i32, i32* @ABS_MISC, align 4
  %210 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %211 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @input_report_abs(%struct.input_dev* %208, i32 %209, i32 %214)
  br label %216

216:                                              ; preds = %191, %159
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %221 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %220, i32 0, i32 2
  store i32 0, i32* %221, align 8
  br label %222

222:                                              ; preds = %219, %216
  store i32 1, i32* %2, align 4
  br label %223

223:                                              ; preds = %222, %63, %32
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i64 @delay_pen_events(%struct.wacom_wac*) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
