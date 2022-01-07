; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_blank_dp_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_blank_dp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@evergreen_dp_offsets = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid dig_fe %d\0A\00", align 1
@EVERGREEN_DP_VID_STREAM_CNTL = common dso_local global i64 0, align 8
@EVERGREEN_DP_VID_STREAM_CNTL_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"dig %d , should be enable\0A\00", align 1
@EVERGREEN_DP_VID_STREAM_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"counter exceeds %d\0A\00", align 1
@EVERGREEN_DP_STEER_FIFO = common dso_local global i64 0, align 8
@EVERGREEN_DP_STEER_FIFO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @evergreen_blank_dp_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evergreen_blank_dp_output(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i64*, i64** @evergreen_dp_offsets, align 8
  %10 = call i32 @ARRAY_SIZE(i64* %9)
  %11 = icmp uge i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %102

15:                                               ; preds = %2
  %16 = load i64, i64* @EVERGREEN_DP_VID_STREAM_CNTL, align 8
  %17 = load i64*, i64** @evergreen_dp_offsets, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %16, %21
  %23 = call i32 @RREG32(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EVERGREEN_DP_VID_STREAM_CNTL_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %102

31:                                               ; preds = %15
  %32 = load i32, i32* @EVERGREEN_DP_VID_STREAM_CNTL_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i64, i64* @EVERGREEN_DP_VID_STREAM_CNTL, align 8
  %37 = load i64*, i64** @evergreen_dp_offsets, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %36, %41
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @WREG32(i64 %42, i32 %43)
  %45 = load i64, i64* @EVERGREEN_DP_VID_STREAM_CNTL, align 8
  %46 = load i64*, i64** @evergreen_dp_offsets, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  %52 = call i32 @RREG32(i64 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %63, %31
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %54, 32
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @EVERGREEN_DP_VID_STREAM_STATUS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %63, label %75

63:                                               ; preds = %61
  %64 = call i32 @msleep(i32 1)
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load i64, i64* @EVERGREEN_DP_VID_STREAM_CNTL, align 8
  %68 = load i64*, i64** @evergreen_dp_offsets, align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = call i32 @RREG32(i64 %73)
  store i32 %74, i32* %5, align 4
  br label %53

75:                                               ; preds = %61
  %76 = load i32, i32* %7, align 4
  %77 = icmp uge i32 %76, 32
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64, i64* @EVERGREEN_DP_STEER_FIFO, align 8
  %83 = load i64*, i64** @evergreen_dp_offsets, align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = call i32 @RREG32(i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @EVERGREEN_DP_STEER_FIFO_RESET, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i64, i64* @EVERGREEN_DP_STEER_FIFO, align 8
  %94 = load i64*, i64** @evergreen_dp_offsets, align 8
  %95 = load i32, i32* %4, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %93, %98
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @WREG32(i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %81, %28, %12
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
