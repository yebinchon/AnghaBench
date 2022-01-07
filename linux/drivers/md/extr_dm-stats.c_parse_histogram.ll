; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_parse_histogram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_parse_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64**)* @parse_histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_histogram(i8* %0, i32* %1, i64** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64** %2, i64*** %7, align 8
  %14 = load i32*, i32** %6, align 8
  store i32 1, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %30, %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 44
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  br label %16

33:                                               ; preds = %16
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64* @kmalloc_array(i32 %35, i32 8, i32 %36)
  %38 = load i64**, i64*** %7, align 8
  store i64* %37, i64** %38, align 8
  %39 = load i64**, i64*** %7, align 8
  %40 = load i64*, i64** %39, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %85

45:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %45, %79
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @sscanf(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %11, i8* %13)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i8, i8* %13, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 44
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %85

61:                                               ; preds = %54, %51
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %85

68:                                               ; preds = %61
  %69 = load i64, i64* %11, align 8
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64**, i64*** %7, align 8
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %70, i64* %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %85

79:                                               ; preds = %68
  %80 = load i8*, i8** %5, align 8
  %81 = call i8* @strchr(i8* %80, i8 signext 44)
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %46

85:                                               ; preds = %78, %65, %58, %42
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
