; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_inout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i8*, i8*, i32, %struct.TYPE_2__*, %struct.wacom_features, i32*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wacom_features = type { i64, i32 }
%struct.input_dev = type { i32 }

@INTUOS = common dso_local global i64 0, align 8
@INTUOSHT2 = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_intuos_inout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_intuos_inout(%struct.wacom_wac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  %8 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %9 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %8, i32 0, i32 5
  store %struct.wacom_features* %9, %struct.wacom_features** %4, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %14 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %13, i32 0, i32 7
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %6, align 8
  %16 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %17 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INTUOS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 1
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i32 [ %26, %21 ], [ 0, %27 ]
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 252
  %35 = icmp eq i32 %34, 192
  br i1 %35, label %51, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 254
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 254
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %211

51:                                               ; preds = %43, %36, %28
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 252
  %57 = icmp eq i32 %56, 192
  br i1 %57, label %58, label %146

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 15
  %64 = shl i32 %63, 28
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 20
  %70 = add nsw i32 %64, %69
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 5
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 12
  %76 = add nsw i32 %70, %75
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 6
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 4
  %82 = add nsw i32 %76, %81
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 7
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = ashr i32 %86, 4
  %88 = add nsw i32 %82, %87
  %89 = trunc i32 %88 to i8
  %90 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %91 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 %89, i8* %95, align 1
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 4
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = ashr i32 %104, 4
  %106 = or i32 %100, %105
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 7
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 15
  %112 = shl i32 %111, 16
  %113 = or i32 %106, %112
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 8
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 240
  %119 = shl i32 %118, 8
  %120 = or i32 %113, %119
  %121 = trunc i32 %120 to i8
  %122 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %123 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 %121, i8* %127, align 1
  %128 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %129 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @wacom_intuos_get_tool_type(i8 zeroext %134)
  %136 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %137 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %143 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %142, i32 0, i32 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 4
  store i32 1, i32* %2, align 4
  br label %211

146:                                              ; preds = %51
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 254
  %152 = icmp eq i32 %151, 32
  br i1 %152, label %153, label %184

153:                                              ; preds = %146
  %154 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %155 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @INTUOSHT2, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %161 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %160, i32 0, i32 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %153
  %165 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %166 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  %170 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %171 = load i32, i32* @BTN_TOUCH, align 4
  %172 = call i32 @input_report_key(%struct.input_dev* %170, i32 %171, i32 0)
  %173 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %174 = load i32, i32* @ABS_PRESSURE, align 4
  %175 = call i32 @input_report_abs(%struct.input_dev* %173, i32 %174, i32 0)
  %176 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %177 = load i32, i32* @ABS_DISTANCE, align 4
  %178 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %179 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @input_report_abs(%struct.input_dev* %176, i32 %177, i32 %181)
  store i32 2, i32* %2, align 4
  br label %211

183:                                              ; preds = %164
  store i32 1, i32* %2, align 4
  br label %211

184:                                              ; preds = %146
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = and i32 %188, 254
  %190 = icmp eq i32 %189, 128
  br i1 %190, label %191, label %210

191:                                              ; preds = %184
  %192 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %193 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %192, i32 0, i32 4
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  store i32 0, i32* %195, align 4
  %196 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %197 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %196, i32 0, i32 3
  store i32 0, i32* %197, align 8
  %198 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %199 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = icmp ne i8 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %191
  store i32 1, i32* %2, align 4
  br label %211

207:                                              ; preds = %191
  %208 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %209 = call i32 @wacom_exit_report(%struct.wacom_wac* %208)
  store i32 2, i32* %2, align 4
  br label %211

210:                                              ; preds = %184
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %210, %207, %206, %183, %169, %58, %50
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @wacom_intuos_get_tool_type(i8 zeroext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @wacom_exit_report(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
