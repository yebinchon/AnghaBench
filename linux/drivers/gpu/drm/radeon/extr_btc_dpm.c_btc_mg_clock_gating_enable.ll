; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_mg_clock_gating_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_mg_clock_gating_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_BARTS = common dso_local global i64 0, align 8
@barts_mgcg_enable = common dso_local global i32 0, align 4
@BARTS_MGCG_ENABLE_LENGTH = common dso_local global i32 0, align 4
@CHIP_TURKS = common dso_local global i64 0, align 8
@turks_mgcg_enable = common dso_local global i32 0, align 4
@TURKS_MGCG_ENABLE_LENGTH = common dso_local global i32 0, align 4
@CHIP_CAICOS = common dso_local global i64 0, align 8
@caicos_mgcg_enable = common dso_local global i32 0, align 4
@CAICOS_MGCG_ENABLE_LENGTH = common dso_local global i32 0, align 4
@barts_mgcg_disable = common dso_local global i32* null, align 8
@BARTS_MGCG_DISABLE_LENGTH = common dso_local global i32 0, align 4
@turks_mgcg_disable = common dso_local global i32* null, align 8
@TURKS_MGCG_DISABLE_LENGTH = common dso_local global i32 0, align 4
@caicos_mgcg_disable = common dso_local global i32* null, align 8
@CAICOS_MGCG_DISABLE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @btc_mg_clock_gating_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_mg_clock_gating_enable(%struct.radeon_device* %0, i32 %1) #0 {
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
  store i32* @barts_mgcg_enable, i32** %6, align 8
  %16 = load i32, i32* @BARTS_MGCG_ENABLE_LENGTH, align 4
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
  store i32* @turks_mgcg_enable, i32** %6, align 8
  %24 = load i32, i32* @TURKS_MGCG_ENABLE_LENGTH, align 4
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
  store i32* @caicos_mgcg_enable, i32** %6, align 8
  %32 = load i32, i32* @CAICOS_MGCG_ENABLE_LENGTH, align 4
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %25
  br label %76

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %15
  br label %71

37:                                               ; preds = %2
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHIP_BARTS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** @barts_mgcg_disable, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32* %45, i32** %6, align 8
  %46 = load i32, i32* @BARTS_MGCG_DISABLE_LENGTH, align 4
  store i32 %46, i32* %5, align 4
  br label %70

47:                                               ; preds = %37
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CHIP_TURKS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** @turks_mgcg_disable, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32* %55, i32** %6, align 8
  %56 = load i32, i32* @TURKS_MGCG_DISABLE_LENGTH, align 4
  store i32 %56, i32* %5, align 4
  br label %69

57:                                               ; preds = %47
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CHIP_CAICOS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32*, i32** @caicos_mgcg_disable, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32* %65, i32** %6, align 8
  %66 = load i32, i32* @CAICOS_MGCG_DISABLE_LENGTH, align 4
  store i32 %66, i32* %5, align 4
  br label %68

67:                                               ; preds = %57
  br label %76

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %36
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @btc_program_mgcg_hw_sequence(%struct.radeon_device* %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %67, %33
  ret void
}

declare dso_local i32 @btc_program_mgcg_hw_sequence(%struct.radeon_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
