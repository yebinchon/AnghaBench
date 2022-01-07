; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_handle_isrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_handle_isrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_isr_tables = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_isr_tables*, i64, i64*, i64)* @dsi_handle_isrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_handle_isrs(%struct.dsi_isr_tables* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.dsi_isr_tables*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dsi_isr_tables* %0, %struct.dsi_isr_tables** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.dsi_isr_tables*, %struct.dsi_isr_tables** %5, align 8
  %11 = getelementptr inbounds %struct.dsi_isr_tables, %struct.dsi_isr_tables* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dsi_isr_tables*, %struct.dsi_isr_tables** %5, align 8
  %14 = getelementptr inbounds %struct.dsi_isr_tables, %struct.dsi_isr_tables* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @dsi_call_isrs(i32 %12, i32 %16, i64 %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %52, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %52

30:                                               ; preds = %22
  %31 = load %struct.dsi_isr_tables*, %struct.dsi_isr_tables** %5, align 8
  %32 = getelementptr inbounds %struct.dsi_isr_tables, %struct.dsi_isr_tables* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dsi_isr_tables*, %struct.dsi_isr_tables** %5, align 8
  %39 = getelementptr inbounds %struct.dsi_isr_tables, %struct.dsi_isr_tables* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dsi_call_isrs(i32 %37, i32 %45, i64 %50)
  br label %52

52:                                               ; preds = %30, %29
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.dsi_isr_tables*, %struct.dsi_isr_tables** %5, align 8
  %60 = getelementptr inbounds %struct.dsi_isr_tables, %struct.dsi_isr_tables* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dsi_isr_tables*, %struct.dsi_isr_tables** %5, align 8
  %63 = getelementptr inbounds %struct.dsi_isr_tables, %struct.dsi_isr_tables* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @dsi_call_isrs(i32 %61, i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @dsi_call_isrs(i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
