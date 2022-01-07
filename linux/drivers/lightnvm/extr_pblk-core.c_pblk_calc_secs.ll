; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_calc_secs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_calc_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_calc_secs(%struct.pblk* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pblk*, %struct.pblk** %5, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.pblk*, %struct.pblk** %5, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load %struct.pblk*, %struct.pblk** %5, align 8
  %22 = getelementptr inbounds %struct.pblk, %struct.pblk* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pblk*, %struct.pblk** %5, align 8
  %25 = getelementptr inbounds %struct.pblk, %struct.pblk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.pblk*, %struct.pblk** %5, align 8
  %30 = getelementptr inbounds %struct.pblk, %struct.pblk* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %20, %4
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %11, align 4
  br label %60

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %40, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %47, %49
  %51 = mul i64 %46, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  br label %59

53:                                               ; preds = %39
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %53
  br label %59

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
