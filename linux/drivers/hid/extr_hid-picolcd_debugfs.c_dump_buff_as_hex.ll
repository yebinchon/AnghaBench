; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_debugfs.c_dump_buff_as_hex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_debugfs.c_dump_buff_as_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hex_asc = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*, i64)* @dump_buff_as_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_buff_as_hex(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %61, %4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i1 [ false, %11 ], [ %21, %16 ]
  br i1 %23, label %24, label %64

24:                                               ; preds = %22
  %25 = load i8*, i8** @hex_asc, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 4
  %32 = and i32 %31, 15
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %25, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 %35, i8* %40, align 1
  %41 = load i8*, i8** @hex_asc, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %41, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 %50, i8* %55, align 1
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 32, i8* %60, align 1
  br label %61

61:                                               ; preds = %24
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %11

64:                                               ; preds = %22
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 10, i8* %76, align 1
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %8, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 2
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 46, i8* %90, align 1
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 46, i8* %95, align 1
  br label %96

96:                                               ; preds = %85, %82, %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
