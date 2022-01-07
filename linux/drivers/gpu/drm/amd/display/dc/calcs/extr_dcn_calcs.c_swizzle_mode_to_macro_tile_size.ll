; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_swizzle_mode_to_macro_tile_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_swizzle_mode_to_macro_tile_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_4k_tile = common dso_local global i32 0, align 4
@dm_64k_tile = common dso_local global i32 0, align 4
@dm_256k_tile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swizzle_mode_to_macro_tile_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %26 [
    i32 134, label %5
    i32 144, label %7
    i32 143, label %7
    i32 137, label %9
    i32 135, label %9
    i32 136, label %9
    i32 129, label %11
    i32 128, label %11
    i32 148, label %13
    i32 147, label %13
    i32 142, label %15
    i32 140, label %15
    i32 141, label %15
    i32 133, label %17
    i32 132, label %17
    i32 146, label %19
    i32 145, label %19
    i32 139, label %21
    i32 138, label %21
    i32 131, label %23
    i32 130, label %23
    i32 149, label %25
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @dm_4k_tile, align 4
  store i32 %6, i32* %2, align 4
  br label %28

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @dm_4k_tile, align 4
  store i32 %8, i32* %2, align 4
  br label %28

9:                                                ; preds = %1, %1, %1
  %10 = load i32, i32* @dm_64k_tile, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @dm_256k_tile, align 4
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @dm_4k_tile, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1, %1, %1
  %16 = load i32, i32* @dm_64k_tile, align 4
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @dm_256k_tile, align 4
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %1, %1
  %20 = load i32, i32* @dm_4k_tile, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %1, %1
  %22 = load i32, i32* @dm_64k_tile, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %1, %1
  %24 = load i32, i32* @dm_256k_tile, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %1, %25
  %27 = call i32 @ASSERT(i32 0)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
