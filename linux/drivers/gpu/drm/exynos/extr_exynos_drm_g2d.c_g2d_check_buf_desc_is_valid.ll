; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_check_buf_desc_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_check_buf_desc_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32 }
%struct.g2d_buf_desc = type { i64, i64, i64, i32, i64, i64 }

@REG_TYPE_SRC = common dso_local global i32 0, align 4
@REG_TYPE_DST = common dso_local global i32 0, align 4
@G2D_LEN_MIN = common dso_local global i32 0, align 4
@G2D_LEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"width[%d] is out of range!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"height[%d] is out of range!\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"last engine access position [%lu] is out of range [%lu]!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g2d_data*, %struct.g2d_buf_desc*, i32, i64)* @g2d_check_buf_desc_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_check_buf_desc_is_valid(%struct.g2d_data* %0, %struct.g2d_buf_desc* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g2d_data*, align 8
  %7 = alloca %struct.g2d_buf_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.g2d_data* %0, %struct.g2d_data** %6, align 8
  store %struct.g2d_buf_desc* %1, %struct.g2d_buf_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @REG_TYPE_SRC, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @REG_TYPE_DST, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %101

22:                                               ; preds = %17, %4
  %23 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %7, align 8
  %24 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %7, align 8
  %28 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = sub nsw i32 %26, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @G2D_LEN_MIN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @G2D_LEN_MAX, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %22
  %40 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %41 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 (i32, i8*, i64, ...) @DRM_DEV_ERROR(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i32 0, i32* %5, align 4
  br label %101

46:                                               ; preds = %35
  %47 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %7, align 8
  %48 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %7, align 8
  %52 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = sub nsw i32 %50, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @G2D_LEN_MIN, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @G2D_LEN_MAX, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59, %46
  %64 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %65 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 (i32, i8*, i64, ...) @DRM_DEV_ERROR(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  store i32 0, i32* %5, align 4
  br label %101

70:                                               ; preds = %59
  %71 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %7, align 8
  %72 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @g2d_get_buf_bpp(i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %7, align 8
  %76 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, 1
  %79 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %7, align 8
  %80 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = mul i64 %78, %81
  %83 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %7, align 8
  %84 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = mul i64 %85, %86
  %88 = add i64 %82, %87
  %89 = sub i64 %88, 1
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %70
  %94 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %95 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 (i32, i8*, i64, ...) @DRM_DEV_ERROR(i32 %96, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %97, i64 %98)
  store i32 0, i32* %5, align 4
  br label %101

100:                                              ; preds = %70
  store i32 1, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %93, %63, %39, %21
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i64, ...) #1

declare dso_local i64 @g2d_get_buf_bpp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
