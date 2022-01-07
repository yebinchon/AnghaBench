; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_check_dram_size_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_check_dram_size_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, i32)* @check_dram_size_2500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_dram_size_2500(%struct.ast_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %8 = call i32 @ast_mindwm(%struct.ast_private* %7, i32 510525444)
  %9 = and i32 %8, -4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %11 = call i32 @ast_mindwm(%struct.ast_private* %10, i32 510525460)
  %12 = and i32 %11, -256
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %14 = call i32 @ast_moutdwm(%struct.ast_private* %13, i32 -1609564160, i32 1094861636)
  %15 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %16 = call i32 @ast_moutdwm(%struct.ast_private* %15, i32 -1877999616, i32 892745528)
  %17 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %18 = call i32 @ast_moutdwm(%struct.ast_private* %17, i32 -2012217344, i32 690629420)
  %19 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %20 = call i32 @ast_moutdwm(%struct.ast_private* %19, i32 -2146435072, i32 488513296)
  %21 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %22 = call i32 @ast_mindwm(%struct.ast_private* %21, i32 -1609564160)
  %23 = icmp eq i32 %22, 1094861636
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, 3
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 24
  %29 = and i32 %28, 255
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %63

32:                                               ; preds = %2
  %33 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %34 = call i32 @ast_mindwm(%struct.ast_private* %33, i32 -1877999616)
  %35 = icmp eq i32 %34, 892745528
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %62

44:                                               ; preds = %32
  %45 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %46 = call i32 @ast_mindwm(%struct.ast_private* %45, i32 -2012217344)
  %47 = icmp eq i32 %46, 690629420
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %61

56:                                               ; preds = %44
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 255
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %36
  br label %63

63:                                               ; preds = %62, %24
  %64 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ast_moutdwm(%struct.ast_private* %64, i32 510525444, i32 %65)
  %67 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ast_moutdwm(%struct.ast_private* %67, i32 510525460, i32 %68)
  ret void
}

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
