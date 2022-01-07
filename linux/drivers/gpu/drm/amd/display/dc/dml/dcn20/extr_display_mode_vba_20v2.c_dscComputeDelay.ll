; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_dscComputeDelay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_dscComputeDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_420 = common dso_local global i32 0, align 4
@dm_n422 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dscComputeDelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscComputeDelay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @dm_420, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = add i32 %8, 2
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = add i32 %10, 0
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, 3
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 2
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 12
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add i32 %18, 13
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 2
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 7
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 3
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 2
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %1
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @dm_n422, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 2
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %41, 5
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 25
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 2
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, 10
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 2
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %74

55:                                               ; preds = %32
  %56 = load i32, i32* %3, align 4
  %57 = add i32 %56, 2
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 0
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = add i32 %60, 3
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 12
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 2
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 7
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 2
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %55, %36
  br label %75

75:                                               ; preds = %74, %7
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
