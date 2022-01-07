; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_mmc_test2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_mmc_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*, i32, i32)* @mmc_test2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test2(%struct.ast_private* %0, i32 %1, i32 %2) #0 {
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

18:                                               ; preds = %30, %3
  %19 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %20 = call i32 @ast_mindwm(%struct.ast_private* %19, i32 510525552)
  %21 = and i32 %20, 4096
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @TIMEOUT, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %28 = call i32 @ast_moutdwm(%struct.ast_private* %27, i32 510525552, i32 0)
  store i32 -1, i32* %4, align 4
  br label %45

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %18, label %34

34:                                               ; preds = %30
  %35 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %36 = call i32 @ast_mindwm(%struct.ast_private* %35, i32 510525560)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 16
  %40 = or i32 %37, %39
  %41 = and i32 %40, 65535
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %43 = call i32 @ast_moutdwm(%struct.ast_private* %42, i32 510525552, i32 0)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %34, %26
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
