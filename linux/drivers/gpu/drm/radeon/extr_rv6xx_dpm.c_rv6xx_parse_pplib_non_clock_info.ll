; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_parse_pplib_non_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_parse_pplib_non_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps*, %struct.radeon_ps* }
%struct.radeon_ps = type { i32, i64, i64, i8*, i32 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32, i32, i32 }

@RV6XX_DEFAULT_VCLK_FREQ = common dso_local global i64 0, align 8
@RV6XX_DEFAULT_DCLK_FREQ = common dso_local global i64 0, align 8
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UVDSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct._ATOM_PPLIB_NONCLOCK_INFO*)* @rv6xx_parse_pplib_non_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_parse_pplib_non_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct._ATOM_PPLIB_NONCLOCK_INFO* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %2, %struct._ATOM_PPLIB_NONCLOCK_INFO** %6, align 8
  %7 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %6, align 8
  %8 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le32_to_cpu(i32 %9)
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %6, align 8
  %14 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @le16_to_cpu(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %6, align 8
  %21 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @le16_to_cpu(i32 %22)
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @r600_is_uvd_state(i32 %28, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load i64, i64* @RV6XX_DEFAULT_VCLK_FREQ, align 8
  %36 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* @RV6XX_DEFAULT_DCLK_FREQ, align 8
  %39 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %46

41:                                               ; preds = %3
  %42 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store %struct.radeon_ps* %54, %struct.radeon_ps** %58, align 8
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %61 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UVDSTATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %68 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store %struct.radeon_ps* %67, %struct.radeon_ps** %71, align 8
  br label %72

72:                                               ; preds = %66, %59
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @r600_is_uvd_state(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
