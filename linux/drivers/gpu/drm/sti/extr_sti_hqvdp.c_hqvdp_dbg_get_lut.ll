; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_hqvdp_dbg_get_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_hqvdp_dbg_get_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@coef_lut_a_legacy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"LUT A\00", align 1
@coef_lut_b = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"LUT B\00", align 1
@coef_lut_c_y_legacy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"LUT C Y\00", align 1
@coef_lut_c_c_legacy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"LUT C C\00", align 1
@coef_lut_d_y_legacy = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"LUT D Y\00", align 1
@coef_lut_d_c_legacy = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"LUT D C\00", align 1
@coef_lut_e_y_legacy = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"LUT E Y\00", align 1
@coef_lut_e_c_legacy = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"LUT E C\00", align 1
@coef_lut_f_y_legacy = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"LUT F Y\00", align 1
@coef_lut_f_c_legacy = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"LUT F C\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @hqvdp_dbg_get_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hqvdp_dbg_get_lut(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* @coef_lut_a_legacy, align 4
  %6 = call i32 @memcmp(i32* %4, i32 %5, i32 16)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %64

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @coef_lut_b, align 4
  %12 = call i32 @memcmp(i32* %10, i32 %11, i32 16)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %64

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @coef_lut_c_y_legacy, align 4
  %18 = call i32 @memcmp(i32* %16, i32 %17, i32 16)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %64

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @coef_lut_c_c_legacy, align 4
  %24 = call i32 @memcmp(i32* %22, i32 %23, i32 16)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %64

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @coef_lut_d_y_legacy, align 4
  %30 = call i32 @memcmp(i32* %28, i32 %29, i32 16)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %64

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @coef_lut_d_c_legacy, align 4
  %36 = call i32 @memcmp(i32* %34, i32 %35, i32 16)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %64

39:                                               ; preds = %33
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @coef_lut_e_y_legacy, align 4
  %42 = call i32 @memcmp(i32* %40, i32 %41, i32 16)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %64

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @coef_lut_e_c_legacy, align 4
  %48 = call i32 @memcmp(i32* %46, i32 %47, i32 16)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %64

51:                                               ; preds = %45
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @coef_lut_f_y_legacy, align 4
  %54 = call i32 @memcmp(i32* %52, i32 %53, i32 16)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %64

57:                                               ; preds = %51
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @coef_lut_f_c_legacy, align 4
  %60 = call i32 @memcmp(i32* %58, i32 %59, i32 16)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %64

63:                                               ; preds = %57
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %64

64:                                               ; preds = %63, %62, %56, %50, %44, %38, %32, %26, %20, %14, %8
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

declare dso_local i32 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
