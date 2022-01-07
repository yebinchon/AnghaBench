; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v2_2.c_uvd_v2_2_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v2_2.c_uvd_v2_2_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@CHIP_RV770 = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@RADEON_UVD_HEAP_SIZE = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@RADEON_UVD_STACK_SIZE = common dso_local global i32 0, align 4
@RADEON_UVD_SESSION_SIZE = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@UVD_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@UVD_LMI_ADDR_EXT = common dso_local global i32 0, align 4
@UVD_LMI_EXT40_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVD_VCPU_CHIP_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvd_v2_2_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CHIP_RV770, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i32 @uvd_v1_0_resume(%struct.radeon_device* %14)
  store i32 %15, i32* %2, align 4
  br label %123

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call i32 @radeon_uvd_resume(%struct.radeon_device* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %123

23:                                               ; preds = %16
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %4, align 4
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = call i32 @RADEON_GPU_PAGE_ALIGN(i64 %34)
  %36 = ashr i32 %35, 3
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @UVD_VCPU_CACHE_OFFSET0, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @WREG32(i32 %37, i32 %38)
  %40 = load i32, i32* @UVD_VCPU_CACHE_SIZE0, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @RADEON_UVD_HEAP_SIZE, align 4
  %47 = ashr i32 %46, 3
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @UVD_VCPU_CACHE_OFFSET1, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @WREG32(i32 %48, i32 %49)
  %51 = load i32, i32* @UVD_VCPU_CACHE_SIZE1, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @WREG32(i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @RADEON_UVD_STACK_SIZE, align 4
  %58 = load i32, i32* @RADEON_UVD_SESSION_SIZE, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %58, %62
  %64 = add nsw i32 %57, %63
  %65 = ashr i32 %64, 3
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @UVD_VCPU_CACHE_OFFSET2, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  %69 = load i32, i32* @UVD_VCPU_CACHE_SIZE2, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 28
  %77 = and i32 %76, 15
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @UVD_LMI_ADDR_EXT, align 4
  %79 = load i32, i32* %4, align 4
  %80 = shl i32 %79, 12
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 %81, 0
  %83 = or i32 %80, %82
  %84 = call i32 @WREG32(i32 %78, i32 %83)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 32
  %90 = and i32 %89, 255
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @UVD_LMI_EXT40_ADDR, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, 589824
  %94 = or i32 %93, -2147483648
  %95 = call i32 @WREG32(i32 %91, i32 %94)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %99 [
    i32 135, label %102
    i32 134, label %103
    i32 133, label %104
    i32 142, label %105
    i32 141, label %105
    i32 140, label %106
    i32 136, label %107
    i32 143, label %108
    i32 132, label %109
    i32 131, label %109
    i32 138, label %110
    i32 144, label %111
    i32 146, label %112
    i32 129, label %113
    i32 145, label %114
    i32 130, label %115
    i32 128, label %116
    i32 137, label %117
    i32 139, label %117
    i32 147, label %118
  ]

99:                                               ; preds = %23
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %123

102:                                              ; preds = %23
  store i32 16777221, i32* %5, align 4
  br label %119

103:                                              ; preds = %23
  store i32 16777222, i32* %5, align 4
  br label %119

104:                                              ; preds = %23
  store i32 16777223, i32* %5, align 4
  br label %119

105:                                              ; preds = %23, %23
  store i32 16777224, i32* %5, align 4
  br label %119

106:                                              ; preds = %23
  store i32 16777225, i32* %5, align 4
  br label %119

107:                                              ; preds = %23
  store i32 16777226, i32* %5, align 4
  br label %119

108:                                              ; preds = %23
  store i32 16777227, i32* %5, align 4
  br label %119

109:                                              ; preds = %23, %23
  store i32 16777228, i32* %5, align 4
  br label %119

110:                                              ; preds = %23
  store i32 16777230, i32* %5, align 4
  br label %119

111:                                              ; preds = %23
  store i32 16777231, i32* %5, align 4
  br label %119

112:                                              ; preds = %23
  store i32 16777232, i32* %5, align 4
  br label %119

113:                                              ; preds = %23
  store i32 16777233, i32* %5, align 4
  br label %119

114:                                              ; preds = %23
  store i32 16777234, i32* %5, align 4
  br label %119

115:                                              ; preds = %23
  store i32 16777236, i32* %5, align 4
  br label %119

116:                                              ; preds = %23
  store i32 16777237, i32* %5, align 4
  br label %119

117:                                              ; preds = %23, %23
  store i32 16777238, i32* %5, align 4
  br label %119

118:                                              ; preds = %23
  store i32 16777239, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102
  %120 = load i32, i32* @UVD_VCPU_CHIP_ID, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @WREG32(i32 %120, i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %99, %21, %13
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @uvd_v1_0_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_uvd_resume(%struct.radeon_device*) #1

declare dso_local i32 @RADEON_GPU_PAGE_ALIGN(i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
