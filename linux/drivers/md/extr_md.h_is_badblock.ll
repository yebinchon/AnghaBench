; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.h_is_badblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.h_is_badblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i64, i32, i64*, i32*)* @is_badblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_badblock(%struct.md_rdev* %0, i64 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %5
  %20 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 1
  %22 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i64*, i64** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @badblocks_check(%struct.TYPE_2__* %21, i64 %26, i32 %27, i64* %28, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %35 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %36
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %33, %19
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @badblocks_check(%struct.TYPE_2__*, i64, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
