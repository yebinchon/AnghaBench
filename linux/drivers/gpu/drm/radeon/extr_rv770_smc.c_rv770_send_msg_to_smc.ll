; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_smc.c_rv770_send_msg_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_smc.c_rv770_send_msg_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PPSMC_Result_Failed = common dso_local global i64 0, align 8
@SMC_MSG = common dso_local global i32 0, align 4
@HOST_SMC_MSG_MASK = common dso_local global i32 0, align 4
@HOST_SMC_RESP_MASK = common dso_local global i32 0, align 4
@HOST_SMC_RESP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rv770_send_msg_to_smc(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = call i32 @rv770_is_smc_running(%struct.radeon_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @PPSMC_Result_Failed, align 8
  store i64 %13, i64* %3, align 8
  br label %54

14:                                               ; preds = %2
  %15 = load i32, i32* @SMC_MSG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @HOST_SMC_MSG(i32 %16)
  %18 = load i32, i32* @HOST_SMC_MSG_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = call i32 @WREG32_P(i32 %15, i32 %17, i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %40, %14
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load i32, i32* @SMC_MSG, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = load i32, i32* @HOST_SMC_RESP_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @HOST_SMC_RESP_SHIFT, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %43

38:                                               ; preds = %27
  %39 = call i32 @udelay(i32 1)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %21

43:                                               ; preds = %37, %21
  %44 = load i32, i32* @SMC_MSG, align 4
  %45 = call i32 @RREG32(i32 %44)
  %46 = load i32, i32* @HOST_SMC_RESP_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @HOST_SMC_RESP_SHIFT, align 4
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %43, %12
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i32 @rv770_is_smc_running(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @HOST_SMC_MSG(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
