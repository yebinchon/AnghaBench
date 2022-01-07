; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_force_clk_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_force_clk_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i64)* @navi10_force_clk_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_force_clk_levels(%struct.smu_context* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @ffs(i64 %17)
  %19 = sub nsw i64 %18, 1
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i64 [ %19, %16 ], [ 0, %20 ]
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @fls(i64 %26)
  %28 = sub nsw i64 %27, 1
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i64 [ %28, %25 ], [ 0, %29 ]
  store i64 %31, i64* %11, align 8
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %62 [
    i32 132, label %33
    i32 130, label %33
    i32 129, label %33
    i32 131, label %33
    i32 128, label %33
    i32 134, label %33
    i32 133, label %33
  ]

33:                                               ; preds = %30, %30, %30, %30, %30, %30, %30
  %34 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @smu_get_dpm_freq_by_index(%struct.smu_context* %34, i32 %35, i64 %36, i64* %12)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %65

42:                                               ; preds = %33
  %43 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @smu_get_dpm_freq_by_index(%struct.smu_context* %43, i32 %44, i64 %45, i64* %13)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %65

51:                                               ; preds = %42
  %52 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @smu_set_soft_freq_range(%struct.smu_context* %52, i32 %53, i64 %54, i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %51
  br label %63

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %59, %49, %40
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @ffs(i64) #1

declare dso_local i64 @fls(i64) #1

declare dso_local i32 @smu_get_dpm_freq_by_index(%struct.smu_context*, i32, i64, i64*) #1

declare dso_local i32 @smu_set_soft_freq_range(%struct.smu_context*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
