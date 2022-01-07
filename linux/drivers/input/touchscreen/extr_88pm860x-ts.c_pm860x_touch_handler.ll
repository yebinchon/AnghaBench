; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_88pm860x-ts.c_pm860x_touch_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_88pm860x-ts.c_pm860x_touch_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_touch = type { i32, i32, i32, %struct.pm860x_chip* }
%struct.pm860x_chip = type { i32 }

@MEAS_LEN = common dso_local global i32 0, align 4
@MEAS_TSIX_1 = common dso_local global i32 0, align 4
@ACCURATE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"z1:%d, z2:%d, rt:%d\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"pen down at [%d, %d].\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pen release\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm860x_touch_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_touch_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pm860x_touch*, align 8
  %6 = alloca %struct.pm860x_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.pm860x_touch*
  store %struct.pm860x_touch* %17, %struct.pm860x_touch** %5, align 8
  %18 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %19 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %18, i32 0, i32 3
  %20 = load %struct.pm860x_chip*, %struct.pm860x_chip** %19, align 8
  store %struct.pm860x_chip* %20, %struct.pm860x_chip** %6, align 8
  %21 = load i32, i32* @MEAS_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %26 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MEAS_TSIX_1, align 4
  %29 = load i32, i32* @MEAS_LEN, align 4
  %30 = call i32 @pm860x_bulk_read(i32 %27, i32 %28, i32 %29, i8* %24)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %163

34:                                               ; preds = %2
  %35 = getelementptr inbounds i8, i8* %24, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 64
  store i32 %38, i32* %11, align 4
  %39 = getelementptr inbounds i8, i8* %24, i64 0
  %40 = load i8, i8* %39, align 16
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 255
  %43 = shl i32 %42, 4
  %44 = getelementptr inbounds i8, i8* %24, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 15
  %48 = or i32 %43, %47
  store i32 %48, i32* %9, align 4
  %49 = getelementptr inbounds i8, i8* %24, i64 2
  %50 = load i8, i8* %49, align 2
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 255
  %53 = shl i32 %52, 4
  %54 = getelementptr inbounds i8, i8* %24, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = or i32 %53, %57
  store i32 %58, i32* %10, align 4
  %59 = getelementptr inbounds i8, i8* %24, i64 4
  %60 = load i8, i8* %59, align 4
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 255
  %63 = shl i32 %62, 4
  %64 = getelementptr inbounds i8, i8* %24, i64 5
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 15
  %68 = or i32 %63, %67
  store i32 %68, i32* %12, align 4
  %69 = getelementptr inbounds i8, i8* %24, i64 6
  %70 = load i8, i8* %69, align 2
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 255
  %73 = shl i32 %72, 4
  %74 = getelementptr inbounds i8, i8* %24, i64 7
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 15
  %78 = or i32 %73, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %143

81:                                               ; preds = %34
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  %88 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %89 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sdiv i32 %93, %94
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %99 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* @ACCURATE_BIT, align 4
  %105 = ashr i32 %103, %104
  store i32 %105, i32* %14, align 4
  %106 = load %struct.pm860x_chip*, %struct.pm860x_chip** %6, align 8
  %107 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 (i32, i8*, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %92, %87, %84, %81
  %114 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %115 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ABS_X, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @input_report_abs(i32 %116, i32 %117, i32 %118)
  %120 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %121 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ABS_Y, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @input_report_abs(i32 %122, i32 %123, i32 %124)
  %126 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %127 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ABS_PRESSURE, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @input_report_abs(i32 %128, i32 %129, i32 %130)
  %132 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %133 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BTN_TOUCH, align 4
  %136 = call i32 @input_report_key(i32 %134, i32 %135, i32 1)
  %137 = load %struct.pm860x_chip*, %struct.pm860x_chip** %6, align 8
  %138 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (i32, i8*, ...) @dev_dbg(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %141)
  br label %158

143:                                              ; preds = %34
  %144 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %145 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ABS_PRESSURE, align 4
  %148 = call i32 @input_report_abs(i32 %146, i32 %147, i32 0)
  %149 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %150 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @BTN_TOUCH, align 4
  %153 = call i32 @input_report_key(i32 %151, i32 %152, i32 0)
  %154 = load %struct.pm860x_chip*, %struct.pm860x_chip** %6, align 8
  %155 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @dev_dbg(i32 %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %143, %113
  %159 = load %struct.pm860x_touch*, %struct.pm860x_touch** %5, align 8
  %160 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @input_sync(i32 %161)
  br label %163

163:                                              ; preds = %158, %33
  %164 = load i32, i32* @IRQ_HANDLED, align 4
  %165 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %165)
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pm860x_bulk_read(i32, i32, i32, i8*) #2

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @input_report_abs(i32, i32, i32) #2

declare dso_local i32 @input_report_key(i32, i32, i32) #2

declare dso_local i32 @input_sync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
