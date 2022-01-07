; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_rect.c_drm_rect_rotate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_rect.c_drm_rect_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_rect = type { i64, i64, i64, i64 }

@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_rect_rotate(%struct.drm_rect* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %11 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %12 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %4
  %17 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %18 = bitcast %struct.drm_rect* %9 to i8*
  %19 = bitcast %struct.drm_rect* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  %30 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %31 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %33, %35
  %37 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %38 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %24, %16
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %46, %48
  %50 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %51 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %53, %55
  %57 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %58 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %44, %39
  br label %60

60:                                               ; preds = %59, %4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %149 [
    i32 131, label %64
    i32 128, label %65
    i32 130, label %91
    i32 129, label %123
  ]

64:                                               ; preds = %60
  br label %150

65:                                               ; preds = %60
  %66 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %67 = bitcast %struct.drm_rect* %9 to i8*
  %68 = bitcast %struct.drm_rect* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 32, i1 false)
  %69 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %72 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %76 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %78, %80
  %82 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %83 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %85, %87
  %89 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %90 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %150

91:                                               ; preds = %60
  %92 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %93 = bitcast %struct.drm_rect* %9 to i8*
  %94 = bitcast %struct.drm_rect* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 32, i1 false)
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %96, %98
  %100 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %101 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %103, %105
  %107 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %108 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %110, %112
  %114 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %115 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %117, %119
  %121 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %122 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %150

123:                                              ; preds = %60
  %124 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %125 = bitcast %struct.drm_rect* %9 to i8*
  %126 = bitcast %struct.drm_rect* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 32, i1 false)
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %128, %130
  %132 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %133 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %135, %137
  %139 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %140 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %144 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  %145 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %148 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %150

149:                                              ; preds = %60
  br label %150

150:                                              ; preds = %149, %123, %91, %65, %64
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
