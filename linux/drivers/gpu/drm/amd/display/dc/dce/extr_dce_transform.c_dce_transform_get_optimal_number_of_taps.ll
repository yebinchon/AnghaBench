; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce_transform_get_optimal_number_of_taps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce_transform_get_optimal_number_of_taps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.scaler_data = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.scaling_taps = type { i32, i32 }
%struct.dce_transform = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_transform_get_optimal_number_of_taps(%struct.transform* %0, %struct.scaler_data* %1, %struct.scaling_taps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transform*, align 8
  %6 = alloca %struct.scaler_data*, align 8
  %7 = alloca %struct.scaling_taps*, align 8
  %8 = alloca %struct.dce_transform*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.transform* %0, %struct.transform** %5, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %6, align 8
  store %struct.scaling_taps* %2, %struct.scaling_taps** %7, align 8
  %11 = load %struct.transform*, %struct.transform** %5, align 8
  %12 = call %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform* %11)
  store %struct.dce_transform* %12, %struct.dce_transform** %8, align 8
  %13 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %14 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.dce_transform*, %struct.dce_transform** %8, align 8
  %18 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %23 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %27 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %33 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %21, %3
  %37 = load %struct.dce_transform*, %struct.dce_transform** %8, align 8
  %38 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %39 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dce_transform_get_max_num_of_supported_lines(%struct.dce_transform* %37, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %45 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %170

50:                                               ; preds = %36
  %51 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %52 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %56 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @decide_taps(i32 %54, i32 %57, i32 0)
  %59 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %60 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  store i8* %58, i8** %61, align 8
  %62 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %63 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %67 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @decide_taps(i32 %65, i32 %68, i32 0)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %72 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %75 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %79 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @decide_taps(i32 %77, i32 %80, i32 1)
  %82 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %83 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  store i8* %81, i8** %84, align 8
  %85 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %86 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %90 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @decide_taps(i32 %88, i32 %91, i32 1)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %95 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %98 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @IDENTITY_RATIO(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %135, label %103

103:                                              ; preds = %50
  %104 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %105 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %111 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sle i32 %109, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %117 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %125 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %115, %108, %103
  %128 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %129 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sle i32 %131, 1
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %170

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %50
  %136 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %137 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @IDENTITY_RATIO(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %169, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %145 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sle i32 %143, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %142
  %150 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %151 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %159 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %155, %149, %142
  %162 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %163 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp sle i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %170

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %135
  store i32 1, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %167, %133, %49
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform*) #1

declare dso_local i32 @dce_transform_get_max_num_of_supported_lines(%struct.dce_transform*, i32, i32) #1

declare dso_local i8* @decide_taps(i32, i32, i32) #1

declare dso_local i32 @IDENTITY_RATIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
