; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_slider_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_slider_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i16, i16, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ad714x_slider_drv* }
%struct.ad714x_slider_drv = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ad714x_slider_plat* }
%struct.ad714x_slider_plat = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"slider %d touched\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"slider %d released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32)* @ad714x_slider_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_slider_state_machine(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_slider_plat*, align 8
  %6 = alloca %struct.ad714x_slider_drv*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %11 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ad714x_slider_plat, %struct.ad714x_slider_plat* %14, i64 %16
  store %struct.ad714x_slider_plat* %17, %struct.ad714x_slider_plat** %5, align 8
  %18 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %19 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %22, i64 %24
  store %struct.ad714x_slider_drv* %25, %struct.ad714x_slider_drv** %6, align 8
  %26 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %5, align 8
  %27 = getelementptr inbounds %struct.ad714x_slider_plat, %struct.ad714x_slider_plat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %5, align 8
  %33 = getelementptr inbounds %struct.ad714x_slider_plat, %struct.ad714x_slider_plat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = sub nsw i32 %31, %36
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %9, align 2
  %39 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %40 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %39, i32 0, i32 0
  %41 = load i16, i16* %40, align 8
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %9, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %7, align 2
  %47 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %48 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %47, i32 0, i32 1
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %9, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %8, align 2
  %55 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %56 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %154 [
    i32 129, label %58
    i32 128, label %73
    i32 130, label %97
  ]

58:                                               ; preds = %2
  %59 = load i16, i16* %7, align 2
  %60 = icmp ne i16 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %63 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %62, i32 0, i32 0
  store i32 128, i32* %63, align 4
  %64 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ad714x_slider_use_com_int(%struct.ad714x_chip* %64, i32 %65)
  %67 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %68 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %61, %58
  br label %155

73:                                               ; preds = %2
  %74 = load i16, i16* %8, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* %9, align 2
  %77 = zext i16 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @ad714x_slider_cal_sensor_val(%struct.ad714x_chip* %80, i32 %81)
  %83 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ad714x_slider_cal_highest_stage(%struct.ad714x_chip* %83, i32 %84)
  %86 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @ad714x_slider_cal_abs_pos(%struct.ad714x_chip* %86, i32 %87)
  %89 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %90 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %93 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %95 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %94, i32 0, i32 0
  store i32 130, i32* %95, align 4
  br label %96

96:                                               ; preds = %79, %73
  br label %155

97:                                               ; preds = %2
  %98 = load i16, i16* %8, align 2
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* %9, align 2
  %101 = zext i16 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %153

103:                                              ; preds = %97
  %104 = load i16, i16* %7, align 2
  %105 = icmp ne i16 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @ad714x_slider_cal_sensor_val(%struct.ad714x_chip* %107, i32 %108)
  %110 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @ad714x_slider_cal_highest_stage(%struct.ad714x_chip* %110, i32 %111)
  %113 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @ad714x_slider_cal_abs_pos(%struct.ad714x_chip* %113, i32 %114)
  %116 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @ad714x_slider_cal_flt_pos(%struct.ad714x_chip* %116, i32 %117)
  %119 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %120 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ABS_X, align 4
  %123 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %124 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @input_report_abs(i32 %121, i32 %122, i32 %125)
  %127 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %128 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BTN_TOUCH, align 4
  %131 = call i32 @input_report_key(i32 %129, i32 %130, i32 1)
  br label %148

132:                                              ; preds = %103
  %133 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @ad714x_slider_use_thr_int(%struct.ad714x_chip* %133, i32 %134)
  %136 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %137 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %136, i32 0, i32 0
  store i32 129, i32* %137, align 4
  %138 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %139 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @BTN_TOUCH, align 4
  %142 = call i32 @input_report_key(i32 %140, i32 %141, i32 0)
  %143 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %144 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @dev_dbg(i32 %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %132, %106
  %149 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %150 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @input_sync(i32 %151)
  br label %153

153:                                              ; preds = %148, %97
  br label %155

154:                                              ; preds = %2
  br label %155

155:                                              ; preds = %154, %153, %96, %72
  ret void
}

declare dso_local i32 @ad714x_slider_use_com_int(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ad714x_slider_cal_sensor_val(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @ad714x_slider_cal_highest_stage(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @ad714x_slider_cal_abs_pos(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @ad714x_slider_cal_flt_pos(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @ad714x_slider_use_thr_int(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
