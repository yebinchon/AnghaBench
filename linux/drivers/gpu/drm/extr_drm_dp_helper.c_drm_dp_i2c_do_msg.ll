; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_i2c_do_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_i2c_do_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { {}*, i32, i32 }
%struct.drm_dp_aux_msg = type { i32, i32 }

@dp_aux_i2c_speed_khz = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"transaction timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"transaction failed: %d\0A\00", align 1
@DP_AUX_NATIVE_REPLY_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"native nack (result=%d, size=%zu)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"native defer\0A\00", align 1
@AUX_RETRY_INTERVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid native reply %#04x\0A\00", align 1
@DP_AUX_I2C_REPLY_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"I2C nack (result=%d, size=%zu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"I2C defer\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"invalid I2C reply %#04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"too many retries, giving up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)* @drm_dp_i2c_do_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_i2c_do_msg(%struct.drm_dp_aux* %0, %struct.drm_dp_aux_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.drm_dp_aux_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store %struct.drm_dp_aux_msg* %1, %struct.drm_dp_aux_msg** %5, align 8
  %10 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %11 = load i32, i32* @dp_aux_i2c_speed_khz, align 4
  %12 = call i32 @drm_dp_i2c_retry_count(%struct.drm_dp_aux_msg* %10, i32 %11)
  %13 = call i32 @max(i32 7, i32 %12)
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %130, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %16, %17
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %133

20:                                               ; preds = %14
  %21 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %22 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)**
  %24 = load i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)*, i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)** %23, align 8
  %25 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %26 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %27 = call i32 %24(%struct.drm_dp_aux* %25, %struct.drm_dp_aux_msg* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %130

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @DRM_DEBUG_KMS_RATELIMITED(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %41
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %137

48:                                               ; preds = %20
  %49 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %50 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DP_AUX_NATIVE_REPLY_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %69 [
    i32 130, label %54
    i32 128, label %55
    i32 129, label %63
  ]

54:                                               ; preds = %48
  br label %76

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %58 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load i32, i32* @EREMOTEIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %137

63:                                               ; preds = %48
  %64 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @AUX_RETRY_INTERVAL, align 4
  %66 = load i32, i32* @AUX_RETRY_INTERVAL, align 4
  %67 = add nsw i32 %66, 100
  %68 = call i32 @usleep_range(i32 %65, i32 %67)
  br label %130

69:                                               ; preds = %48
  %70 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %71 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EREMOTEIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %137

76:                                               ; preds = %54
  %77 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %78 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DP_AUX_I2C_REPLY_MASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %123 [
    i32 133, label %82
    i32 131, label %93
    i32 132, label %105
  ]

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %85 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %90 = call i32 @drm_dp_i2c_msg_write_status_update(%struct.drm_dp_aux_msg* %89)
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %137

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %96 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %100 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @EREMOTEIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %137

105:                                              ; preds = %76
  %106 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %107 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %108 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %7, align 4
  %112 = icmp ult i32 %111, 7
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %105
  %117 = load i32, i32* @AUX_RETRY_INTERVAL, align 4
  %118 = load i32, i32* @AUX_RETRY_INTERVAL, align 4
  %119 = add nsw i32 %118, 100
  %120 = call i32 @usleep_range(i32 %117, i32 %119)
  %121 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %122 = call i32 @drm_dp_i2c_msg_write_status_update(%struct.drm_dp_aux_msg* %121)
  br label %130

123:                                              ; preds = %76
  %124 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %125 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EREMOTEIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %137

130:                                              ; preds = %116, %63, %35
  %131 = load i32, i32* %6, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %14

133:                                              ; preds = %14
  %134 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* @EREMOTEIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %123, %93, %91, %69, %55, %46
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @drm_dp_i2c_retry_count(%struct.drm_dp_aux_msg*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS_RATELIMITED(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_dp_i2c_msg_write_status_update(%struct.drm_dp_aux_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
