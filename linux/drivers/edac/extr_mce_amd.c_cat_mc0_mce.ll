; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mce_amd.c_cat_mc0_mce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mce_amd.c_cat_mc0_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TT_DATA = common dso_local global i64 0, align 8
@LL_L1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Data/Tag parity error due to %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"load/hw prf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Copyback parity error on a tag miss.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Tag parity error during snoop.\0A\00", align 1
@II_MEM = common dso_local global i64 0, align 8
@II_IO = common dso_local global i64 0, align 8
@LL_LG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"System read data error on a \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"TLB reload.\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"store.\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"load.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cat_mc0_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cat_mc0_mce(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @R4(i32 %8)
  store i32 %9, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @MEM_ERROR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @TT(i32 %14)
  %16 = load i64, i64* @TT_DATA, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @LL(i32 %19)
  %21 = load i64, i64* @LL_L1, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13
  store i32 0, i32* %3, align 4
  br label %73

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %36 [
    i32 132, label %26
    i32 131, label %26
    i32 130, label %32
    i32 128, label %34
  ]

26:                                               ; preds = %24, %24
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 132
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %37

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %37

34:                                               ; preds = %24
  %35 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %34, %32, %26
  br label %71

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @BUS_ERROR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @II(i32 %43)
  %45 = load i64, i64* @II_MEM, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @II(i32 %48)
  %50 = load i64, i64* @II_IO, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @LL(i32 %53)
  %55 = load i64, i64* @LL_LG, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  store i32 0, i32* %3, align 4
  br label %73

58:                                               ; preds = %52
  %59 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %67 [
    i32 129, label %61
    i32 131, label %63
    i32 132, label %65
  ]

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %68

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %68

65:                                               ; preds = %58
  %66 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %68

67:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %65, %63, %61
  br label %70

69:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %57, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @R4(i32) #1

declare dso_local i64 @MEM_ERROR(i32) #1

declare dso_local i64 @TT(i32) #1

declare dso_local i64 @LL(i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i64 @BUS_ERROR(i32) #1

declare dso_local i64 @II(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
