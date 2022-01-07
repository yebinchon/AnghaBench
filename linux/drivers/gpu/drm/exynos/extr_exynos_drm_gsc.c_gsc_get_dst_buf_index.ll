; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_get_dst_buf_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_get_dst_buf_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32, i32 }

@GSC_MAX_DST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"gsc id[%d]\0A\00", align 1
@GSC_OUT_BASE_ADDR_Y_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get out buffer index.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cfg[0x%x]curr_index[%d]buf_id[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_context*)* @gsc_get_dst_buf_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_get_dst_buf_index(%struct.gsc_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %3, align 8
  %8 = load i32, i32* @GSC_MAX_DST, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %10 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %13 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @GSC_OUT_BASE_ADDR_Y_MASK, align 4
  %17 = call i32 @gsc_read(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @GSC_OUT_CURR_GET_INDEX(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GSC_MAX_DST, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %26, %27
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %7, align 4
  br label %37

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %21

37:                                               ; preds = %31, %21
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GSC_MAX_DST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %43 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DRM_DEV_ERROR(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %60

48:                                               ; preds = %37
  %49 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @gsc_dst_set_buf_seq(%struct.gsc_context* %49, i32 %50, i32 0)
  %52 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %53 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %48, %41
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, ...) #1

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @GSC_OUT_CURR_GET_INDEX(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @gsc_dst_set_buf_seq(%struct.gsc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
