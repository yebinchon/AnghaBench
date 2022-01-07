; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_calc_lb_num_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_calc_lb_num_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_data = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@LB_MEMORY_CONFIG_1 = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG_2 = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_dscl_calc_lb_num_partitions(%struct.scaler_data* %0, i32 %1, i32* %2, i32* %3) #0 {
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
  %18 = alloca i32, align 4
  store %struct.scaler_data* %0, %struct.scaler_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %20 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %24 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %30 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %38

33:                                               ; preds = %4
  %34 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %35 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i32 [ %32, %28 ], [ %37, %33 ]
  store i32 %39, i32* %17, align 4
  %40 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %41 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %45 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %51 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %59

54:                                               ; preds = %38
  %55 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %56 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i32 [ %53, %49 ], [ %58, %54 ]
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %17, align 4
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32, i32* %18, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %18, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %70 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dpp1_dscl_get_lb_depth_bpc(i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %76, 71
  %78 = sdiv i32 %77, 72
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %13, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %81, 71
  %83 = sdiv i32 %82, 72
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 5
  %86 = sdiv i32 %85, 6
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @LB_MEMORY_CONFIG_1, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  store i32 816, i32* %9, align 4
  store i32 816, i32* %10, align 4
  store i32 984, i32* %11, align 4
  br label %104

91:                                               ; preds = %68
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @LB_MEMORY_CONFIG_2, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1088, i32* %9, align 4
  store i32 1088, i32* %10, align 4
  store i32 1312, i32* %11, align 4
  br label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @LB_MEMORY_CONFIG_3, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 4448, i32* %9, align 4
  store i32 1904, i32* %10, align 4
  store i32 2752, i32* %11, align 4
  br label %102

101:                                              ; preds = %96
  store i32 2752, i32* %9, align 4
  store i32 2752, i32* %10, align 4
  store i32 2752, i32* %11, align 4
  br label %102

102:                                              ; preds = %101, %100
  br label %103

103:                                              ; preds = %102, %95
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sdiv i32 %105, %106
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %15, align 4
  %111 = sdiv i32 %109, %110
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %16, align 4
  %115 = sdiv i32 %113, %114
  store i32 %115, i32* %12, align 4
  %116 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %117 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %104
  %122 = load i32, i32* %12, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %12, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %121, %104
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 64
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32*, i32** %7, align 8
  store i32 64, i32* %134, align 4
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 64
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32*, i32** %8, align 8
  store i32 64, i32* %140, align 4
  br label %141

141:                                              ; preds = %139, %135
  ret void
}

declare dso_local i32 @dpp1_dscl_get_lb_depth_bpc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
