; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbr_test_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbr_test_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*)* @cbr_test_2500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbr_test_2500(%struct.ast_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ast_private*, align 8
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  %4 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %5 = call i32 @ast_moutdwm(%struct.ast_private* %4, i32 510525556, i32 65535)
  %6 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %7 = call i32 @ast_moutdwm(%struct.ast_private* %6, i32 510525564, i32 -16711936)
  %8 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %9 = call i32 @mmc_test_burst(%struct.ast_private* %8, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %14 = call i32 @mmc_test_single_2500(%struct.ast_private* %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %18

17:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @mmc_test_burst(%struct.ast_private*, i32) #1

declare dso_local i32 @mmc_test_single_2500(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
