; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_get_module_param_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_get_module_param_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @__dm_get_module_param_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dm_get_module_param_int(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %8, align 4
  br label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %8, align 4
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %22
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @cmpxchg(i32* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
