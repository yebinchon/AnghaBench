; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_touchpad_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_touchpad_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i16, i16, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ad714x_touchpad_drv* }
%struct.ad714x_touchpad_drv = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ad714x_touchpad_plat* }
%struct.ad714x_touchpad_plat = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"touchpad %d touched\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"touchpad%d, 2 fingers or endpoint\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"touchpad %d released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32)* @ad714x_touchpad_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_touchpad_state_machine(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_touchpad_plat*, align 8
  %6 = alloca %struct.ad714x_touchpad_drv*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %11 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %14, i64 %16
  store %struct.ad714x_touchpad_plat* %17, %struct.ad714x_touchpad_plat** %5, align 8
  %18 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %19 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %22, i64 %24
  store %struct.ad714x_touchpad_drv* %25, %struct.ad714x_touchpad_drv** %6, align 8
  %26 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %27 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %33 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = sub nsw i32 %31, %36
  %38 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %39 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %45 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = sub nsw i32 %47, 1
  %49 = sub nsw i32 %43, %48
  %50 = add nsw i32 %37, %49
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %9, align 2
  %52 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %53 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %52, i32 0, i32 0
  %54 = load i16, i16* %53, align 8
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* %9, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %55, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %7, align 2
  %60 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %61 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %60, i32 0, i32 1
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %63, %65
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %8, align 2
  %68 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %69 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %207 [
    i32 129, label %71
    i32 128, label %86
    i32 130, label %131
  ]

71:                                               ; preds = %2
  %72 = load i16, i16* %7, align 2
  %73 = icmp ne i16 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %76 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %75, i32 0, i32 0
  store i32 128, i32* %76, align 4
  %77 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @touchpad_use_com_int(%struct.ad714x_chip* %77, i32 %78)
  %80 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %81 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %74, %71
  br label %208

86:                                               ; preds = %2
  %87 = load i16, i16* %8, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* %9, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %130

92:                                               ; preds = %86
  %93 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @touchpad_cal_sensor_val(%struct.ad714x_chip* %93, i32 %94)
  %96 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @touchpad_cal_highest_stage(%struct.ad714x_chip* %96, i32 %97)
  %99 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @touchpad_check_second_peak(%struct.ad714x_chip* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %92
  %104 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @touchpad_check_endpoint(%struct.ad714x_chip* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %129, label %108

108:                                              ; preds = %103
  %109 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %110 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @touchpad_cal_abs_pos(%struct.ad714x_chip* %114, i32 %115)
  %117 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %118 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %121 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %123 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %126 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %128 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %127, i32 0, i32 0
  store i32 130, i32* %128, align 4
  br label %129

129:                                              ; preds = %108, %103, %92
  br label %130

130:                                              ; preds = %129, %86
  br label %208

131:                                              ; preds = %2
  %132 = load i16, i16* %8, align 2
  %133 = zext i16 %132 to i32
  %134 = load i16, i16* %9, align 2
  %135 = zext i16 %134 to i32
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %206

137:                                              ; preds = %131
  %138 = load i16, i16* %7, align 2
  %139 = icmp ne i16 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %137
  %141 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @touchpad_cal_sensor_val(%struct.ad714x_chip* %141, i32 %142)
  %144 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @touchpad_cal_highest_stage(%struct.ad714x_chip* %144, i32 %145)
  %147 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @touchpad_check_second_peak(%struct.ad714x_chip* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %184, label %151

151:                                              ; preds = %140
  %152 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @touchpad_check_endpoint(%struct.ad714x_chip* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %184, label %156

156:                                              ; preds = %151
  %157 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @touchpad_cal_abs_pos(%struct.ad714x_chip* %157, i32 %158)
  %160 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @touchpad_cal_flt_pos(%struct.ad714x_chip* %160, i32 %161)
  %163 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %164 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ABS_X, align 4
  %167 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %168 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @input_report_abs(i32 %165, i32 %166, i32 %169)
  %171 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %172 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ABS_Y, align 4
  %175 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %176 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @input_report_abs(i32 %173, i32 %174, i32 %177)
  %179 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %180 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @BTN_TOUCH, align 4
  %183 = call i32 @input_report_key(i32 %181, i32 %182, i32 1)
  br label %184

184:                                              ; preds = %156, %151, %140
  br label %201

185:                                              ; preds = %137
  %186 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @touchpad_use_thr_int(%struct.ad714x_chip* %186, i32 %187)
  %189 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %190 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %189, i32 0, i32 0
  store i32 129, i32* %190, align 4
  %191 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %192 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @BTN_TOUCH, align 4
  %195 = call i32 @input_report_key(i32 %193, i32 %194, i32 0)
  %196 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %197 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @dev_dbg(i32 %198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %185, %184
  %202 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %203 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @input_sync(i32 %204)
  br label %206

206:                                              ; preds = %201, %131
  br label %208

207:                                              ; preds = %2
  br label %208

208:                                              ; preds = %207, %206, %130, %85
  ret void
}

declare dso_local i32 @touchpad_use_com_int(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @touchpad_cal_sensor_val(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @touchpad_cal_highest_stage(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @touchpad_check_second_peak(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @touchpad_check_endpoint(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @touchpad_cal_abs_pos(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @touchpad_cal_flt_pos(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @touchpad_use_thr_int(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
