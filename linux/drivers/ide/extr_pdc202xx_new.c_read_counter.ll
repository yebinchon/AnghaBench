; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_new.c_read_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_new.c_read_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"cnt0[%02X] cnt1[%02X] cnt2[%02X] cnt3[%02X]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @read_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_counter(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %2, align 8
  %14 = add nsw i64 %13, 8
  store i64 %14, i64* %4, align 8
  store i64 0, i64* %9, align 8
  store i32 3, i32* %11, align 4
  br label %15

15:                                               ; preds = %68, %1
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @outb(i32 32, i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %20, 3
  %22 = call i32 @inb(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i64, i64* %3, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @outb(i32 33, i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, 3
  %28 = call i32 @inb(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @outb(i32 32, i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 3
  %34 = call i32 @inb(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @outb(i32 33, i64 %36)
  %38 = load i64, i64* %4, align 8
  %39 = add nsw i64 %38, 3
  %40 = call i32 @inb(i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 23
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 15
  %45 = or i32 %42, %44
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %45, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %48, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %15
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = xor i64 %57, %58
  %60 = and i64 %59, 1073709056
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp slt i64 %63, %64
  br label %66

66:                                               ; preds = %62, %56
  %67 = phi i1 [ true, %56 ], [ %65, %62 ]
  br label %68

68:                                               ; preds = %66, %52
  %69 = phi i1 [ false, %52 ], [ %67, %66 ]
  br i1 %69, label %15, label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i64, i64* %9, align 8
  ret i64 %76
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
