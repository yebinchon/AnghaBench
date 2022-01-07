; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_swizzle_to_dml_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_swizzle_to_dml_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_sw_linear = common dso_local global i32 0, align 4
@dm_sw_4kb_s = common dso_local global i32 0, align 4
@dm_sw_4kb_s_x = common dso_local global i32 0, align 4
@dm_sw_4kb_d = common dso_local global i32 0, align 4
@dm_sw_4kb_d_x = common dso_local global i32 0, align 4
@dm_sw_64kb_s = common dso_local global i32 0, align 4
@dm_sw_64kb_s_x = common dso_local global i32 0, align 4
@dm_sw_64kb_s_t = common dso_local global i32 0, align 4
@dm_sw_64kb_d = common dso_local global i32 0, align 4
@dm_sw_64kb_d_x = common dso_local global i32 0, align 4
@dm_sw_64kb_d_t = common dso_local global i32 0, align 4
@dm_sw_64kb_r_x = common dso_local global i32 0, align 4
@dm_sw_var_s = common dso_local global i32 0, align 4
@dm_sw_var_s_x = common dso_local global i32 0, align 4
@dm_sw_var_d = common dso_local global i32 0, align 4
@dm_sw_var_d_x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @swizzle_to_dml_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swizzle_to_dml_params(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %54 [
    i32 132, label %6
    i32 141, label %9
    i32 140, label %12
    i32 143, label %15
    i32 142, label %18
    i32 135, label %21
    i32 133, label %24
    i32 134, label %27
    i32 139, label %30
    i32 137, label %33
    i32 138, label %36
    i32 136, label %39
    i32 129, label %42
    i32 128, label %45
    i32 131, label %48
    i32 130, label %51
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @dm_sw_linear, align 4
  %8 = load i32*, i32** %4, align 8
  store i32 %7, i32* %8, align 4
  br label %56

9:                                                ; preds = %2
  %10 = load i32, i32* @dm_sw_4kb_s, align 4
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load i32, i32* @dm_sw_4kb_s_x, align 4
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @dm_sw_4kb_d, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load i32, i32* @dm_sw_4kb_d_x, align 4
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load i32, i32* @dm_sw_64kb_s, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load i32, i32* @dm_sw_64kb_s_x, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load i32, i32* @dm_sw_64kb_s_t, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %56

30:                                               ; preds = %2
  %31 = load i32, i32* @dm_sw_64kb_d, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  br label %56

33:                                               ; preds = %2
  %34 = load i32, i32* @dm_sw_64kb_d_x, align 4
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  br label %56

36:                                               ; preds = %2
  %37 = load i32, i32* @dm_sw_64kb_d_t, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %56

39:                                               ; preds = %2
  %40 = load i32, i32* @dm_sw_64kb_r_x, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %56

42:                                               ; preds = %2
  %43 = load i32, i32* @dm_sw_var_s, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  br label %56

45:                                               ; preds = %2
  %46 = load i32, i32* @dm_sw_var_s_x, align 4
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  br label %56

48:                                               ; preds = %2
  %49 = load i32, i32* @dm_sw_var_d, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  br label %56

51:                                               ; preds = %2
  %52 = load i32, i32* @dm_sw_var_d_x, align 4
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  br label %56

54:                                               ; preds = %2
  %55 = call i32 @ASSERT(i32 0)
  br label %56

56:                                               ; preds = %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
