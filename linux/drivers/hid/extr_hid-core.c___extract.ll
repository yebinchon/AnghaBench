; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c___extract.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c___extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @__extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__extract(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = udiv i32 %13, 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = urem i32 %15, 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub i32 8, %17
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = sub i32 %23, 1
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ -1, %25 ]
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %31, %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i64*, i64** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %9, align 4
  %39 = lshr i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %8, align 4
  store i32 8, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %53, %54
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
