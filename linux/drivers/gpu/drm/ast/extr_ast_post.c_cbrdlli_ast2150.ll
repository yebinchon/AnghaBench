; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbrdlli_ast2150.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbrdlli_ast2150.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@CBR_THRESHOLD_AST2150 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, i32)* @cbrdlli_ast2150 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbrdlli_ast2150(%struct.ast_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %10

10:                                               ; preds = %86, %68, %2
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 255, i32* %11, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 255, i32* %12, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 255, i32* %13, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 255, i32* %14, align 16
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %18, align 16
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %71, %10
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %74

22:                                               ; preds = %19
  %23 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %24, %26
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %27, %29
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 24
  %33 = or i32 %30, %32
  %34 = call i32 @ast_moutdwm(%struct.ast_private* %23, i32 510525544, i32 %33)
  %35 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @cbrscan_ast2150(%struct.ast_private* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %22
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %50, i32* %51, align 16
  br label %52

52:                                               ; preds = %49, %44
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %58, i32* %59, align 16
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %70

64:                                               ; preds = %22
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @CBR_THRESHOLD_AST2150, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %10

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %61
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %19

74:                                               ; preds = %19
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %82 = load i32, i32* %81, align 16
  %83 = sub nsw i32 %80, %82
  %84 = load i32, i32* @CBR_THRESHOLD_AST2150, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %74
  br label %10

87:                                               ; preds = %78
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %91 = load i32, i32* %90, align 16
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = sub nsw i32 %91, %93
  %95 = mul nsw i32 %94, 7
  %96 = ashr i32 %95, 4
  %97 = add nsw i32 %89, %96
  store i32 %97, i32* %7, align 4
  %98 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = shl i32 %100, 8
  %102 = or i32 %99, %101
  %103 = load i32, i32* %7, align 4
  %104 = shl i32 %103, 16
  %105 = or i32 %102, %104
  %106 = load i32, i32* %7, align 4
  %107 = shl i32 %106, 24
  %108 = or i32 %105, %107
  %109 = call i32 @ast_moutdwm(%struct.ast_private* %98, i32 510525544, i32 %108)
  ret void
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @cbrscan_ast2150(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
