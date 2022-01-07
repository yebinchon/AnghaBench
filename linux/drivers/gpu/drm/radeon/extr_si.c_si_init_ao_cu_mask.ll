; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_ao_cu_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_ao_cu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@RLC_PG_AO_CU_MASK = common dso_local global i32 0, align 4
@RLC_MAX_PG_CU = common dso_local global i32 0, align 4
@MAX_PU_CU_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_init_ao_cu_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_init_ao_cu_mask(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %78, %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %12, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %21, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %20
  store i64 1, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %58, %28
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %30, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %29
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @si_get_cu_active_bitmap(%struct.radeon_device* %38, i64 %39, i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %52, %37
  %56 = load i64, i64* %7, align 8
  %57 = shl i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %5, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %29

61:                                               ; preds = %29
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %3, align 8
  %67 = mul nsw i64 %66, 16
  %68 = load i64, i64* %4, align 8
  %69 = mul nsw i64 %68, 8
  %70 = add nsw i64 %67, %69
  %71 = shl i64 %65, %70
  %72 = load i64, i64* %10, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %61
  %75 = load i64, i64* %4, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %20

77:                                               ; preds = %20
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %3, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %3, align 8
  br label %11

81:                                               ; preds = %11
  %82 = load i32, i32* @RLC_PG_AO_CU_MASK, align 4
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @WREG32(i32 %82, i64 %83)
  %85 = load i32, i32* @RLC_MAX_PG_CU, align 4
  %86 = call i64 @RREG32(i32 %85)
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* @MAX_PU_CU_MASK, align 8
  %88 = xor i64 %87, -1
  %89 = load i64, i64* %10, align 8
  %90 = and i64 %89, %88
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @MAX_PU_CU(i64 %91)
  %93 = load i64, i64* %10, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %10, align 8
  %95 = load i32, i32* @RLC_MAX_PG_CU, align 4
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @WREG32(i32 %95, i64 %96)
  ret void
}

declare dso_local i64 @si_get_cu_active_bitmap(%struct.radeon_device*, i64, i64) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i64 @MAX_PU_CU(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
