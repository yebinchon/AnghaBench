; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_rect.c_drm_rect_rotate_inv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_rect.c_drm_rect_rotate_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_rect = type { i64, i64, i64, i64 }

@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_rect_rotate_inv(%struct.drm_rect* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_rect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_rect, align 8
  store %struct.drm_rect* %0, %struct.drm_rect** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %98 [
    i32 131, label %13
    i32 128, label %14
    i32 130, label %40
    i32 129, label %72
  ]

13:                                               ; preds = %4
  br label %99

14:                                               ; preds = %4
  %15 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %16 = bitcast %struct.drm_rect* %9 to i8*
  %17 = bitcast %struct.drm_rect* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false)
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %19, %21
  %23 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %24 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  %30 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %31 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %35 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %39 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %99

40:                                               ; preds = %4
  %41 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %42 = bitcast %struct.drm_rect* %9 to i8*
  %43 = bitcast %struct.drm_rect* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false)
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %45, %47
  %49 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %50 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %52, %54
  %56 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %57 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %59, %61
  %63 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %64 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %66, %68
  %70 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %71 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %99

72:                                               ; preds = %4
  %73 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %74 = bitcast %struct.drm_rect* %9 to i8*
  %75 = bitcast %struct.drm_rect* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 32, i1 false)
  %76 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %79 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %83 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %85, %87
  %89 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %90 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %92, %94
  %96 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %97 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %99

98:                                               ; preds = %4
  br label %99

99:                                               ; preds = %98, %72, %40, %14, %13
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %102 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %99
  %107 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %108 = bitcast %struct.drm_rect* %9 to i8*
  %109 = bitcast %struct.drm_rect* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 32, i1 false)
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %106
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %116, %118
  %120 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %121 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %123, %125
  %127 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %128 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %114, %106
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %136, %138
  %140 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %141 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %143, %145
  %147 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %148 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %134, %129
  br label %150

150:                                              ; preds = %149, %99
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
