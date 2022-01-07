; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_ls_clock_gating_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_ls_clock_gating_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_BARTS = common dso_local global i64 0, align 8
@barts_sysls_default = common dso_local global i32 0, align 4
@BARTS_SYSLS_DEFAULT_LENGTH = common dso_local global i32 0, align 4
@CHIP_TURKS = common dso_local global i64 0, align 8
@turks_sysls_default = common dso_local global i32 0, align 4
@TURKS_SYSLS_DEFAULT_LENGTH = common dso_local global i32 0, align 4
@CHIP_CAICOS = common dso_local global i64 0, align 8
@caicos_sysls_default = common dso_local global i32 0, align 4
@CAICOS_SYSLS_DEFAULT_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @btc_ls_clock_gating_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_ls_clock_gating_default(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_BARTS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  store i32* @barts_sysls_default, i32** %4, align 8
  %11 = load i32, i32* @BARTS_SYSLS_DEFAULT_LENGTH, align 4
  store i32 %11, i32* %3, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_TURKS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  store i32* @turks_sysls_default, i32** %4, align 8
  %19 = load i32, i32* @TURKS_SYSLS_DEFAULT_LENGTH, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %12
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_CAICOS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  store i32* @caicos_sysls_default, i32** %4, align 8
  %27 = load i32, i32* @CAICOS_SYSLS_DEFAULT_LENGTH, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %20
  br label %36

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %30, %10
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @btc_program_mgcg_hw_sequence(%struct.radeon_device* %32, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @btc_program_mgcg_hw_sequence(%struct.radeon_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
