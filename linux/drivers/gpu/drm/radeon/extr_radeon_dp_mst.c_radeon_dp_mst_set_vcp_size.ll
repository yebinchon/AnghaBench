; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_set_vcp_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_set_vcp_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { %struct.radeon_encoder_mst*, %struct.TYPE_2__ }
%struct.radeon_encoder_mst = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@NI_DP_MSE_RATE_CNTL = common dso_local global i32 0, align 4
@NI_DP_MSE_RATE_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"timed out wait for rate cntl %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_encoder*, i32)* @radeon_dp_mst_set_vcp_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_mst_set_vcp_size(%struct.radeon_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder_mst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %6, align 8
  %21 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %21, i32 0, i32 0
  %23 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %22, align 8
  store %struct.radeon_encoder_mst* %23, %struct.radeon_encoder_mst** %7, align 8
  %24 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @radeon_atom_set_enc_offset(i32 %26)
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @drm_fixp2int(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %12, align 4
  %32 = sub nsw i32 %30, %31
  %33 = shl i32 %32, 26
  %34 = call i32 @drm_fixp2int_ceil(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @NI_DP_MSE_RATE_X(i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @NI_DP_MSE_RATE_Y(i32 %37)
  %39 = or i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @NI_DP_MSE_RATE_CNTL, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @WREG32(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %59, %2
  %46 = load i32, i32* @NI_DP_MSE_RATE_UPDATE, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = call i32 @udelay(i32 10)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = icmp slt i32 %56, 10000
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ false, %51 ], [ %58, %55 ]
  br i1 %60, label %45, label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %11, align 4
  %63 = icmp sge i32 %62, 10000
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %66 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %61
  ret i32 0
}

declare dso_local i32 @radeon_atom_set_enc_offset(i32) #1

declare dso_local i32 @drm_fixp2int(i32) #1

declare dso_local i32 @drm_fixp2int_ceil(i32) #1

declare dso_local i32 @NI_DP_MSE_RATE_X(i32) #1

declare dso_local i32 @NI_DP_MSE_RATE_Y(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
