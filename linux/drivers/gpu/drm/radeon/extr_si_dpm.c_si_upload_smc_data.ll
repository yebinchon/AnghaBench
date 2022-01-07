; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_upload_smc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_upload_smc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@SI_SMC_SOFT_REGISTER_crtc_index = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@SI_SMC_SOFT_REGISTER_mclk_change_block_cp_min = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_mclk_change_block_cp_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_upload_smc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_upload_smc_data(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_crtc*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_crtc* null, %struct.radeon_crtc** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %40, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %34, i64 %36
  %38 = load %struct.radeon_crtc*, %struct.radeon_crtc** %37, align 8
  store %struct.radeon_crtc* %38, %struct.radeon_crtc** %4, align 8
  br label %43

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %14

43:                                               ; preds = %30, %14
  %44 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %45 = icmp eq %struct.radeon_crtc* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %92

47:                                               ; preds = %43
  %48 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %49 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %92

53:                                               ; preds = %47
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = load i32, i32* @SI_SMC_SOFT_REGISTER_crtc_index, align 4
  %56 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %57 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @si_write_smc_soft_register(%struct.radeon_device* %54, i32 %55, i32 %58)
  %60 = load i64, i64* @PPSMC_Result_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %92

63:                                               ; preds = %53
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = load i32, i32* @SI_SMC_SOFT_REGISTER_mclk_change_block_cp_min, align 4
  %66 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %67 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %70 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %68, %71
  %73 = call i64 @si_write_smc_soft_register(%struct.radeon_device* %64, i32 %65, i32 %72)
  %74 = load i64, i64* @PPSMC_Result_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %92

77:                                               ; preds = %63
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = load i32, i32* @SI_SMC_SOFT_REGISTER_mclk_change_block_cp_max, align 4
  %80 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %81 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %84 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %82, %85
  %87 = call i64 @si_write_smc_soft_register(%struct.radeon_device* %78, i32 %79, i32 %86)
  %88 = load i64, i64* @PPSMC_Result_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %92

91:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %90, %76, %62, %52, %46, %12
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @si_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
