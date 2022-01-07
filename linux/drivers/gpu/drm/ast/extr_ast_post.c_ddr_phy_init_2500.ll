; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr_phy_init_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr_phy_init_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*)* @ddr_phy_init_2500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddr_phy_init_2500(%struct.ast_private* %0) #0 {
  %2 = alloca %struct.ast_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ast_private* %0, %struct.ast_private** %2, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %7 = call i32 @ast_moutdwm(%struct.ast_private* %6, i32 510525536, i32 5)
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @TIMEOUT, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %19 = call i32 @ast_mindwm(%struct.ast_private* %18, i32 510525536)
  %20 = and i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %13

29:                                               ; preds = %24, %13
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @TIMEOUT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %35 = call i32 @ast_mindwm(%struct.ast_private* %34, i32 510526208)
  %36 = and i32 %35, 655360
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i64 1, i64* %4, align 8
  br label %41

41:                                               ; preds = %40, %33
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %47 = call i32 @ast_moutdwm(%struct.ast_private* %46, i32 510525536, i32 0)
  %48 = call i32 @udelay(i32 10)
  %49 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %50 = call i32 @ast_moutdwm(%struct.ast_private* %49, i32 510525536, i32 5)
  br label %51

51:                                               ; preds = %45, %42
  br label %8

52:                                               ; preds = %8
  %53 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %54 = call i32 @ast_moutdwm(%struct.ast_private* %53, i32 510525536, i32 6)
  ret void
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
