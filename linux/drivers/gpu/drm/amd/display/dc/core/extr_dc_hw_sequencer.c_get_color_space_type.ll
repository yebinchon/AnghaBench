; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_hw_sequencer.c_get_color_space_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_hw_sequencer.c_get_color_space_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COLOR_SPACE_RGB_TYPE = common dso_local global i32 0, align 4
@COLOR_SPACE_RGB_LIMITED_TYPE = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601_TYPE = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709_TYPE = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601_LIMITED_TYPE = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709_LIMITED_TYPE = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR2020_TYPE = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709 = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709_BLACK_TYPE = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709_BLACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_color_space_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @COLOR_SPACE_RGB_TYPE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @is_rgb_type(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @COLOR_SPACE_RGB_TYPE, align 4
  store i32 %9, i32* %3, align 4
  br label %66

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @is_rgb_limited_type(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @COLOR_SPACE_RGB_LIMITED_TYPE, align 4
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @is_ycbcr601_type(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @COLOR_SPACE_YCBCR601_TYPE, align 4
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @is_ycbcr709_type(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @COLOR_SPACE_YCBCR709_TYPE, align 4
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @is_ycbcr601_limited_type(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @COLOR_SPACE_YCBCR601_LIMITED_TYPE, align 4
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %28
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @is_ycbcr709_limited_type(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @COLOR_SPACE_YCBCR709_LIMITED_TYPE, align 4
  store i32 %39, i32* %3, align 4
  br label %61

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  %42 = call i64 @is_ycbcr2020_type(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @COLOR_SPACE_YCBCR2020_TYPE, align 4
  store i32 %45, i32* %3, align 4
  br label %60

46:                                               ; preds = %40
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @COLOR_SPACE_YCBCR709_BLACK_TYPE, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @COLOR_SPACE_YCBCR709_BLACK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @COLOR_SPACE_YCBCR709_BLACK_TYPE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %50
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61, %32
  br label %63

63:                                               ; preds = %62, %26
  br label %64

64:                                               ; preds = %63, %20
  br label %65

65:                                               ; preds = %64, %14
  br label %66

66:                                               ; preds = %65, %8
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @is_rgb_type(i32) #1

declare dso_local i64 @is_rgb_limited_type(i32) #1

declare dso_local i64 @is_ycbcr601_type(i32) #1

declare dso_local i64 @is_ycbcr709_type(i32) #1

declare dso_local i64 @is_ycbcr601_limited_type(i32) #1

declare dso_local i64 @is_ycbcr709_limited_type(i32) #1

declare dso_local i64 @is_ycbcr2020_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
