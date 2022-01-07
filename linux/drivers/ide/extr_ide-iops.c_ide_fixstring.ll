; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-iops.c_ide_fixstring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-iops.c_ide_fixstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_fixstring(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %26, %16
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = call i32 @be16_to_cpus(i32* %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %28, i8** %7, align 8
  br label %18

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %43, %30
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 32
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  br label %32

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %84, %46
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i1 [ false, %47 ], [ %55, %51 ]
  br i1 %57, label %58, label %85

58:                                               ; preds = %56
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 32
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i8*, i8** %4, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 32
  br i1 %77, label %78, label %84

78:                                               ; preds = %73, %58
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -1
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  store i8 %81, i8* %82, align 1
  br label %84

84:                                               ; preds = %78, %73, %68, %64
  br label %47

85:                                               ; preds = %56
  br label %86

86:                                               ; preds = %90, %85
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  store i8 0, i8* %91, align 1
  br label %86

93:                                               ; preds = %86
  ret void
}

declare dso_local i32 @be16_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
