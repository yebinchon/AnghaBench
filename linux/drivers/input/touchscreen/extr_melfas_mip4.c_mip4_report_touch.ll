; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_report_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_report_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Screen - Slot: %d State: %d X: %04d Y: %04d Z: %d\0A\00", align 1
@MIP4_MAX_FINGERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Screen - invalid slot ID: %d\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mip4_ts*, i32*)* @mip4_report_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mip4_report_touch(%struct.mip4_ts* %0, i32* %1) #0 {
  %3 = alloca %struct.mip4_ts*, align 8
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
  store %struct.mip4_ts* %0, %struct.mip4_ts** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %17 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %85 [
    i32 0, label %19
    i32 1, label %19
    i32 3, label %84
  ]

19:                                               ; preds = %2, %2
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 7)
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIT(i32 5)
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BIT(i32 4)
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 8
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 4
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 8
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %66 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %19
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  br label %83

76:                                               ; preds = %19
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 7
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %76, %69
  br label %148

84:                                               ; preds = %2
  br label %85

85:                                               ; preds = %2, %84
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 15
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BIT(i32 2)
  %95 = and i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BIT(i32 1)
  %100 = and i32 %98, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @BIT(i32 0)
  %105 = and i32 %103, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 15
  %110 = shl i32 %109, 8
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  store i32 %114, i32* %9, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 4
  %119 = and i32 %118, 15
  %120 = shl i32 %119, 8
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %120, %123
  store i32 %124, i32* %10, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %13, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 7
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 240
  %132 = ashr i32 %131, 4
  store i32 %132, i32* %11, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 7
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 15
  %137 = shl i32 %136, 8
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 8
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %137, %140
  store i32 %141, i32* %12, align 4
  %142 = load i32*, i32** %4, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 9
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %14, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 10
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %15, align 4
  br label %148

148:                                              ; preds = %85, %83
  %149 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %150 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @dev_dbg(i32* %152, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @MIP4_MAX_FINGERS, align 4
  %164 = icmp sge i32 %162, %163
  br label %165

165:                                              ; preds = %161, %148
  %166 = phi i1 [ true, %148 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %172 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %171, i32 0, i32 2
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @dev_err(i32* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  br label %233

177:                                              ; preds = %165
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %221

180:                                              ; preds = %177
  %181 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %182 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @input_mt_slot(i32 %183, i32 %184)
  %186 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %187 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @MT_TOOL_FINGER, align 4
  %190 = call i32 @input_mt_report_slot_state(i32 %188, i32 %189, i32 1)
  %191 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %192 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @input_report_abs(i32 %193, i32 %194, i32 %195)
  %197 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %198 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @input_report_abs(i32 %199, i32 %200, i32 %201)
  %203 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %204 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @input_report_abs(i32 %205, i32 %206, i32 %207)
  %209 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %210 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @input_report_abs(i32 %211, i32 %212, i32 %213)
  %215 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %216 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @input_report_abs(i32 %217, i32 %218, i32 %219)
  br label %232

221:                                              ; preds = %177
  %222 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %223 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %5, align 4
  %226 = call i32 @input_mt_slot(i32 %224, i32 %225)
  %227 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %228 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @MT_TOOL_FINGER, align 4
  %231 = call i32 @input_mt_report_slot_state(i32 %229, i32 %230, i32 0)
  br label %232

232:                                              ; preds = %221, %180
  br label %233

233:                                              ; preds = %232, %170
  %234 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %235 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @input_mt_sync_frame(i32 %236)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
