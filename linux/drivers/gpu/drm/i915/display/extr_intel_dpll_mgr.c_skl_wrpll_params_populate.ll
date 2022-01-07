; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_wrpll_params_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_wrpll_params_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_wrpll_params = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Incorrect PDiv\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Incorrect KDiv\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_wrpll_params*, i32, i32, i32, i32, i32)* @skl_wrpll_params_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_wrpll_params_populate(%struct.skl_wrpll_params* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.skl_wrpll_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.skl_wrpll_params* %0, %struct.skl_wrpll_params** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %24 [
    i32 1010065408, label %15
    i32 410065408, label %18
    i32 -189934592, label %21
  ]

15:                                               ; preds = %6
  %16 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %17 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %24

18:                                               ; preds = %6
  %19 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %20 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %24

21:                                               ; preds = %6
  %22 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %23 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %22, i32 0, i32 0
  store i32 3, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %6, %18, %15
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %38 [
    i32 1, label %26
    i32 2, label %29
    i32 3, label %32
    i32 7, label %35
  ]

26:                                               ; preds = %24
  %27 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %28 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %40

29:                                               ; preds = %24
  %30 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %31 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %40

32:                                               ; preds = %24
  %33 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %34 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %33, i32 0, i32 1
  store i32 2, i32* %34, align 4
  br label %40

35:                                               ; preds = %24
  %36 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %37 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %36, i32 0, i32 1
  store i32 4, i32* %37, align 4
  br label %40

38:                                               ; preds = %24
  %39 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35, %32, %29, %26
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %54 [
    i32 5, label %42
    i32 2, label %45
    i32 3, label %48
    i32 1, label %51
  ]

42:                                               ; preds = %40
  %43 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %44 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %43, i32 0, i32 2
  store i32 0, i32* %44, align 4
  br label %56

45:                                               ; preds = %40
  %46 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %47 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %46, i32 0, i32 2
  store i32 1, i32* %47, align 4
  br label %56

48:                                               ; preds = %40
  %49 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %50 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %49, i32 0, i32 2
  store i32 2, i32* %50, align 4
  br label %56

51:                                               ; preds = %40
  %52 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %53 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %52, i32 0, i32 2
  store i32 3, i32* %53, align 4
  br label %56

54:                                               ; preds = %40
  %55 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51, %48, %45, %42
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %59 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %61 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 1
  %66 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %67 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @MHz(i32 1)
  %77 = mul nsw i32 24, %76
  %78 = call i32 @div_u64(i32 %75, i32 %77)
  %79 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %80 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @div_u64(i32 %81, i32 24)
  %83 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %84 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MHz(i32 1)
  %87 = mul nsw i32 %85, %86
  %88 = sub nsw i32 %82, %87
  %89 = mul nsw i32 %88, 32768
  %90 = call i32 @MHz(i32 1)
  %91 = call i32 @div_u64(i32 %89, i32 %90)
  %92 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %93 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @MHz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
