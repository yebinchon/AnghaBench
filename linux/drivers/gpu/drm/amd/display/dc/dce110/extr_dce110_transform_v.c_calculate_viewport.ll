; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_calculate_viewport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_calculate_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32 }

@PIXEL_FORMAT_420BPP8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scaler_data*, %struct.rect*, %struct.rect*)* @calculate_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_viewport(%struct.scaler_data* %0, %struct.rect* %1, %struct.rect* %2) #0 {
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca %struct.rect*, align 8
  %6 = alloca %struct.rect*, align 8
  store %struct.scaler_data* %0, %struct.scaler_data** %4, align 8
  store %struct.rect* %1, %struct.rect** %5, align 8
  store %struct.rect* %2, %struct.rect** %6, align 8
  %7 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %8 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %12 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = srem i32 %14, 2
  %16 = sub nsw i32 %10, %15
  %17 = load %struct.rect*, %struct.rect** %5, align 8
  %18 = getelementptr inbounds %struct.rect, %struct.rect* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %20 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %24 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %26, 2
  %28 = sub nsw i32 %22, %27
  %29 = load %struct.rect*, %struct.rect** %5, align 8
  %30 = getelementptr inbounds %struct.rect, %struct.rect* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %32 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %36 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %38, 2
  %40 = sub nsw i32 %34, %39
  %41 = load %struct.rect*, %struct.rect** %5, align 8
  %42 = getelementptr inbounds %struct.rect, %struct.rect* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %44 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %48 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = srem i32 %50, 2
  %52 = sub nsw i32 %46, %51
  %53 = load %struct.rect*, %struct.rect** %5, align 8
  %54 = getelementptr inbounds %struct.rect, %struct.rect* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rect*, %struct.rect** %5, align 8
  %56 = getelementptr inbounds %struct.rect, %struct.rect* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rect*, %struct.rect** %6, align 8
  %59 = getelementptr inbounds %struct.rect, %struct.rect* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rect*, %struct.rect** %5, align 8
  %61 = getelementptr inbounds %struct.rect, %struct.rect* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rect*, %struct.rect** %6, align 8
  %64 = getelementptr inbounds %struct.rect, %struct.rect* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rect*, %struct.rect** %5, align 8
  %66 = getelementptr inbounds %struct.rect, %struct.rect* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rect*, %struct.rect** %6, align 8
  %69 = getelementptr inbounds %struct.rect, %struct.rect* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rect*, %struct.rect** %5, align 8
  %71 = getelementptr inbounds %struct.rect, %struct.rect* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rect*, %struct.rect** %6, align 8
  %74 = getelementptr inbounds %struct.rect, %struct.rect* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %76 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PIXEL_FORMAT_420BPP8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %3
  %81 = load %struct.rect*, %struct.rect** %5, align 8
  %82 = getelementptr inbounds %struct.rect, %struct.rect* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %83, 2
  %85 = load %struct.rect*, %struct.rect** %5, align 8
  %86 = getelementptr inbounds %struct.rect, %struct.rect* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.rect*, %struct.rect** %5, align 8
  %90 = getelementptr inbounds %struct.rect, %struct.rect* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = srem i32 %91, 2
  %93 = load %struct.rect*, %struct.rect** %5, align 8
  %94 = getelementptr inbounds %struct.rect, %struct.rect* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.rect*, %struct.rect** %5, align 8
  %98 = getelementptr inbounds %struct.rect, %struct.rect* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 2
  %101 = load %struct.rect*, %struct.rect** %6, align 8
  %102 = getelementptr inbounds %struct.rect, %struct.rect* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.rect*, %struct.rect** %5, align 8
  %104 = getelementptr inbounds %struct.rect, %struct.rect* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %105, 2
  %107 = load %struct.rect*, %struct.rect** %6, align 8
  %108 = getelementptr inbounds %struct.rect, %struct.rect* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.rect*, %struct.rect** %5, align 8
  %110 = getelementptr inbounds %struct.rect, %struct.rect* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 2
  %113 = load %struct.rect*, %struct.rect** %6, align 8
  %114 = getelementptr inbounds %struct.rect, %struct.rect* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.rect*, %struct.rect** %5, align 8
  %116 = getelementptr inbounds %struct.rect, %struct.rect* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 2
  %119 = load %struct.rect*, %struct.rect** %6, align 8
  %120 = getelementptr inbounds %struct.rect, %struct.rect* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %80, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
