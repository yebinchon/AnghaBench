; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_composer.c_blend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_composer.c_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vkms_composer = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.vkms_composer*, %struct.vkms_composer*)* @blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blend(i8* %0, i8* %1, %struct.vkms_composer* %2, %struct.vkms_composer* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vkms_composer*, align 8
  %8 = alloca %struct.vkms_composer*, align 8
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.vkms_composer* %2, %struct.vkms_composer** %7, align 8
  store %struct.vkms_composer* %3, %struct.vkms_composer** %8, align 8
  %23 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %24 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  store i32 %27, i32* %15, align 4
  %28 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %29 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  store i32 %32, i32* %16, align 4
  %33 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %34 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %38 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %18, align 4
  %41 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %42 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %41, i32 0, i32 3
  %43 = call i32 @drm_rect_height(%struct.TYPE_5__* %42)
  store i32 %43, i32* %19, align 4
  %44 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %45 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %44, i32 0, i32 3
  %46 = call i32 @drm_rect_width(%struct.TYPE_5__* %45)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %19, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %20, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %113, %4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %21, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %116

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %107, %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %110

66:                                               ; preds = %62
  %67 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %68 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %72 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = add nsw i32 %69, %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %79 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %76, %80
  %82 = add nsw i32 %75, %81
  store i32 %82, i32* %14, align 4
  %83 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %84 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %88 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = add nsw i32 %85, %90
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.vkms_composer*, %struct.vkms_composer** %8, align 8
  %94 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = add nsw i32 %91, %96
  store i32 %97, i32* %13, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr i8, i8* %98, i64 %100
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  %106 = call i32 @memcpy(i8* %101, i8* %105, i32 4)
  br label %107

107:                                              ; preds = %66
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %62

110:                                              ; preds = %62
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %55

116:                                              ; preds = %55
  ret void
}

declare dso_local i32 @drm_rect_height(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
