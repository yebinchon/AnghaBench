; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lkkbd.c_lkkbd_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lkkbd.c_lkkbd_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.lkkbd = type { %struct.serio*, %struct.input_dev*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { i32, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lkkbd_reinit = common dso_local global i32 0, align 4
@bell_volume = common dso_local global i32 0, align 4
@keyclick_volume = common dso_local global i32 0, align 4
@ctrlclick_volume = common dso_local global i32 0, align 4
@lkkbd_keycode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DEC LK keyboard\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_LKKBD = common dso_local global i32 0, align 4
@lkkbd_event = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@EV_SND = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@LED_SLEEP = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@SND_CLICK = common dso_local global i32 0, align 4
@LK_NUM_KEYCODES = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@LK_CMD_POWERCYCLE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @lkkbd_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lkkbd_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.lkkbd*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lkkbd* @kzalloc(i32 48, i32 %10)
  store %struct.lkkbd* %11, %struct.lkkbd** %6, align 8
  %12 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %12, %struct.input_dev** %7, align 8
  %13 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %14 = icmp ne %struct.lkkbd* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %17 = icmp ne %struct.input_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %209

21:                                               ; preds = %15
  %22 = load %struct.serio*, %struct.serio** %4, align 8
  %23 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %24 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %23, i32 0, i32 0
  store %struct.serio* %22, %struct.serio** %24, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %27 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %26, i32 0, i32 1
  store %struct.input_dev* %25, %struct.input_dev** %27, align 8
  %28 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %29 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %28, i32 0, i32 8
  %30 = load i32, i32* @lkkbd_reinit, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load i32, i32* @bell_volume, align 4
  %33 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %34 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @keyclick_volume, align 4
  %36 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %37 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ctrlclick_volume, align 4
  %39 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %40 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %42 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @lkkbd_keycode, align 4
  %45 = call i32 @memcpy(i32* %43, i32 %44, i32 8)
  %46 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %47 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strlcpy(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4)
  %50 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %51 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.serio*, %struct.serio** %4, align 8
  %54 = getelementptr inbounds %struct.serio, %struct.serio* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @snprintf(i32 %52, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %58 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 4
  %62 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %63 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @BUS_RS232, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @SERIO_LKKBD, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 256, i32* %80, align 8
  %81 = load %struct.serio*, %struct.serio** %4, align 8
  %82 = getelementptr inbounds %struct.serio, %struct.serio* %81, i32 0, i32 1
  %83 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32* %82, i32** %85, align 8
  %86 = load i32, i32* @lkkbd_event, align 4
  %87 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %90 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %91 = call i32 @input_set_drvdata(%struct.input_dev* %89, %struct.lkkbd* %90)
  %92 = load i32, i32* @EV_KEY, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @__set_bit(i32 %92, i32 %95)
  %97 = load i32, i32* @EV_LED, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @__set_bit(i32 %97, i32 %100)
  %102 = load i32, i32* @EV_SND, align 4
  %103 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %104 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__set_bit(i32 %102, i32 %105)
  %107 = load i32, i32* @EV_REP, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @__set_bit(i32 %107, i32 %110)
  %112 = load i32, i32* @LED_CAPSL, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @__set_bit(i32 %112, i32 %115)
  %117 = load i32, i32* @LED_SLEEP, align 4
  %118 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @__set_bit(i32 %117, i32 %120)
  %122 = load i32, i32* @LED_COMPOSE, align 4
  %123 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %124 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @__set_bit(i32 %122, i32 %125)
  %127 = load i32, i32* @LED_SCROLLL, align 4
  %128 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %129 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @__set_bit(i32 %127, i32 %130)
  %132 = load i32, i32* @SND_BELL, align 4
  %133 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @__set_bit(i32 %132, i32 %135)
  %137 = load i32, i32* @SND_CLICK, align 4
  %138 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @__set_bit(i32 %137, i32 %140)
  %142 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %143 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %146 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %145, i32 0, i32 3
  store i32* %144, i32** %146, align 8
  %147 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %148 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %147, i32 0, i32 0
  store i32 4, i32* %148, align 8
  %149 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %150 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @ARRAY_SIZE(i32* %151)
  %153 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %154 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %171, %21
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @LK_NUM_KEYCODES, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %155
  %160 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %161 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %168 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @__set_bit(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %159
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %155

174:                                              ; preds = %155
  %175 = load i32, i32* @KEY_RESERVED, align 4
  %176 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %177 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @__clear_bit(i32 %175, i32 %178)
  %180 = load %struct.serio*, %struct.serio** %4, align 8
  %181 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %182 = call i32 @serio_set_drvdata(%struct.serio* %180, %struct.lkkbd* %181)
  %183 = load %struct.serio*, %struct.serio** %4, align 8
  %184 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %185 = call i32 @serio_open(%struct.serio* %183, %struct.serio_driver* %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %174
  br label %206

189:                                              ; preds = %174
  %190 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %191 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %190, i32 0, i32 1
  %192 = load %struct.input_dev*, %struct.input_dev** %191, align 8
  %193 = call i32 @input_register_device(%struct.input_dev* %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %203

197:                                              ; preds = %189
  %198 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %199 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %198, i32 0, i32 0
  %200 = load %struct.serio*, %struct.serio** %199, align 8
  %201 = load i32, i32* @LK_CMD_POWERCYCLE_RESET, align 4
  %202 = call i32 @serio_write(%struct.serio* %200, i32 %201)
  store i32 0, i32* %3, align 4
  br label %215

203:                                              ; preds = %196
  %204 = load %struct.serio*, %struct.serio** %4, align 8
  %205 = call i32 @serio_close(%struct.serio* %204)
  br label %206

206:                                              ; preds = %203, %188
  %207 = load %struct.serio*, %struct.serio** %4, align 8
  %208 = call i32 @serio_set_drvdata(%struct.serio* %207, %struct.lkkbd* null)
  br label %209

209:                                              ; preds = %206, %18
  %210 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %211 = call i32 @input_free_device(%struct.input_dev* %210)
  %212 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %213 = call i32 @kfree(%struct.lkkbd* %212)
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %209, %197
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.lkkbd* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.lkkbd*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.lkkbd*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_write(%struct.serio*, i32) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.lkkbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
