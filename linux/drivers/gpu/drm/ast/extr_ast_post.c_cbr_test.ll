; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbr_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*)* @cbr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbr_test(%struct.ast_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  %6 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %7 = call i32 @mmc_test_single2(%struct.ast_private* %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 255
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 65280
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %47

16:                                               ; preds = %11, %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mmc_test_burst2(%struct.ast_private* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 255
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 65280
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %47

32:                                               ; preds = %27, %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 3, i32* %2, align 4
  br label %47

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 255
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 2, i32* %2, align 4
  br label %47

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44, %39, %31, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @mmc_test_single2(%struct.ast_private*, i32) #1

declare dso_local i32 @mmc_test_burst2(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
