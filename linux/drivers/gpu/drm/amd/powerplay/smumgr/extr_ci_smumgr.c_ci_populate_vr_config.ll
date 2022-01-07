; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_vr_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_vr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.smu7_hwmgr = type { i64, i64, i64 }

@VR_SVI2_PLANE_1 = common dso_local global i32 0, align 4
@VRCONF_VDDGFX_SHIFT = common dso_local global i32 0, align 4
@SMU7_VOLTAGE_CONTROL_BY_SVID2 = common dso_local global i64 0, align 8
@VR_SVI2_PLANE_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VDDCshould be on SVI2 controller!\00", align 1
@VRCONF_VDDCI_SHIFT = common dso_local global i32 0, align 4
@SMU7_VOLTAGE_CONTROL_BY_GPIO = common dso_local global i64 0, align 8
@VR_SMIO_PATTERN_1 = common dso_local global i32 0, align 4
@VR_SMIO_PATTERN_2 = common dso_local global i32 0, align 4
@VRCONF_MVDD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_3__*)* @ci_populate_vr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_vr_config(%struct.pp_hwmgr* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.smu7_hwmgr*, align 8
  %6 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %10, %struct.smu7_hwmgr** %5, align 8
  %11 = load i32, i32* @VR_SVI2_PLANE_1, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @VRCONF_VDDGFX_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %20 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %21 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @VR_SVI2_PLANE_2, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %33

31:                                               ; preds = %2
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %35 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %36 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* @VR_SVI2_PLANE_2, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @VRCONF_VDDCI_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %64

48:                                               ; preds = %33
  %49 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_GPIO, align 8
  %50 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %51 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load i32, i32* @VR_SMIO_PATTERN_1, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @VRCONF_VDDCI_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %54, %48
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_GPIO, align 8
  %66 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %67 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i32, i32* @VR_SMIO_PATTERN_2, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @VRCONF_MVDD_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %70, %64
  ret i32 0
}

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
