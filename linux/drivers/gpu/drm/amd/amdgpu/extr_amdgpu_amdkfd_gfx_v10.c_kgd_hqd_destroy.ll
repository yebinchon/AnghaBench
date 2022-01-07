; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.v10_compute_mqd = type { i64 }

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
@ACTIVE = common dso_local global i32 0, align 4
@CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK = common dso_local global i32 0, align 4
@CP_HQD_IQ_TIMER = common dso_local global i32 0, align 4
@PROCESSING_IQ = common dso_local global i32 0, align 4
@RETRY_TYPE = common dso_local global i32 0, align 4
@WAIT_TIME = common dso_local global i32 0, align 4
@mmCP_HQD_IQ_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i8*, i32, i32, i32, i32)* @kgd_hqd_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_hqd_destroy(%struct.kgd_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %18 = alloca %struct.v10_compute_mqd*, align 8
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
  %22 = call %struct.v10_compute_mqd* @get_mqd(i8* %21)
  store %struct.v10_compute_mqd* %22, %struct.v10_compute_mqd** %18, align 8
  %23 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @acquire_queue(%struct.kgd_dev* %23, i32 %24, i32 %25)
  %27 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %18, align 8
  %28 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %6
  %32 = load i32, i32* @GC, align 4
  %33 = load i32, i32* @RLC_CP_SCHEDULERS, align 4
  %34 = load i32, i32* @scheduler1, align 4
  %35 = call i32 @WREG32_FIELD15(i32 %32, i32 0, i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %31, %6
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %42 [
    i32 129, label %38
    i32 128, label %40
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @DRAIN_PIPE, align 4
  store i32 %39, i32* %15, align 4
  br label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @RESET_WAVES, align 4
  store i32 %41, i32* %15, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @DRAIN_PIPE, align 4
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %42, %40, %38
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %47 = call i32 @SOC15_REG_OFFSET(i32 %45, i32 0, i32 %46)
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @HZ, align 4
  %52 = mul i32 %50, %51
  %53 = udiv i32 %52, 1000
  %54 = load i32, i32* @jiffies, align 4
  %55 = add i32 %53, %54
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %16, align 8
  br label %57

57:                                               ; preds = %44, %78
  %58 = load i32, i32* @GC, align 4
  %59 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %60 = call i32 @SOC15_REG_OFFSET(i32 %58, i32 0, i32 %59)
  %61 = call i32 @RREG32(i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @CP_HQD_ACTIVE__ACTIVE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %80

67:                                               ; preds = %57
  %68 = load i32, i32* @jiffies, align 4
  %69 = load i64, i64* %16, align 8
  %70 = call i64 @time_after(i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %75 = call i32 @release_queue(%struct.kgd_dev* %74)
  %76 = load i32, i32* @ETIME, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %83

78:                                               ; preds = %67
  %79 = call i32 @usleep_range(i32 500, i32 1000)
  br label %57

80:                                               ; preds = %66
  %81 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %82 = call i32 @release_queue(%struct.kgd_dev* %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local %struct.v10_compute_mqd* @get_mqd(i8*) #1

declare dso_local i32 @acquire_queue(%struct.kgd_dev*, i32, i32) #1

declare dso_local i32 @WREG32_FIELD15(i32, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

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
