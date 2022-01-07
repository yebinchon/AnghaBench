; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_powerctrl_1_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_powerctrl_1_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @powerctrl_1_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powerctrl_1_shift(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 -4, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 23
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 26
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %9, %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %31 [
    i32 6817056, label %19
    i32 6817032, label %22
    i32 6817028, label %25
    i32 6817024, label %28
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %17, %19
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %17, %22
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %17, %25
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 4
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 50
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 53
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 54
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 64
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40, %37, %34
  store i32 -4, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %43, %31
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
