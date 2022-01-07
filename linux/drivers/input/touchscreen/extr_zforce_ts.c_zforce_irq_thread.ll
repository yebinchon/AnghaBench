; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { i32, i32, i32, i32, i32, i64, %struct.i2c_client*, i32, i64 }
%struct.i2c_client = type { i32 }

@FRAME_MAXSIZE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"handling interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not read packet, ret: %d\0A\00", align 1
@PAYLOAD_BODY = common dso_local global i64 0, align 8
@RESPONSE_ID = common dso_local global i64 0, align 8
@RESPONSE_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Firmware Version %04x:%04x %04x:%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid command: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unrecognized response id: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"finished interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zforce_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zforce_ts*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.zforce_ts*
  store %struct.zforce_ts* %14, %struct.zforce_ts** %6, align 8
  %15 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %16 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %15, i32 0, i32 6
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %7, align 8
  %18 = load i32, i32* @FRAME_MAXSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %23 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = call i32 @msleep(i32 20)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %233

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %34 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %29
  %38 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i64 @device_may_wakeup(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 @pm_stay_awake(i32* %44)
  br label %46

46:                                               ; preds = %42, %37, %29
  br label %47

47:                                               ; preds = %208, %46
  %48 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %49 = call i32 @zforce_read_packet(%struct.zforce_ts* %48, i32* %21)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %214

57:                                               ; preds = %47
  %58 = load i64, i64* @PAYLOAD_BODY, align 8
  %59 = getelementptr inbounds i32, i32* %21, i64 %58
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* @RESPONSE_ID, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %197 [
    i32 134, label %64
    i32 136, label %84
    i32 132, label %97
    i32 133, label %97
    i32 129, label %97
    i32 131, label %97
    i32 130, label %97
    i32 128, label %108
    i32 135, label %187
  ]

64:                                               ; preds = %57
  %65 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %66 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = call i64 @device_may_wakeup(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @pm_wakeup_event(i32* %76, i32 500)
  br label %78

78:                                               ; preds = %74, %69, %64
  %79 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i64, i64* @RESPONSE_DATA, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = call i32 @zforce_touch_event(%struct.zforce_ts* %79, i32* %82)
  br label %207

84:                                               ; preds = %57
  %85 = load i32*, i32** %11, align 8
  %86 = load i64, i64* @RESPONSE_DATA, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %90 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i64, i64* @RESPONSE_ID, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @zforce_complete(%struct.zforce_ts* %91, i32 %95, i32 0)
  br label %207

97:                                               ; preds = %57, %57, %57, %57, %57
  %98 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i64, i64* @RESPONSE_ID, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i64, i64* @RESPONSE_DATA, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @zforce_complete(%struct.zforce_ts* %98, i32 %102, i32 %106)
  br label %207

108:                                              ; preds = %57
  %109 = load i32*, i32** %11, align 8
  %110 = load i64, i64* @RESPONSE_DATA, align 8
  %111 = add i64 %110, 1
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i64, i64* @RESPONSE_DATA, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %114, %118
  %120 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %121 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = load i64, i64* @RESPONSE_DATA, align 8
  %124 = add i64 %123, 3
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i64, i64* @RESPONSE_DATA, align 8
  %130 = add i64 %129, 2
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %127, %132
  %134 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %135 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i64, i64* @RESPONSE_DATA, align 8
  %138 = add i64 %137, 5
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 8
  %142 = load i32*, i32** %11, align 8
  %143 = load i64, i64* @RESPONSE_DATA, align 8
  %144 = add i64 %143, 4
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %141, %146
  %148 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %149 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i64, i64* @RESPONSE_DATA, align 8
  %152 = add i64 %151, 7
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = load i32*, i32** %11, align 8
  %157 = load i64, i64* @RESPONSE_DATA, align 8
  %158 = add i64 %157, 6
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %155, %160
  %162 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %163 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %165 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %164, i32 0, i32 6
  %166 = load %struct.i2c_client*, %struct.i2c_client** %165, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %169 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %172 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %175 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %178 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %173, i32 %176, i32 %179)
  %181 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = load i64, i64* @RESPONSE_ID, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @zforce_complete(%struct.zforce_ts* %181, i32 %185, i32 0)
  br label %207

187:                                              ; preds = %57
  %188 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %189 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %188, i32 0, i32 6
  %190 = load %struct.i2c_client*, %struct.i2c_client** %189, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = load i32*, i32** %11, align 8
  %193 = load i64, i64* @RESPONSE_DATA, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dev_err(i32* %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %195)
  br label %207

197:                                              ; preds = %57
  %198 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %199 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %198, i32 0, i32 6
  %200 = load %struct.i2c_client*, %struct.i2c_client** %199, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = load i32*, i32** %11, align 8
  %203 = load i64, i64* @RESPONSE_ID, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @dev_err(i32* %201, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %197, %187, %108, %97, %84, %78
  br label %208

208:                                              ; preds = %207
  %209 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %210 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @gpiod_get_value_cansleep(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %47, label %214

214:                                              ; preds = %208, %52
  %215 = load %struct.zforce_ts*, %struct.zforce_ts** %6, align 8
  %216 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %214
  %220 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %221 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %220, i32 0, i32 0
  %222 = call i64 @device_may_wakeup(i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %226 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %225, i32 0, i32 0
  %227 = call i32 @pm_relax(i32* %226)
  br label %228

228:                                              ; preds = %224, %219, %214
  %229 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %230 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %229, i32 0, i32 0
  %231 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %230, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %232 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %232, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %233

233:                                              ; preds = %228, %26
  %234 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i64 @device_may_wakeup(i32*) #2

declare dso_local i32 @pm_stay_awake(i32*) #2

declare dso_local i32 @zforce_read_packet(%struct.zforce_ts*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @pm_wakeup_event(i32*, i32) #2

declare dso_local i32 @zforce_touch_event(%struct.zforce_ts*, i32*) #2

declare dso_local i32 @zforce_complete(%struct.zforce_ts*, i32, i32) #2

declare dso_local i64 @gpiod_get_value_cansleep(i32) #2

declare dso_local i32 @pm_relax(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
