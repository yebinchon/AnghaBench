; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hdcp.c_drm_hdcp_check_ksvs_revoked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hdcp.c_drm_hdcp_check_ksvs_revoked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64* }
%struct.drm_device = type { i32 }

@srm_data = common dso_local global %struct.TYPE_2__* null, align 8
@DRM_HDCP_KSV_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Revoked KSV is \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_hdcp_check_ksvs_revoked(%struct.drm_device* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

16:                                               ; preds = %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call i32 @drm_hdcp_request_srm(%struct.drm_device* %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %12, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i64*, i64** %12, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %16
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  store i32 0, i32* %4, align 4
  br label %101

37:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %94, %37
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %97

42:                                               ; preds = %38
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  store i64* %45, i64** %12, align 8
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %87, %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %46
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %80, %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @DRM_HDCP_KSV_LEN, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %83

66:                                               ; preds = %55
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @DRM_HDCP_KSV_LEN, align 8
  %69 = sub nsw i64 %68, 1
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %73 = load i64*, i64** %6, align 8
  %74 = call i32 @drm_hdcp_print_ksv(i64* %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 1, i32* %4, align 4
  br label %101

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %51

83:                                               ; preds = %65, %51
  %84 = load i64, i64* @DRM_HDCP_KSV_LEN, align 8
  %85 = load i64*, i64** %12, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 %84
  store i64* %86, i64** %12, align 8
  br label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %46

90:                                               ; preds = %46
  %91 = load i64, i64* @DRM_HDCP_KSV_LEN, align 8
  %92 = load i64*, i64** %6, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 %91
  store i64* %93, i64** %6, align 8
  br label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %38

97:                                               ; preds = %38
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @srm_data, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %71, %33, %15
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_hdcp_request_srm(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @drm_hdcp_print_ksv(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
