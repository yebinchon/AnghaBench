; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_vc4_check_tex_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_vc4_check_tex_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_exec_info = type { i32 }
%struct.drm_gem_cma_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Surface dimensions (%d,%d) too large\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"buffer tiling %d unsupported\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Overflow in %dx%d (%dx%d) fbo size (%d + %d > %zd)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_check_tex_size(%struct.vc4_exec_info* %0, %struct.drm_gem_cma_object* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vc4_exec_info*, align 8
  %10 = alloca %struct.drm_gem_cma_object*, align 8
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
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %9, align 8
  store %struct.drm_gem_cma_object* %1, %struct.drm_gem_cma_object** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @utile_width(i32 %22)
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @utile_height(i32 %24)
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp sgt i32 %26, 4096
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 4096
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %7
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  store i32 0, i32* %8, align 4
  br label %95

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %58 [
    i32 130, label %37
    i32 128, label %42
    i32 129, label %51
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %20, align 4
  %40 = call i32 @round_up(i32 %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %17, align 4
  br label %61

42:                                               ; preds = %35
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %20, align 4
  %45 = mul nsw i32 %44, 8
  %46 = call i32 @round_up(i32 %43, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %21, align 4
  %49 = mul nsw i32 %48, 8
  %50 = call i32 @round_up(i32 %47, i32 %49)
  store i32 %50, i32* %17, align 4
  br label %61

51:                                               ; preds = %35
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %20, align 4
  %54 = call i32 @round_up(i32 %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %21, align 4
  %57 = call i32 @round_up(i32 %55, i32 %56)
  store i32 %57, i32* %17, align 4
  br label %61

58:                                               ; preds = %35
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 0, i32* %8, align 4
  br label %95

61:                                               ; preds = %51, %42, %37
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %15, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %17, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %19, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %10, align 8
  %78 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %73, %61
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %10, align 8
  %90 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %92)
  store i32 0, i32* %8, align 4
  br label %95

94:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %82, %58, %31
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @utile_width(i32) #1

declare dso_local i32 @utile_height(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
