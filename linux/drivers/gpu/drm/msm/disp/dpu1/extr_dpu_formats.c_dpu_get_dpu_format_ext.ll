; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c_dpu_get_dpu_format_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c_dpu_get_dpu_format_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"plane format modifier 0x%llX\0A\00", align 1
@dpu_format_map = common dso_local global %struct.dpu_format* null, align 8
@dpu_format_map_ubwc = common dso_local global %struct.dpu_format* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"found fmt: %4.4s  DRM_FORMAT_MOD_QCOM_COMPRESSED\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unsupported format modifier %llX\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"unsupported fmt: %4.4s modifier 0x%llX\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"fmt %4.4s mod 0x%llX ubwc %d yuv %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpu_format* @dpu_get_dpu_format_ext(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.dpu_format*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dpu_format*, align 8
  %8 = alloca %struct.dpu_format*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store %struct.dpu_format* null, %struct.dpu_format** %7, align 8
  store %struct.dpu_format* null, %struct.dpu_format** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %23 [
    i32 0, label %13
    i32 128, label %17
  ]

13:                                               ; preds = %2
  %14 = load %struct.dpu_format*, %struct.dpu_format** @dpu_format_map, align 8
  store %struct.dpu_format* %14, %struct.dpu_format** %8, align 8
  %15 = load %struct.dpu_format*, %struct.dpu_format** @dpu_format_map, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.dpu_format* %15)
  store i64 %16, i64* %9, align 8
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.dpu_format*, %struct.dpu_format** @dpu_format_map_ubwc, align 8
  store %struct.dpu_format* %18, %struct.dpu_format** %8, align 8
  %19 = load %struct.dpu_format*, %struct.dpu_format** @dpu_format_map_ubwc, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.dpu_format* %19)
  store i64 %20, i64* %9, align 8
  %21 = bitcast i64* %4 to i8*
  %22 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  store %struct.dpu_format* null, %struct.dpu_format** %3, align 8
  br label %65

26:                                               ; preds = %17, %13
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.dpu_format*, %struct.dpu_format** %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %33, i64 %34
  %36 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.dpu_format*, %struct.dpu_format** %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %41, i64 %42
  store %struct.dpu_format* %43, %struct.dpu_format** %7, align 8
  br label %48

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %27

48:                                               ; preds = %40, %27
  %49 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %50 = icmp eq %struct.dpu_format* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = bitcast i64* %4 to i8*
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %52, i32 %53)
  br label %63

55:                                               ; preds = %48
  %56 = bitcast i64* %4 to i8*
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %59 = call i32 @DPU_FORMAT_IS_UBWC(%struct.dpu_format* %58)
  %60 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %61 = call i32 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %60)
  %62 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %56, i32 %57, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %55, %51
  %64 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  store %struct.dpu_format* %64, %struct.dpu_format** %3, align 8
  br label %65

65:                                               ; preds = %63, %23
  %66 = load %struct.dpu_format*, %struct.dpu_format** %3, align 8
  ret %struct.dpu_format* %66
}

declare dso_local i32 @DPU_DEBUG(i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.dpu_format*) #1

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i32 @DPU_FORMAT_IS_UBWC(%struct.dpu_format*) #1

declare dso_local i32 @DPU_FORMAT_IS_YUV(%struct.dpu_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
