; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_aux_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_aux_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_aux_msg = type { i32, i32, i32, i32, i32 }
%struct.aux_payload = type { i32, i32, i32, i32, i64, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@E2BIG = common dso_local global i32 0, align 4
@DP_AUX_NATIVE_WRITE = common dso_local global i32 0, align 4
@DP_AUX_I2C_READ = common dso_local global i32 0, align 4
@DP_AUX_I2C_MOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)* @dm_dp_aux_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_dp_aux_transfer(%struct.drm_dp_aux* %0, %struct.drm_dp_aux_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.drm_dp_aux_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aux_payload, align 8
  %8 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store %struct.drm_dp_aux_msg* %1, %struct.drm_dp_aux_msg** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %10 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 16
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @E2BIG, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %21 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 7
  store i32 %22, i32* %23, align 4
  %24 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %25 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %29 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %33 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 5
  store i32* %33, i32** %34, align 8
  %35 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %36 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DP_AUX_NATIVE_WRITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %44 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DP_AUX_I2C_READ, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %52 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %61 = call %struct.TYPE_2__* @TO_DM_AUX(%struct.drm_dp_aux* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dc_link_aux_transfer_raw(i32 %63, %struct.aux_payload* %7, i32* %8)
  store i32 %64, i32* %6, align 4
  %65 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %7, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %19
  %69 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %70 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %19
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %87 [
    i32 128, label %77
    i32 132, label %78
    i32 130, label %78
    i32 131, label %81
    i32 129, label %84
  ]

77:                                               ; preds = %75
  br label %87

78:                                               ; preds = %75, %75
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %87

81:                                               ; preds = %75
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %75, %84, %81, %78, %77
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %16
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dc_link_aux_transfer_raw(i32, %struct.aux_payload*, i32*) #1

declare dso_local %struct.TYPE_2__* @TO_DM_AUX(%struct.drm_dp_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
