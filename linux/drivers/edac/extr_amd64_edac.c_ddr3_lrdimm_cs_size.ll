; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_ddr3_lrdimm_cs_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_ddr3_lrdimm_cs_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ddr3_lrdimm_cs_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddr3_lrdimm_cs_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 -1, i32* %6, align 4
  br label %30

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 12
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 7, i32* %5, align 4
  br label %29

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  %27 = lshr i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %28, %16
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 128, %35
  %37 = mul i32 %34, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
