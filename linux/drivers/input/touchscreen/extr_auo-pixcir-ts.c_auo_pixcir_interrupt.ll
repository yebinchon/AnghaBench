; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auo_pixcir_ts = type { i32, i32, i64, i32, %struct.auo_pixcir_ts_platdata* }
%struct.auo_pixcir_ts_platdata = type { i32 }
%struct.auo_point_t = type { i64, i64, i64, i64, i64 }

@AUO_PIXCIR_REPORT_POINTS = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@AUO_PIXCIR_PENUP_TIMEOUT_MS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @auo_pixcir_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auo_pixcir_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.auo_pixcir_ts*, align 8
  %6 = alloca %struct.auo_pixcir_ts_platdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.auo_pixcir_ts*
  store %struct.auo_pixcir_ts* %14, %struct.auo_pixcir_ts** %5, align 8
  %15 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %16 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %15, i32 0, i32 4
  %17 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %16, align 8
  store %struct.auo_pixcir_ts_platdata* %17, %struct.auo_pixcir_ts_platdata** %6, align 8
  %18 = load i32, i32* @AUO_PIXCIR_REPORT_POINTS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca %struct.auo_point_t, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %22

22:                                               ; preds = %202, %65, %2
  %23 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %24 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %212

28:                                               ; preds = %22
  %29 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %30 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %35 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @gpio_get_value(i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %41 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @input_mt_sync(i32 %42)
  %44 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %45 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BTN_TOUCH, align 4
  %48 = call i32 @input_report_key(i32 %46, i32 %47, i32 0)
  %49 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %50 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @input_sync(i32 %51)
  br label %212

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %28
  %55 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %56 = call i32 @auo_pixcir_collect_data(%struct.auo_pixcir_ts* %55, %struct.auo_point_t* %21)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %61 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %212

65:                                               ; preds = %59
  %66 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %67 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %70 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @AUO_PIXCIR_PENUP_TIMEOUT_MS, align 4
  %73 = call i32 @msecs_to_jiffies(i32 %72)
  %74 = call i32 @wait_event_timeout(i32 %68, i32 %71, i32 %73)
  br label %22

75:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %157, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @AUO_PIXCIR_REPORT_POINTS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %160

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %82
  %84 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %89
  %91 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %156

94:                                               ; preds = %87, %80
  %95 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %96 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %100
  %102 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @input_report_abs(i32 %97, i32 %98, i64 %103)
  %105 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %106 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %110
  %112 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @input_report_abs(i32 %107, i32 %108, i64 %113)
  %115 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %116 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %120
  %122 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @input_report_abs(i32 %117, i32 %118, i64 %123)
  %125 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %126 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %130
  %132 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @input_report_abs(i32 %127, i32 %128, i64 %133)
  %135 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %136 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %140
  %142 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @input_report_abs(i32 %137, i32 %138, i64 %143)
  %145 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %146 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @input_mt_sync(i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %94
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %151, %94
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %153, %87
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %76

160:                                              ; preds = %76
  %161 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %162 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @BTN_TOUCH, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp sgt i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @input_report_key(i32 %163, i32 %164, i32 %167)
  %169 = load i32, i32* %12, align 4
  %170 = icmp sgt i32 %169, -1
  br i1 %170, label %171, label %192

171:                                              ; preds = %160
  %172 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %173 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @ABS_X, align 4
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %177
  %179 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @input_report_abs(i32 %174, i32 %175, i64 %180)
  %182 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %183 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ABS_Y, align 4
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %21, i64 %187
  %189 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @input_report_abs(i32 %184, i32 %185, i64 %190)
  br label %192

192:                                              ; preds = %171, %160
  %193 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %194 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @input_sync(i32 %195)
  %197 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %198 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %192
  br label %212

202:                                              ; preds = %192
  %203 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %204 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %5, align 8
  %207 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @AUO_PIXCIR_PENUP_TIMEOUT_MS, align 4
  %210 = call i32 @msecs_to_jiffies(i32 %209)
  %211 = call i32 @wait_event_timeout(i32 %205, i32 %208, i32 %210)
  br label %22

212:                                              ; preds = %201, %64, %39, %22
  %213 = load i32, i32* @IRQ_HANDLED, align 4
  %214 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %214)
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @gpio_get_value(i32) #2

declare dso_local i32 @input_mt_sync(i32) #2

declare dso_local i32 @input_report_key(i32, i32, i32) #2

declare dso_local i32 @input_sync(i32) #2

declare dso_local i32 @auo_pixcir_collect_data(%struct.auo_pixcir_ts*, %struct.auo_point_t*) #2

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @input_report_abs(i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
