; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_gfx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_gfx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.radeon_ring* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@CP_MAX_CONTEXT = common dso_local global i32 0, align 4
@CP_ENDIAN_SWAP = common dso_local global i32 0, align 4
@CP_DEVICE_ID = common dso_local global i32 0, align 4
@cik_default_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"radeon: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_SET_BASE = common dso_local global i32 0, align 4
@CE_PARTITION_BASE = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@cik_default_state = common dso_local global i32* null, align 8
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_cp_gfx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_cp_gfx_start(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %10
  store %struct.radeon_ring* %11, %struct.radeon_ring** %4, align 8
  %12 = load i32, i32* @CP_MAX_CONTEXT, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @WREG32(i32 %12, i32 %18)
  %20 = load i32, i32* @CP_ENDIAN_SWAP, align 4
  %21 = call i32 @WREG32(i32 %20, i32 0)
  %22 = load i32, i32* @CP_DEVICE_ID, align 4
  %23 = call i32 @WREG32(i32 %22, i32 1)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @cik_cp_gfx_enable(%struct.radeon_device* %24, i32 1)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %28 = load i32, i32* @cik_default_size, align 4
  %29 = add nsw i32 %28, 17
  %30 = call i32 @radeon_ring_lock(%struct.radeon_device* %26, %struct.radeon_ring* %27, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %107

37:                                               ; preds = %1
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %39 = load i32, i32* @PACKET3_SET_BASE, align 4
  %40 = call i32 @PACKET3(i32 %39, i32 2)
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %43 = load i32, i32* @CE_PARTITION_BASE, align 4
  %44 = call i32 @PACKET3_BASE_INDEX(i32 %43)
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %44)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %47 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 32768)
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %48, i32 32768)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %51 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %52 = call i32 @PACKET3(i32 %51, i32 0)
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %52)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %55 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 %55)
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %58 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %59 = call i32 @PACKET3(i32 %58, i32 1)
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 %59)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 -2147483648)
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %64 = call i32 @radeon_ring_write(%struct.radeon_ring* %63, i32 -2147483648)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %77, %37
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @cik_default_size, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %71 = load i32*, i32** @cik_default_state, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @radeon_ring_write(%struct.radeon_ring* %70, i32 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %82 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %83 = call i32 @PACKET3(i32 %82, i32 0)
  %84 = call i32 @radeon_ring_write(%struct.radeon_ring* %81, i32 %83)
  %85 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %86 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %87 = call i32 @radeon_ring_write(%struct.radeon_ring* %85, i32 %86)
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %89 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %90 = call i32 @PACKET3(i32 %89, i32 0)
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %88, i32 %90)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %93 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 0)
  %94 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %95 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %96 = call i32 @PACKET3(i32 %95, i32 2)
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %94, i32 %96)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %99 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 790)
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %101 = call i32 @radeon_ring_write(%struct.radeon_ring* %100, i32 14)
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %102, i32 16)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %106 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %104, %struct.radeon_ring* %105, i32 0)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %80, %33
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @cik_cp_gfx_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_BASE_INDEX(i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
