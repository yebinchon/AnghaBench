; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvmodesnv17.c_nv17_tv_update_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvmodesnv17.c_nv17_tv_update_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nv17_tv_encoder = type { i32, i32, i32, i32, i32, %struct.nv17_tv_state }
%struct.nv17_tv_state = type { i32, i32* }
%struct.nv17_tv_norm_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv17_tv_update_properties(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nv17_tv_encoder*, align 8
  %5 = alloca %struct.nv17_tv_state*, align 8
  %6 = alloca %struct.nv17_tv_norm_params*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder* %11)
  store %struct.nv17_tv_encoder* %12, %struct.nv17_tv_encoder** %4, align 8
  %13 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %13, i32 0, i32 5
  store %struct.nv17_tv_state* %14, %struct.nv17_tv_state** %5, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %15)
  store %struct.nv17_tv_norm_params* %16, %struct.nv17_tv_norm_params** %6, align 8
  %17 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %23 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %27 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ]
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %88 [
    i32 130, label %32
    i32 128, label %67
    i32 131, label %74
    i32 129, label %81
  ]

32:                                               ; preds = %29
  %33 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %34 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  %35 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %36 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %42 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, 65536
  store i32 %44, i32* %42, align 8
  br label %62

45:                                               ; preds = %32
  %46 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %47 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %53 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, 1048576
  store i32 %55, i32* %53, align 8
  br label %61

56:                                               ; preds = %45
  %57 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %58 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, 1114112
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %64 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  store i32 16, i32* %66, align 4
  br label %88

67:                                               ; preds = %29
  %68 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %69 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %68, i32 0, i32 0
  store i32 69650, i32* %69, align 8
  %70 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %71 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 7
  store i32 24, i32* %73, align 4
  br label %88

74:                                               ; preds = %29
  %75 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %76 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %75, i32 0, i32 0
  store i32 1119027, i32* %76, align 8
  %77 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %78 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  store i32 20, i32* %80, align 4
  br label %88

81:                                               ; preds = %29
  %82 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %83 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %82, i32 0, i32 0
  store i32 1118226, i32* %83, align 8
  %84 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %85 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 7
  store i32 24, i32* %87, align 4
  br label %88

88:                                               ; preds = %29, %81, %74, %67, %62
  %89 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %6, align 8
  %90 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 32
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %96 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @interpolate(i32 0, i32 %94, i32 255, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %101 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 32
  store i32 %99, i32* %103, align 4
  %104 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %6, align 8
  %105 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 34
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %111 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @interpolate(i32 0, i32 %109, i32 255, i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %116 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 34
  store i32 %114, i32* %118, align 4
  %119 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %120 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 255
  %123 = sdiv i32 %122, 100
  %124 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %125 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 37
  store i32 %123, i32* %127, align 4
  %128 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %129 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %130 = call i32 @nv_load_ptv(%struct.drm_device* %128, %struct.nv17_tv_state* %129, i32 204)
  %131 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %132 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %133 = call i32 @nv_load_tv_enc(%struct.drm_device* %131, %struct.nv17_tv_state* %132, i32 7)
  %134 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %135 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %136 = call i32 @nv_load_tv_enc(%struct.drm_device* %134, %struct.nv17_tv_state* %135, i32 20)
  %137 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %138 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %139 = call i32 @nv_load_tv_enc(%struct.drm_device* %137, %struct.nv17_tv_state* %138, i32 22)
  %140 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %141 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %5, align 8
  %142 = call i32 @nv_load_tv_enc(%struct.drm_device* %140, %struct.nv17_tv_state* %141, i32 25)
  ret void
}

declare dso_local %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i8* @interpolate(i32, i32, i32, i32) #1

declare dso_local i32 @nv_load_ptv(%struct.drm_device*, %struct.nv17_tv_state*, i32) #1

declare dso_local i32 @nv_load_tv_enc(%struct.drm_device*, %struct.nv17_tv_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
