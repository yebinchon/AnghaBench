; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs400.c_rs400_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs400.c_rs400_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@RADEON_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed initializing CP (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rs400_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs400_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @r100_set_common_regs(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @rs400_mc_program(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i32 @r300_clock_startup(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @rs400_gpu_init(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @r100_enable_bm(%struct.radeon_device* %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i32 @rs400_gart_enable(%struct.radeon_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %88

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i32 @radeon_wb_init(%struct.radeon_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %88

28:                                               ; preds = %21
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %31 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %88

41:                                               ; preds = %28
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %88

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = call i32 @r100_irq_set(%struct.radeon_device* %56)
  %58 = load i32, i32* @RADEON_HOST_PATH_CNTL, align 4
  %59 = call i32 @RREG32(i32 %58)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = call i32 @r100_cp_init(%struct.radeon_device* %64, i32 1048576)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %55
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %88

75:                                               ; preds = %55
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %80, %68, %52, %34, %26, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @r100_set_common_regs(%struct.radeon_device*) #1

declare dso_local i32 @rs400_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @r300_clock_startup(%struct.radeon_device*) #1

declare dso_local i32 @rs400_gpu_init(%struct.radeon_device*) #1

declare dso_local i32 @r100_enable_bm(%struct.radeon_device*) #1

declare dso_local i32 @rs400_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @r100_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @r100_cp_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
