; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_dram_init_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_dram_init_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@ast2500_ddr4_1600_timing_table = common dso_local global i32 0, align 4
@ast2500_ddr3_1600_timing_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*)* @ast_dram_init_2500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_dram_init_2500(%struct.ast_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store i32 5, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %5, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %50

11:                                               ; preds = %6
  %12 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %13 = call i32 @set_mpll_2500(%struct.ast_private* %12)
  %14 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %15 = call i32 @reset_mmc_2500(%struct.ast_private* %14)
  %16 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %17 = call i32 @ddr_init_common_2500(%struct.ast_private* %16)
  %18 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %19 = call i32 @ast_mindwm(%struct.ast_private* %18, i32 510533744)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 16777216
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %25 = load i32, i32* @ast2500_ddr4_1600_timing_table, align 4
  %26 = call i32 @ddr4_init_2500(%struct.ast_private* %24, i32 %25)
  br label %31

27:                                               ; preds = %11
  %28 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %29 = load i32, i32* @ast2500_ddr3_1600_timing_table, align 4
  %30 = call i32 @ddr3_init_2500(%struct.ast_private* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %34 = call i32 @ddr_test_2500(%struct.ast_private* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %6, label %37

37:                                               ; preds = %32
  %38 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %39 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %40 = call i32 @ast_mindwm(%struct.ast_private* %39, i32 510533696)
  %41 = or i32 %40, 65
  %42 = call i32 @ast_moutdwm(%struct.ast_private* %38, i32 510533696, i32 %41)
  %43 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %44 = call i32 @ast_mindwm(%struct.ast_private* %43, i32 510533644)
  %45 = and i32 %44, -100663297
  store i32 %45, i32* %4, align 4
  %46 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, 268435456
  %49 = call i32 @ast_moutdwm(%struct.ast_private* %46, i32 510533644, i32 %48)
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %37, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @set_mpll_2500(%struct.ast_private*) #1

declare dso_local i32 @reset_mmc_2500(%struct.ast_private*) #1

declare dso_local i32 @ddr_init_common_2500(%struct.ast_private*) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i32 @ddr4_init_2500(%struct.ast_private*, i32) #1

declare dso_local i32 @ddr3_init_2500(%struct.ast_private*, i32) #1

declare dso_local i32 @ddr_test_2500(%struct.ast_private*) #1

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
