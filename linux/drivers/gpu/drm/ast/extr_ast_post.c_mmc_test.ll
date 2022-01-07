; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_mmc_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_mmc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*, i32, i32)* @mmc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test(%struct.ast_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %11 = call i32 @ast_moutdwm(%struct.ast_private* %10, i32 510525552, i32 0)
  %12 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 3
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @ast_moutdwm(%struct.ast_private* %12, i32 510525552, i32 %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %35, %3
  %19 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %20 = call i32 @ast_mindwm(%struct.ast_private* %19, i32 510525552)
  %21 = and i32 %20, 12288
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %42

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @TIMEOUT, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %33 = call i32 @ast_moutdwm(%struct.ast_private* %32, i32 510525552, i32 0)
  store i32 0, i32* %4, align 4
  br label %42

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %18, label %39

39:                                               ; preds = %35
  %40 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %41 = call i32 @ast_moutdwm(%struct.ast_private* %40, i32 510525552, i32 0)
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %31, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
