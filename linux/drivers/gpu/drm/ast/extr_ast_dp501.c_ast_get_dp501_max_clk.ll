; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_get_dp501_max_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_get_dp501_max_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ast_get_dp501_max_clk(%struct.drm_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.ast_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.ast_private*, %struct.ast_private** %13, align 8
  store %struct.ast_private* %14, %struct.ast_private** %4, align 8
  store i64 255, i64* %11, align 8
  %15 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %16 = call i32 @get_fw_base(%struct.ast_private* %15)
  store i32 %16, i32* %5, align 4
  store i32 61440, i32* %6, align 4
  %17 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @ast_mindwm(%struct.ast_private* %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 240
  %24 = icmp ne i32 %23, 16
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %2, align 8
  br label %62

27:                                               ; preds = %1
  store i32 61460, i32* %6, align 4
  %28 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @ast_mindwm(%struct.ast_private* %28, i32 %31)
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %34 = bitcast i64* %33 to i32*
  store i32 %32, i32* %34, align 16
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 2
  %36 = load i64, i64* %35, align 16
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %27
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %40 = load i64, i64* %39, align 16
  store i64 %40, i64* %9, align 8
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %10, align 8
  %47 = mul nsw i64 90, %46
  br label %51

48:                                               ; preds = %38
  %49 = load i64, i64* %10, align 8
  %50 = mul nsw i64 54, %49
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i64 [ %47, %45 ], [ %50, %48 ]
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 255
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 255, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %57, %27
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %60, %25
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i32 @get_fw_base(%struct.ast_private*) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
