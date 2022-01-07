; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_get_gpio_pin_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_get_gpio_pin_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @get_gpio_pin_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gpio_pin_params(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 9, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 2, i32* %16, align 4
  br label %106

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 6
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  store i32 2, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 2, i32* %26, align 4
  br label %105

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 7
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 11
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  store i32 7, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 1, i32* %35, align 4
  br label %104

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 12
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 15
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  store i32 12, i32* %43, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 2, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 3, i32* %45, align 4
  br label %103

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  store i32 16, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 23, i32* %51, align 4
  br label %102

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %53, 17
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %56, 24
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  store i32 17, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 3, i32* %60, align 4
  br label %101

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 25
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %7, align 8
  store i32 25, i32* %65, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 6, i32* %66, align 4
  br label %100

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  %69 = icmp sge i32 %68, 26
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp sle i32 %71, 28
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  store i32 26, i32* %74, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 4, i32* %75, align 4
  br label %99

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 29
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  store i32 29, i32* %80, align 4
  %81 = load i32*, i32** %8, align 8
  store i32 5, i32* %81, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 2, i32* %82, align 4
  br label %98

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 30
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  store i32 30, i32* %87, align 4
  %88 = load i32*, i32** %8, align 8
  store i32 8, i32* %88, align 4
  br label %97

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 31
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %7, align 8
  store i32 31, i32* %93, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 17, i32* %94, align 4
  br label %96

95:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %110

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %86
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %73
  br label %100

100:                                              ; preds = %99, %64
  br label %101

101:                                              ; preds = %100, %58
  br label %102

102:                                              ; preds = %101, %49
  br label %103

103:                                              ; preds = %102, %42
  br label %104

104:                                              ; preds = %103, %33
  br label %105

105:                                              ; preds = %104, %23
  br label %106

106:                                              ; preds = %105, %13
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 24
  store i32 %109, i32* %107, align 4
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %95
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
