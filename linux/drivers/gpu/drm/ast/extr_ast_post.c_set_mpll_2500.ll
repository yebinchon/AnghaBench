; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_set_mpll_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_set_mpll_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*)* @set_mpll_2500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mpll_2500(%struct.ast_private* %0) #0 {
  %2 = alloca %struct.ast_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %2, align 8
  %6 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %7 = call i32 @ast_moutdwm(%struct.ast_private* %6, i32 510525440, i32 -60816631)
  %8 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %9 = call i32 @ast_moutdwm(%struct.ast_private* %8, i32 510525492, i32 131200)
  store i32 510525444, i32* %3, align 4
  br label %10

10:                                               ; preds = %13, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 510525584
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ast_moutdwm(%struct.ast_private* %14, i32 %15, i32 0)
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %3, align 4
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %21 = call i32 @ast_moutdwm(%struct.ast_private* %20, i32 510525492, i32 131072)
  %22 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %23 = call i32 @ast_moutdwm(%struct.ast_private* %22, i32 510533632, i32 378054824)
  %24 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %25 = call i32 @ast_mindwm(%struct.ast_private* %24, i32 510533744)
  %26 = and i32 %25, 8388608
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  store i32 -1828707360, i32* %5, align 4
  %30 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %31 = call i32 @ast_moutdwm(%struct.ast_private* %30, i32 510533984, i32 70432)
  br label %33

32:                                               ; preds = %19
  store i32 -1828707328, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ast_moutdwm(%struct.ast_private* %34, i32 510533664, i32 %35)
  %37 = call i32 @udelay(i32 100)
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
