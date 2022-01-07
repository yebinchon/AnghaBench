; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_1_allow_new_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_1_allow_new_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.bitmap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bitmap = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i64)* @super_1_allow_new_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_1_allow_new_offset(%struct.md_rdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bitmap*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %9 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp uge i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

13:                                               ; preds = %2
  %14 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %83

21:                                               ; preds = %13
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 72
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.bitmap*, %struct.bitmap** %34, align 8
  store %struct.bitmap* %35, %struct.bitmap** %6, align 8
  %36 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %37 = icmp ne %struct.bitmap* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %30
  %39 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %40 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %38
  %47 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %49, %55
  %57 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = ashr i32 %61, 9
  %63 = mul nsw i32 %60, %62
  %64 = add nsw i32 %56, %63
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %5, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %83

69:                                               ; preds = %46, %38, %30
  %70 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %71 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %75 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %73, %77
  %79 = load i64, i64* %5, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %83

82:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81, %68, %29, %20, %12
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
