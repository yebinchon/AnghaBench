; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_program_response_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_program_response_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@RV770_SMC_SOFT_REGISTER_delay_vreg = common dso_local global i32 0, align 4
@RV770_SMC_SOFT_REGISTER_delay_bbias = common dso_local global i32 0, align 4
@RV770_SMC_SOFT_REGISTER_delay_acpi = common dso_local global i32 0, align 4
@RV770_SMC_SOFT_REGISTER_mclk_chg_timeout = common dso_local global i32 0, align 4
@RV770_SMC_SOFT_REGISTER_baby_step_timer = common dso_local global i32 0, align 4
@WEKIVA_A21 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_program_response_times(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1000, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1000, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27
  store i32 15000, i32* %5, align 4
  store i32 100000, i32* %6, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = call i32 @radeon_get_xclk(%struct.radeon_device* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sdiv i32 %36, 1600
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sdiv i32 %40, 1600
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %44, 1600
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sdiv i32 %48, 1600
  store i32 %49, i32* %10, align 4
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = load i32, i32* @RV770_SMC_SOFT_REGISTER_delay_vreg, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %50, i32 %51, i32 %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = load i32, i32* @RV770_SMC_SOFT_REGISTER_delay_bbias, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %54, i32 %55, i32 %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = load i32, i32* @RV770_SMC_SOFT_REGISTER_delay_acpi, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %58, i32 %59, i32 %60)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = load i32, i32* @RV770_SMC_SOFT_REGISTER_mclk_chg_timeout, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %62, i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

declare dso_local i32 @rv770_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
