; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_variable_matches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_variable_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i32*)* @variable_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @variable_matches(i8* %0, i64 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %48, %4
  %13 = load i8*, i8** %8, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %10, align 1
  %19 = load i8, i8* %10, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %29 [
    i32 42, label %21
    i32 0, label %22
  ]

21:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %52

22:                                               ; preds = %12
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %12
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i8, i8* %10, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8*, i8** %6, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %48

47:                                               ; preds = %35, %29
  store i32 0, i32* %5, align 4
  br label %52

48:                                               ; preds = %46
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %12

52:                                               ; preds = %47, %22, %21
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
