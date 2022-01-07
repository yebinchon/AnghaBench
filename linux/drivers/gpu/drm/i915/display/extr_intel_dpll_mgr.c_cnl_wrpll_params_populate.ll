; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_wrpll_params_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_wrpll_params_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_wrpll_params = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Incorrect KDiv\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Incorrect PDiv\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_wrpll_params*, i32, i32, i32, i32, i32)* @cnl_wrpll_params_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_wrpll_params_populate(%struct.skl_wrpll_params* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %14 = load i32, i32* %12, align 4
  switch i32 %14, label %24 [
    i32 1, label %15
    i32 2, label %18
    i32 3, label %21
  ]

15:                                               ; preds = %6
  %16 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %17 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %26

18:                                               ; preds = %6
  %19 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %20 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %19, i32 0, i32 0
  store i32 2, i32* %20, align 4
  br label %26

21:                                               ; preds = %6
  %22 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %23 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %22, i32 0, i32 0
  store i32 4, i32* %23, align 4
  br label %26

24:                                               ; preds = %6
  %25 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21, %18, %15
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %40 [
    i32 2, label %28
    i32 3, label %31
    i32 5, label %34
    i32 7, label %37
  ]

28:                                               ; preds = %26
  %29 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %30 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %42

31:                                               ; preds = %26
  %32 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %33 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %32, i32 0, i32 1
  store i32 2, i32* %33, align 4
  br label %42

34:                                               ; preds = %26
  %35 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %36 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %35, i32 0, i32 1
  store i32 4, i32* %36, align 4
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %39 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %38, i32 0, i32 1
  store i32 8, i32* %39, align 4
  br label %42

40:                                               ; preds = %26
  %41 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37, %34, %31, %28
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 1
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %54 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 1
  %59 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %60 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 15
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @div_u64(i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = ashr i32 %65, 15
  %67 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %68 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, 32767
  %71 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %7, align 8
  %72 = getelementptr inbounds %struct.skl_wrpll_params, %struct.skl_wrpll_params* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
