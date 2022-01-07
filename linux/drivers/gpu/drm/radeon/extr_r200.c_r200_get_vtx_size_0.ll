; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r200.c_r200_get_vtx_size_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r200.c_r200_get_vtx_size_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R200_VTX_Z0 = common dso_local global i32 0, align 4
@R200_VTX_W0 = common dso_local global i32 0, align 4
@R200_VTX_WEIGHT_COUNT_SHIFT = common dso_local global i32 0, align 4
@R200_VTX_PV_MATRIX_SEL = common dso_local global i32 0, align 4
@R200_VTX_N0 = common dso_local global i32 0, align 4
@R200_VTX_POINT_SIZE = common dso_local global i32 0, align 4
@R200_VTX_DISCRETE_FOG = common dso_local global i32 0, align 4
@R200_VTX_SHININESS_0 = common dso_local global i32 0, align 4
@R200_VTX_SHININESS_1 = common dso_local global i32 0, align 4
@R200_VTX_XY1 = common dso_local global i32 0, align 4
@R200_VTX_Z1 = common dso_local global i32 0, align 4
@R200_VTX_W1 = common dso_local global i32 0, align 4
@R200_VTX_N1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @r200_get_vtx_size_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r200_get_vtx_size_0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @R200_VTX_Z0, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @R200_VTX_W0, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @R200_VTX_WEIGHT_COUNT_SHIFT, align 4
  %24 = shl i32 7, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @R200_VTX_WEIGHT_COUNT_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = and i32 %30, 7
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @R200_VTX_PV_MATRIX_SEL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @R200_VTX_N0, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 3
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @R200_VTX_POINT_SIZE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @R200_VTX_DISCRETE_FOG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @R200_VTX_SHININESS_0, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @R200_VTX_SHININESS_1, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %74
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %105, %82
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %4, align 4
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 11, %89
  %91 = ashr i32 %87, %90
  %92 = and i32 %91, 3
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  switch i32 %93, label %104 [
    i32 0, label %94
    i32 1, label %95
    i32 2, label %98
    i32 3, label %101
  ]

94:                                               ; preds = %86
  br label %104

95:                                               ; preds = %86
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %104

98:                                               ; preds = %86
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 3
  store i32 %100, i32* %3, align 4
  br label %104

101:                                              ; preds = %86
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %86, %101, %98, %95, %94
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %83

108:                                              ; preds = %83
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @R200_VTX_XY1, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %2, align 4
  %118 = load i32, i32* @R200_VTX_Z1, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @R200_VTX_W1, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @R200_VTX_N1, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 3
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
