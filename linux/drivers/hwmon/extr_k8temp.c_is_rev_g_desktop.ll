; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_k8temp.c_is_rev_g_desktop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_k8temp.c_is_rev_g_desktop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_rev_g_desktop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rev_g_desktop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 105
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 193
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 108
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 124
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %8
  store i32 0, i32* %2, align 4
  br label %49

18:                                               ; preds = %14
  %19 = call i32 @cpuid_ebx(i32 -2147483647)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 9
  %22 = and i32 %21, 31
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 111
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 127
  br i1 %27, label %28, label %38

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31, %28
  store i32 0, i32* %2, align 4
  br label %49

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 107
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 11
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 12
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %44, %38
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %37, %17, %7
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @cpuid_ebx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
