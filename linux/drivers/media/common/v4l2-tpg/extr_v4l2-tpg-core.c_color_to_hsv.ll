; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_color_to_hsv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_color_to_hsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i64 }

@V4L2_HSV_ENC_180 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*, i32, i32, i32, i32*, i32*, i32*)* @color_to_hsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_to_hsv(%struct.tpg_data* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.tpg_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @max3(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32*, i32** %14, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %7
  %36 = load i32*, i32** %12, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 0, i32* %37, align 4
  br label %132

38:                                               ; preds = %7
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @min3(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = mul nsw i32 255, %46
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %15, align 4
  %49 = sdiv i32 %48, 2
  %50 = load i32, i32* %18, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %18, align 4
  %54 = sdiv i32 %53, %52
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %38
  %60 = load i32*, i32** %12, align 8
  store i32 0, i32* %60, align 4
  br label %132

61:                                               ; preds = %38
  %62 = load %struct.tpg_data*, %struct.tpg_data** %8, align 8
  %63 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @V4L2_HSV_ENC_180, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 60, i32 85
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %92

76:                                               ; preds = %61
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %20, align 4
  store i32 %84, i32* %19, align 4
  br label %91

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %20, align 4
  %90 = mul nsw i32 %89, 2
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %85, %80
  br label %92

92:                                               ; preds = %91, %72
  %93 = load i32, i32* %20, align 4
  %94 = sdiv i32 %93, 2
  %95 = load i32, i32* %18, align 4
  %96 = mul nsw i32 %95, %94
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %17, align 4
  %98 = sdiv i32 %97, 2
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = sdiv i32 %102, %101
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %18, align 4
  %107 = load %struct.tpg_data*, %struct.tpg_data** %8, align 8
  %108 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @V4L2_HSV_ENC_180, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %92
  %113 = load i32, i32* %18, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 180
  store i32 %117, i32* %18, align 4
  br label %125

118:                                              ; preds = %112
  %119 = load i32, i32* %18, align 4
  %120 = icmp sgt i32 %119, 180
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %18, align 4
  %123 = sub nsw i32 %122, 180
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %115
  br label %129

126:                                              ; preds = %92
  %127 = load i32, i32* %18, align 4
  %128 = and i32 %127, 255
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %126, %125
  %130 = load i32, i32* %18, align 4
  %131 = load i32*, i32** %12, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %59, %35
  ret void
}

declare dso_local i32 @max3(i32, i32, i32) #1

declare dso_local i32 @min3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
