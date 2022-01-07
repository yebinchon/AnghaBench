; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_align_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_align_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @edac_align_ptr(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = mul i32 %13, %14
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = zext i32 %15 to i64
  %19 = getelementptr i8, i8* %17, i64 %18
  store i8* %19, i8** %16, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 8, i32* %8, align 4
  br label %44

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 8, i32* %8, align 4
  br label %43

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ugt i64 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 4, i32* %8, align 4
  br label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ugt i64 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 2, i32* %8, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %4, align 8
  br label %72

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %33
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i8**, i8*** %5, align 8
  %46 = ptrtoint i8** %45 to i64
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = urem i64 %46, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %4, align 8
  br label %72

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub i32 %56, %57
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = zext i32 %58 to i64
  %62 = getelementptr i8, i8* %60, i64 %61
  store i8* %62, i8** %59, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = sub i64 %67, %69
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %55, %53, %39
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
