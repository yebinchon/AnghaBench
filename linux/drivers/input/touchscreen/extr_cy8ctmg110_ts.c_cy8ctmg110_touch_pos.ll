; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cy8ctmg110_ts.c_cy8ctmg110_touch_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cy8ctmg110_ts.c_cy8ctmg110_touch_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cy8ctmg110 = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@CY8CTMG110_REG_MAX = common dso_local global i32 0, align 4
@CY8CTMG110_TOUCH_X1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cy8ctmg110*)* @cy8ctmg110_touch_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy8ctmg110_touch_pos(%struct.cy8ctmg110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cy8ctmg110*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cy8ctmg110* %0, %struct.cy8ctmg110** %3, align 8
  %10 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %11 = getelementptr inbounds %struct.cy8ctmg110, %struct.cy8ctmg110* %10, i32 0, i32 0
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load i32, i32* @CY8CTMG110_REG_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @CY8CTMG110_REG_MAX, align 4
  %18 = call i32 @memset(i8* %16, i32 0, i32 %17)
  %19 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %20 = load i32, i32* @CY8CTMG110_TOUCH_X1, align 4
  %21 = call i64 @cy8ctmg110_read_regs(%struct.cy8ctmg110* %19, i8* %16, i32 9, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %66

26:                                               ; preds = %1
  %27 = getelementptr inbounds i8, i8* %16, i64 2
  %28 = load i8, i8* %27, align 2
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = getelementptr inbounds i8, i8* %16, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = getelementptr inbounds i8, i8* %16, i64 0
  %36 = load i8, i8* %35, align 16
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = getelementptr inbounds i8, i8* %16, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, %41
  store i32 %42, i32* %7, align 4
  %43 = getelementptr inbounds i8, i8* %16, i64 8
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %49 = load i32, i32* @BTN_TOUCH, align 4
  %50 = call i32 @input_report_key(%struct.input_dev* %48, i32 %49, i32 0)
  br label %63

51:                                               ; preds = %26
  %52 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %53 = load i32, i32* @BTN_TOUCH, align 4
  %54 = call i32 @input_report_key(%struct.input_dev* %52, i32 %53, i32 1)
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = load i32, i32* @ABS_X, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @input_report_abs(%struct.input_dev* %55, i32 %56, i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %60 = load i32, i32* @ABS_Y, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @input_report_abs(%struct.input_dev* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %47
  %64 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %65 = call i32 @input_sync(%struct.input_dev* %64)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %23
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @cy8ctmg110_read_regs(%struct.cy8ctmg110*, i8*, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
