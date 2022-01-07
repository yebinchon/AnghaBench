; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_inorder_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_inorder_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @inorder_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inorder_next(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = mul i32 %5, 2
  %7 = add i32 %6, 1
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = mul i32 %11, 2
  %13 = add i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %19, %10
  %15 = load i32, i32* %3, align 4
  %16 = mul i32 %15, 2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = mul i32 %20, 2
  store i32 %21, i32* %3, align 4
  br label %14

22:                                               ; preds = %14
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ffz(i32 %24)
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %3, align 4
  %28 = lshr i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ffz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
