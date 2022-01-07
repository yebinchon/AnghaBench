; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_init_cntr_names.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_init_cntr_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32*, i8***)* @init_cntr_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cntr_names(i8* %0, i64 %1, i32 %2, i32* %3, i8*** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8***, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8*** %4, i8**** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %34, %5
  %18 = load i32, i32* %15, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kmalloc(i32 %45, i32 %46)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %37
  %51 = load i32*, i32** %10, align 8
  store i32 0, i32* %51, align 4
  %52 = load i8***, i8**** %11, align 8
  store i8** null, i8*** %52, align 8
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %92

55:                                               ; preds = %37
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @memcpy(i8* %63, i8* %64, i64 %65)
  %67 = load i8*, i8** %12, align 8
  %68 = bitcast i8* %67 to i8**
  store i8** %68, i8*** %14, align 8
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %83, %55
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i8*, i8** %13, align 8
  %75 = load i8**, i8*** %14, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %74, i8** %78, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 10)
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %13, align 8
  store i8 0, i8* %81, align 1
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %69

86:                                               ; preds = %69
  %87 = load i32, i32* %16, align 4
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i8*, i8** %12, align 8
  %90 = bitcast i8* %89 to i8**
  %91 = load i8***, i8**** %11, align 8
  store i8** %90, i8*** %91, align 8
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %86, %50
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
