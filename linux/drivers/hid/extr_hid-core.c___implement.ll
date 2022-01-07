; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c___implement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c___implement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @__implement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__implement(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = udiv i32 %13, 8
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = urem i32 %15, 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sub i32 8, %17
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %24, %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 255, %25
  %27 = xor i32 %26, -1
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 %34, %35
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = lshr i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  store i32 8, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 1, %55
  %57 = sub i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 %68, %69
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %54, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
