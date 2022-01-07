; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_dpcd_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_dpcd_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)*, i32 }
%struct.drm_dp_aux_msg = type { i32, i64, i32, i8*, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@AUX_RETRY_INTERVAL = common dso_local global i64 0, align 8
@DP_AUX_NATIVE_REPLY_MASK = common dso_local global i32 0, align 4
@DP_AUX_NATIVE_REPLY_ACK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Too many retries, giving up. First error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*, i32, i32, i8*, i64)* @drm_dp_dpcd_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_dpcd_access(%struct.drm_dp_aux* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.drm_dp_aux*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_dp_aux_msg, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = call i32 @memset(%struct.drm_dp_aux_msg* %11, i32 0, i32 40)
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 3
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %6, align 8
  %26 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %79, %5
  %29 = load i32, i32* %12, align 4
  %30 = icmp ult i32 %29, 32
  br i1 %30, label %31, label %82

31:                                               ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i64, i64* @AUX_RETRY_INTERVAL, align 8
  %41 = load i64, i64* @AUX_RETRY_INTERVAL, align 8
  %42 = add nsw i64 %41, 100
  %43 = call i32 @usleep_range(i64 %40, i64 %42)
  br label %44

44:                                               ; preds = %39, %34, %31
  %45 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %6, align 8
  %46 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %45, i32 0, i32 0
  %47 = load i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)*, i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)** %46, align 8
  %48 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %6, align 8
  %49 = call i32 %47(%struct.drm_dp_aux* %48, %struct.drm_dp_aux_msg* %11)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DP_AUX_NATIVE_REPLY_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @DP_AUX_NATIVE_REPLY_ACK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %86

66:                                               ; preds = %60
  %67 = load i32, i32* @EPROTO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %15, align 4
  br label %72

69:                                               ; preds = %52
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %76, %73
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %28

82:                                               ; preds = %28
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %82, %65
  %87 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %6, align 8
  %88 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %15, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.drm_dp_aux_msg*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
