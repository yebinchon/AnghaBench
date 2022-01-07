; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_adjust_dual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_adjust_dual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32)* @adjust_dual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_dual(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %129

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 1
  br label %36

33:                                               ; preds = %20
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %32, %30 ], [ %35, %33 ]
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %61, %36
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  br label %60

51:                                               ; preds = %42
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %13, align 8
  br label %38

66:                                               ; preds = %38
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %78, %66
  store i32 0, i32* %6, align 4
  br label %129

85:                                               ; preds = %81, %74
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %91, %88, %85
  %95 = load i32*, i32** %7, align 8
  store i32* %95, i32** %13, align 8
  br label %96

96:                                               ; preds = %105, %94
  %97 = load i32*, i32** %13, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = icmp ne i32* %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %13, align 8
  br label %96

110:                                              ; preds = %96
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %14, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %114, %110
  %118 = load i32, i32* %12, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %121, %122
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i1 [ false, %117 ], [ %123, %120 ]
  br label %126

126:                                              ; preds = %124, %114
  %127 = phi i1 [ true, %114 ], [ %125, %124 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %126, %84, %19
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
