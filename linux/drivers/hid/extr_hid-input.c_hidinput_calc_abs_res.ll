; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_calc_abs_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_calc_abs_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidinput_calc_abs_res(%struct.hid_field* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_field* %0, %struct.hid_field** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %11 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %14 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %17 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %21 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %24 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %123

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %86 [
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
    i32 142, label %35
    i32 141, label %35
    i32 140, label %35
    i32 139, label %35
    i32 138, label %35
    i32 137, label %35
    i32 136, label %62
    i32 135, label %62
    i32 134, label %62
    i32 131, label %62
    i32 133, label %62
    i32 132, label %62
  ]

35:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33
  %36 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %37 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 17
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %61

43:                                               ; preds = %35
  %44 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %45 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 19
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 254
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %123

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %123

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %40
  br label %87

62:                                               ; preds = %33, %33, %33, %33, %33, %33
  %63 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %64 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 20
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 573
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %123

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %85

78:                                               ; preds = %62
  %79 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %80 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 18
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %123

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %75
  br label %87

86:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %123

87:                                               ; preds = %85, %61
  br label %88

88:                                               ; preds = %100, %87
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %93, 10
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %123

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %88

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %116, %103
  %105 = load i32, i32* %6, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 %109, 10
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %123

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %6, align 4
  br label %104

119:                                              ; preds = %104
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @DIV_ROUND_CLOSEST(i32 %120, i32 %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %114, %98, %86, %83, %74, %59, %55, %32
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
