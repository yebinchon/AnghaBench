; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_print_mcu_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_print_mcu_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"[SSP]: MSG From MCU-invalid debug length(%d/%d)\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"[SSP]: MSG From MCU - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @ssp_print_mcu_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssp_print_mcu_debug(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %9, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %18, %20
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i8*, ...) @ssp_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EPROTO, align 4
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %33, %32 ], [ %36, %34 ]
  store i32 %38, i32* %4, align 4
  br label %50

39:                                               ; preds = %23
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = call i32 (i8*, ...) @ssp_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %46
  store i32 %49, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %39, %37
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ssp_dbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
