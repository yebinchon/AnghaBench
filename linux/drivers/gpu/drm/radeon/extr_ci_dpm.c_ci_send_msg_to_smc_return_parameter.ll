; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_send_msg_to_smc_return_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_send_msg_to_smc_return_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PPSMC_Result_OK = common dso_local global i64 0, align 8
@SMC_MSG_ARG_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*, i32, i32*)* @ci_send_msg_to_smc_return_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ci_send_msg_to_smc_return_parameter(%struct.radeon_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @PPSMC_Result_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @SMC_MSG_ARG_0, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %14, %3
  %22 = load i64, i64* %7, align 8
  ret i64 %22
}

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
