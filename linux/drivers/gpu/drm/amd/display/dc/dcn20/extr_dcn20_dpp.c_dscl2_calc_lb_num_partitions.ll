; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dscl2_calc_lb_num_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dscl2_calc_lb_num_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_data = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@LB_MEMORY_CONFIG_1 = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG_2 = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dscl2_calc_lb_num_partitions(%struct.scaler_data* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.scaler_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.scaler_data* %0, %struct.scaler_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %19 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %23 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %29 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %37

32:                                               ; preds = %4
  %33 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %34 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i32 [ %31, %27 ], [ %36, %32 ]
  store i32 %38, i32* %16, align 4
  %39 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %40 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %44 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %50 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %58

53:                                               ; preds = %37
  %54 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %55 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i32 [ %52, %48 ], [ %57, %53 ]
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %16, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %17, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 5
  %70 = sdiv i32 %69, 6
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 5
  %73 = sdiv i32 %72, 6
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 5
  %76 = sdiv i32 %75, 6
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @LB_MEMORY_CONFIG_1, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  store i32 970, i32* %12, align 4
  store i32 970, i32* %13, align 4
  store i32 970, i32* %14, align 4
  br label %94

81:                                               ; preds = %67
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @LB_MEMORY_CONFIG_2, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1290, i32* %12, align 4
  store i32 1290, i32* %13, align 4
  store i32 1290, i32* %14, align 4
  br label %93

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @LB_MEMORY_CONFIG_3, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 3712, i32* %12, align 4
  store i32 2260, i32* %13, align 4
  store i32 2744, i32* %14, align 4
  br label %92

91:                                               ; preds = %86
  store i32 2744, i32* %12, align 4
  store i32 2744, i32* %13, align 4
  store i32 2744, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %90
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93, %80
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sdiv i32 %95, %96
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sdiv i32 %99, %100
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %15, align 4
  %106 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %107 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %94
  %112 = load i32, i32* %15, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %15, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %111, %94
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, 64
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32*, i32** %7, align 8
  store i32 64, i32* %124, align 4
  br label %125

125:                                              ; preds = %123, %119
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %127, 64
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32*, i32** %8, align 8
  store i32 64, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %125
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
