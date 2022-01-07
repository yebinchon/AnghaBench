; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_mmctestburst2_ast2150.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_mmctestburst2_ast2150.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@TIMEOUT_AST2150 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*, i32)* @mmctestburst2_ast2150 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmctestburst2_ast2150(%struct.ast_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ast_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %9 = call i32 @ast_moutdwm(%struct.ast_private* %8, i32 510525552, i32 0)
  %10 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 3
  %13 = or i32 1, %12
  %14 = call i32 @ast_moutdwm(%struct.ast_private* %10, i32 510525552, i32 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %17 = call i32 @ast_mindwm(%struct.ast_private* %16, i32 510525552)
  %18 = and i32 %17, 64
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @TIMEOUT_AST2150, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %25 = call i32 @ast_moutdwm(%struct.ast_private* %24, i32 510525552, i32 0)
  store i32 -1, i32* %3, align 4
  br label %63

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %15, label %31

31:                                               ; preds = %27
  %32 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %33 = call i32 @ast_moutdwm(%struct.ast_private* %32, i32 510525552, i32 0)
  %34 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 3
  %37 = or i32 3, %36
  %38 = call i32 @ast_moutdwm(%struct.ast_private* %34, i32 510525552, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %51, %31
  %40 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %41 = call i32 @ast_mindwm(%struct.ast_private* %40, i32 510525552)
  %42 = and i32 %41, 64
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @TIMEOUT_AST2150, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %49 = call i32 @ast_moutdwm(%struct.ast_private* %48, i32 510525552, i32 0)
  store i32 -1, i32* %3, align 4
  br label %63

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %39, label %55

55:                                               ; preds = %51
  %56 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %57 = call i32 @ast_mindwm(%struct.ast_private* %56, i32 510525552)
  %58 = and i32 %57, 128
  %59 = ashr i32 %58, 7
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %61 = call i32 @ast_moutdwm(%struct.ast_private* %60, i32 510525552, i32 0)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %47, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
