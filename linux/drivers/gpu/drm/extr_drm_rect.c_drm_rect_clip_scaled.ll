; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_rect.c_drm_rect_clip_scaled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_rect.c_drm_rect_clip_scaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_rect = type { i32, i32, i32, i32 }

@int64_t = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_rect_clip_scaled(%struct.drm_rect* %0, %struct.drm_rect* %1, %struct.drm_rect* %2) #0 {
  %4 = alloca %struct.drm_rect*, align 8
  %5 = alloca %struct.drm_rect*, align 8
  %6 = alloca %struct.drm_rect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_rect* %0, %struct.drm_rect** %4, align 8
  store %struct.drm_rect* %1, %struct.drm_rect** %5, align 8
  store %struct.drm_rect* %2, %struct.drm_rect** %6, align 8
  %12 = load %struct.drm_rect*, %struct.drm_rect** %6, align 8
  %13 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %16 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %23 = call i32 @drm_rect_width(%struct.drm_rect* %22)
  %24 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %25 = call i32 @drm_rect_width(%struct.drm_rect* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @clip_scaled(i32 %23, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @int64_t, align 4
  %29 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %30 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* @INT_MIN, align 4
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = call i8* @clamp_t(i32 %28, i32 %33, i32 %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %39 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drm_rect*, %struct.drm_rect** %6, align 8
  %41 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %44 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %21, %3
  %46 = load %struct.drm_rect*, %struct.drm_rect** %6, align 8
  %47 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %50 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %45
  %56 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %57 = call i32 @drm_rect_height(%struct.drm_rect* %56)
  %58 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %59 = call i32 @drm_rect_height(%struct.drm_rect* %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @clip_scaled(i32 %57, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @int64_t, align 4
  %63 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %64 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* @INT_MIN, align 4
  %69 = load i32, i32* @INT_MAX, align 4
  %70 = call i8* @clamp_t(i32 %62, i32 %67, i32 %68, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %73 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.drm_rect*, %struct.drm_rect** %6, align 8
  %75 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %78 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %55, %45
  %80 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %81 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_rect*, %struct.drm_rect** %6, align 8
  %84 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %79
  %90 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %91 = call i32 @drm_rect_width(%struct.drm_rect* %90)
  %92 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %93 = call i32 @drm_rect_width(%struct.drm_rect* %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @clip_scaled(i32 %91, i32 %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @int64_t, align 4
  %97 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %98 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* @INT_MIN, align 4
  %103 = load i32, i32* @INT_MAX, align 4
  %104 = call i8* @clamp_t(i32 %96, i32 %101, i32 %102, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %107 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.drm_rect*, %struct.drm_rect** %6, align 8
  %109 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %112 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %89, %79
  %114 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %115 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.drm_rect*, %struct.drm_rect** %6, align 8
  %118 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %113
  %124 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %125 = call i32 @drm_rect_height(%struct.drm_rect* %124)
  %126 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %127 = call i32 @drm_rect_height(%struct.drm_rect* %126)
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @clip_scaled(i32 %125, i32 %127, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* @int64_t, align 4
  %131 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %132 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* @INT_MIN, align 4
  %137 = load i32, i32* @INT_MAX, align 4
  %138 = call i8* @clamp_t(i32 %130, i32 %135, i32 %136, i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %141 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.drm_rect*, %struct.drm_rect** %6, align 8
  %143 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %146 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %123, %113
  %148 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %149 = call i32 @drm_rect_visible(%struct.drm_rect* %148)
  ret i32 %149
}

declare dso_local i32 @clip_scaled(i32, i32, i32) #1

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_visible(%struct.drm_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
