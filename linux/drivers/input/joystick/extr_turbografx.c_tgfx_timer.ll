; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_turbografx.c_tgfx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_turbografx.c_tgfx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgfx = type { i32, i32, %struct.TYPE_2__*, %struct.input_dev** }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@TGFX_RIGHT = common dso_local global i32 0, align 4
@TGFX_LEFT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@TGFX_DOWN = common dso_local global i32 0, align 4
@TGFX_UP = common dso_local global i32 0, align 4
@BTN_TRIGGER = common dso_local global i32 0, align 4
@TGFX_TRIGGER = common dso_local global i32 0, align 4
@BTN_THUMB = common dso_local global i32 0, align 4
@TGFX_THUMB = common dso_local global i32 0, align 4
@BTN_THUMB2 = common dso_local global i32 0, align 4
@TGFX_THUMB2 = common dso_local global i32 0, align 4
@BTN_TOP = common dso_local global i32 0, align 4
@TGFX_TOP = common dso_local global i32 0, align 4
@BTN_TOP2 = common dso_local global i32 0, align 4
@TGFX_TOP2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TGFX_REFRESH_TIME = common dso_local global i64 0, align 8
@tgfx = common dso_local global %struct.tgfx* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tgfx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgfx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tgfx*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %9 = ptrtoint %struct.tgfx* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @timer, align 4
  %12 = call %struct.tgfx* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.tgfx* %12, %struct.tgfx** %3, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %124, %1
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 7
  br i1 %15, label %16, label %127

16:                                               ; preds = %13
  %17 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %18 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %123

24:                                               ; preds = %16
  %25 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %26 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %25, i32 0, i32 3
  %27 = load %struct.input_dev**, %struct.input_dev*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %27, i64 %29
  %31 = load %struct.input_dev*, %struct.input_dev** %30, align 8
  store %struct.input_dev* %31, %struct.input_dev** %4, align 8
  %32 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %33 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = call i32 @parport_write_data(i32 %36, i32 %39)
  %41 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %42 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @parport_read_status(i32 %45)
  %47 = xor i32 %46, 127
  store i32 %47, i32* %5, align 4
  %48 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %49 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @parport_read_control(i32 %52)
  %54 = xor i32 %53, 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = load i32, i32* @ABS_X, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @TGFX_RIGHT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @TGFX_LEFT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sub nsw i32 %63, %70
  %72 = call i32 @input_report_abs(%struct.input_dev* %55, i32 %56, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %74 = load i32, i32* @ABS_Y, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @TGFX_DOWN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @TGFX_UP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = sub nsw i32 %81, %88
  %90 = call i32 @input_report_abs(%struct.input_dev* %73, i32 %74, i32 %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %92 = load i32, i32* @BTN_TRIGGER, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @TGFX_TRIGGER, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @input_report_key(%struct.input_dev* %91, i32 %92, i32 %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %98 = load i32, i32* @BTN_THUMB, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @TGFX_THUMB, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @input_report_key(%struct.input_dev* %97, i32 %98, i32 %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %104 = load i32, i32* @BTN_THUMB2, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @TGFX_THUMB2, align 4
  %107 = and i32 %105, %106
  %108 = call i32 @input_report_key(%struct.input_dev* %103, i32 %104, i32 %107)
  %109 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %110 = load i32, i32* @BTN_TOP, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @TGFX_TOP, align 4
  %113 = and i32 %111, %112
  %114 = call i32 @input_report_key(%struct.input_dev* %109, i32 %110, i32 %113)
  %115 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %116 = load i32, i32* @BTN_TOP2, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @TGFX_TOP2, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @input_report_key(%struct.input_dev* %115, i32 %116, i32 %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %122 = call i32 @input_sync(%struct.input_dev* %121)
  br label %123

123:                                              ; preds = %24, %16
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %13

127:                                              ; preds = %13
  %128 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %129 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %128, i32 0, i32 1
  %130 = load i64, i64* @jiffies, align 8
  %131 = load i64, i64* @TGFX_REFRESH_TIME, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @mod_timer(i32* %129, i64 %132)
  ret void
}

declare dso_local %struct.tgfx* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @parport_write_data(i32, i32) #1

declare dso_local i32 @parport_read_status(i32) #1

declare dso_local i32 @parport_read_control(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
