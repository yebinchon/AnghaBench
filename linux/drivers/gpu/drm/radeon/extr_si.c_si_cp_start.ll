; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_cp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_cp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring*, %struct.TYPE_4__ }
%struct.radeon_ring = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"radeon: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_ME_INITIALIZE = common dso_local global i32 0, align 4
@PACKET3_SET_BASE = common dso_local global i32 0, align 4
@CE_PARTITION_BASE = common dso_local global i32 0, align 4
@si_default_size = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@si_default_state = common dso_local global i32* null, align 8
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_cp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_cp_start(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %10
  store %struct.radeon_ring* %11, %struct.radeon_ring** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %14 = call i32 @radeon_ring_lock(%struct.radeon_device* %12, %struct.radeon_ring* %13, i32 11)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %152

21:                                               ; preds = %1
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %23 = load i32, i32* @PACKET3_ME_INITIALIZE, align 4
  %24 = call i32 @PACKET3(i32 %23, i32 5)
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %24)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 1)
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %29 = call i32 @radeon_ring_write(%struct.radeon_ring* %28, i32 0)
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %36)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %39 = call i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32 1)
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 %39)
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %41, i32 0)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 0)
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %46 = load i32, i32* @PACKET3_SET_BASE, align 4
  %47 = call i32 @PACKET3(i32 %46, i32 2)
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %45, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %50 = load i32, i32* @CE_PARTITION_BASE, align 4
  %51 = call i32 @PACKET3_BASE_INDEX(i32 %50)
  %52 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %51)
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 49152)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 57344)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %59 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %57, %struct.radeon_ring* %58, i32 0)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = call i32 @si_cp_enable(%struct.radeon_device* %60, i32 1)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %64 = load i32, i32* @si_default_size, align 4
  %65 = add nsw i32 %64, 10
  %66 = call i32 @radeon_ring_lock(%struct.radeon_device* %62, %struct.radeon_ring* %63, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %21
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %152

73:                                               ; preds = %21
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %75 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %76 = call i32 @PACKET3(i32 %75, i32 0)
  %77 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 %76)
  %78 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %79 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %80 = call i32 @radeon_ring_write(%struct.radeon_ring* %78, i32 %79)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %93, %73
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @si_default_size, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %87 = load i32*, i32** @si_default_state, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 %91)
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %81

96:                                               ; preds = %81
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %98 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %99 = call i32 @PACKET3(i32 %98, i32 0)
  %100 = call i32 @radeon_ring_write(%struct.radeon_ring* %97, i32 %99)
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %102 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %101, i32 %102)
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %105 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %106 = call i32 @PACKET3(i32 %105, i32 0)
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %104, i32 %106)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 0)
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %111 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %112 = call i32 @PACKET3(i32 %111, i32 2)
  %113 = call i32 @radeon_ring_write(%struct.radeon_ring* %110, i32 %112)
  %114 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %115 = call i32 @radeon_ring_write(%struct.radeon_ring* %114, i32 790)
  %116 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %117 = call i32 @radeon_ring_write(%struct.radeon_ring* %116, i32 14)
  %118 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %119 = call i32 @radeon_ring_write(%struct.radeon_ring* %118, i32 16)
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %122 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %120, %struct.radeon_ring* %121, i32 0)
  %123 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %148, %96
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @CAYMAN_RING_TYPE_CP2_INDEX, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %125
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 0
  %132 = load %struct.radeon_ring*, %struct.radeon_ring** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %132, i64 %134
  store %struct.radeon_ring* %135, %struct.radeon_ring** %4, align 8
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %138 = call i32 @radeon_ring_lock(%struct.radeon_device* %136, %struct.radeon_ring* %137, i32 2)
  store i32 %138, i32* %5, align 4
  %139 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %140 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %141 = call i32 @PACKET3_COMPUTE(i32 %140, i32 0)
  %142 = call i32 @radeon_ring_write(%struct.radeon_ring* %139, i32 %141)
  %143 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %144 = call i32 @radeon_ring_write(%struct.radeon_ring* %143, i32 0)
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %147 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %145, %struct.radeon_ring* %146, i32 0)
  br label %148

148:                                              ; preds = %129
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %125

151:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %69, %17
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32) #1

declare dso_local i32 @PACKET3_BASE_INDEX(i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @si_cp_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @PACKET3_COMPUTE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
