; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_cg_clock_gating_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_cg_clock_gating_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_BARTS = common dso_local global i64 0, align 8
@barts_cgcg_cgls_enable = common dso_local global i32 0, align 4
@BARTS_CGCG_CGLS_ENABLE_LENGTH = common dso_local global i32 0, align 4
@CHIP_TURKS = common dso_local global i64 0, align 8
@turks_cgcg_cgls_enable = common dso_local global i32 0, align 4
@TURKS_CGCG_CGLS_ENABLE_LENGTH = common dso_local global i32 0, align 4
@CHIP_CAICOS = common dso_local global i64 0, align 8
@caicos_cgcg_cgls_enable = common dso_local global i32 0, align 4
@CAICOS_CGCG_CGLS_ENABLE_LENGTH = common dso_local global i32 0, align 4
@barts_cgcg_cgls_disable = common dso_local global i32 0, align 4
@BARTS_CGCG_CGLS_DISABLE_LENGTH = common dso_local global i32 0, align 4
@turks_cgcg_cgls_disable = common dso_local global i32 0, align 4
@TURKS_CGCG_CGLS_DISABLE_LENGTH = common dso_local global i32 0, align 4
@caicos_cgcg_cgls_disable = common dso_local global i32 0, align 4
@CAICOS_CGCG_CGLS_DISABLE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @btc_cg_clock_gating_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_cg_clock_gating_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHIP_BARTS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  store i32* @barts_cgcg_cgls_enable, i32** %6, align 8
  %16 = load i32, i32* @BARTS_CGCG_CGLS_ENABLE_LENGTH, align 4
  store i32 %16, i32* %5, align 4
  br label %36

17:                                               ; preds = %9
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_TURKS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  store i32* @turks_cgcg_cgls_enable, i32** %6, align 8
  %24 = load i32, i32* @TURKS_CGCG_CGLS_ENABLE_LENGTH, align 4
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %17
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHIP_CAICOS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  store i32* @caicos_cgcg_cgls_enable, i32** %6, align 8
  %32 = load i32, i32* @CAICOS_CGCG_CGLS_ENABLE_LENGTH, align 4
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %25
  br label %70

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %15
  br label %65

37:                                               ; preds = %2
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHIP_BARTS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  store i32* @barts_cgcg_cgls_disable, i32** %6, align 8
  %44 = load i32, i32* @BARTS_CGCG_CGLS_DISABLE_LENGTH, align 4
  store i32 %44, i32* %5, align 4
  br label %64

45:                                               ; preds = %37
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHIP_TURKS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  store i32* @turks_cgcg_cgls_disable, i32** %6, align 8
  %52 = load i32, i32* @TURKS_CGCG_CGLS_DISABLE_LENGTH, align 4
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %45
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CHIP_CAICOS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  store i32* @caicos_cgcg_cgls_disable, i32** %6, align 8
  %60 = load i32, i32* @CAICOS_CGCG_CGLS_DISABLE_LENGTH, align 4
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %53
  br label %70

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @btc_program_mgcg_hw_sequence(%struct.radeon_device* %66, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %61, %33
  ret void
}

declare dso_local i32 @btc_program_mgcg_hw_sequence(%struct.radeon_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
