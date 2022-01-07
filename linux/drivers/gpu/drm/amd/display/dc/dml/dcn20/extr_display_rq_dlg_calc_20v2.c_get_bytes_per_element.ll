; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_rq_dlg_calc_20v2.c_get_bytes_per_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_rq_dlg_calc_20v2.c_get_bytes_per_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_444_16 = common dso_local global i32 0, align 4
@dm_444_32 = common dso_local global i32 0, align 4
@dm_444_64 = common dso_local global i32 0, align 4
@dm_420_8 = common dso_local global i32 0, align 4
@dm_420_10 = common dso_local global i32 0, align 4
@dm_444_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_bytes_per_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bytes_per_element(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @dm_444_16, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 2, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %9
  br label %62

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @dm_444_32, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 4, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %18
  br label %61

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @dm_444_64, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 8, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %27
  br label %60

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @dm_420_8, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 2, i32* %5, align 4
  br label %41

40:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %59

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @dm_420_10, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 4, i32* %5, align 4
  br label %51

50:                                               ; preds = %46
  store i32 2, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %58

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @dm_444_8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %52
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %22
  br label %62

62:                                               ; preds = %61, %13
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
