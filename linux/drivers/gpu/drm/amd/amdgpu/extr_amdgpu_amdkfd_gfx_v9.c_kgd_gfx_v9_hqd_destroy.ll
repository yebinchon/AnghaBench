; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_hqd_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_hqd_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i64 }
%struct.v9_mqd = type { i64 }

@EIO = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@RLC_CP_SCHEDULERS = common dso_local global i32 0, align 4
@scheduler1 = common dso_local global i32 0, align 4
@DRAIN_PIPE = common dso_local global i32 0, align 4
@RESET_WAVES = common dso_local global i32 0, align 4
@mmCP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@mmCP_HQD_ACTIVE = common dso_local global i32 0, align 4
@CP_HQD_ACTIVE__ACTIVE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cp queue preemption time out.\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgd_gfx_v9_hqd_destroy(%struct.kgd_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kgd_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.v9_mqd*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %20 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %19)
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %14, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call %struct.v9_mqd* @get_mqd(i8* %21)
  store %struct.v9_mqd* %22, %struct.v9_mqd** %18, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %91

30:                                               ; preds = %6
  %31 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @acquire_queue(%struct.kgd_dev* %31, i32 %32, i32 %33)
  %35 = load %struct.v9_mqd*, %struct.v9_mqd** %18, align 8
  %36 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i32, i32* @GC, align 4
  %41 = load i32, i32* @RLC_CP_SCHEDULERS, align 4
  %42 = load i32, i32* @scheduler1, align 4
  %43 = call i32 @WREG32_FIELD15_RLC(i32 %40, i32 0, i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39, %30
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %50 [
    i32 129, label %46
    i32 128, label %48
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @DRAIN_PIPE, align 4
  store i32 %47, i32* %15, align 4
  br label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @RESET_WAVES, align 4
  store i32 %49, i32* %15, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @DRAIN_PIPE, align 4
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %50, %48, %46
  %53 = load i32, i32* @GC, align 4
  %54 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %55 = call i32 @SOC15_REG_OFFSET(i32 %53, i32 0, i32 %54)
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @WREG32_RLC(i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @HZ, align 4
  %60 = mul i32 %58, %59
  %61 = udiv i32 %60, 1000
  %62 = load i32, i32* @jiffies, align 4
  %63 = add i32 %61, %62
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %16, align 8
  br label %65

65:                                               ; preds = %52, %86
  %66 = load i32, i32* @GC, align 4
  %67 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %68 = call i32 @SOC15_REG_OFFSET(i32 %66, i32 0, i32 %67)
  %69 = call i32 @RREG32(i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @CP_HQD_ACTIVE__ACTIVE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  br label %88

75:                                               ; preds = %65
  %76 = load i32, i32* @jiffies, align 4
  %77 = load i64, i64* %16, align 8
  %78 = call i64 @time_after(i32 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %83 = call i32 @release_queue(%struct.kgd_dev* %82)
  %84 = load i32, i32* @ETIME, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %91

86:                                               ; preds = %75
  %87 = call i32 @usleep_range(i32 500, i32 1000)
  br label %65

88:                                               ; preds = %74
  %89 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %90 = call i32 @release_queue(%struct.kgd_dev* %89)
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %88, %80, %27
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local %struct.v9_mqd* @get_mqd(i8*) #1

declare dso_local i32 @acquire_queue(%struct.kgd_dev*, i32, i32) #1

declare dso_local i32 @WREG32_FIELD15_RLC(i32, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_RLC(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @release_queue(%struct.kgd_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
