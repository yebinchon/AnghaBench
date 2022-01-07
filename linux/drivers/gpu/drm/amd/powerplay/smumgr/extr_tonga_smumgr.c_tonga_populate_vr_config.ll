; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_vr_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_vr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.smu7_hwmgr = type { i64, i64, i64, i64 }

@SMU7_VOLTAGE_CONTROL_BY_SVID2 = common dso_local global i64 0, align 8
@VR_SVI2_PLANE_1 = common dso_local global i32 0, align 4
@VRCONF_VDDGFX_SHIFT = common dso_local global i32 0, align 4
@VR_SVI2_PLANE_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"VDDC and VDDGFX should be both on SVI2 control in splitted mode !\0A\00", align 1
@VR_MERGED_WITH_VDDC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"VDDC should be on SVI2 control in merged mode !\0A\00", align 1
@VRCONF_VDDCI_SHIFT = common dso_local global i32 0, align 4
@SMU7_VOLTAGE_CONTROL_BY_GPIO = common dso_local global i64 0, align 8
@VR_SMIO_PATTERN_1 = common dso_local global i32 0, align 4
@VR_SMIO_PATTERN_2 = common dso_local global i32 0, align 4
@VRCONF_MVDD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_3__*)* @tonga_populate_vr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_populate_vr_config(%struct.pp_hwmgr* %0, %struct.TYPE_3__* %1) #0 {
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
  %11 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %12 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %13 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i32, i32* @VR_SVI2_PLANE_1, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @VRCONF_VDDGFX_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %26 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %27 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  %31 = load i32, i32* @VR_SVI2_PLANE_2, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %39

37:                                               ; preds = %16
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  br label %64

40:                                               ; preds = %2
  %41 = load i32, i32* @VR_MERGED_WITH_VDDC, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @VRCONF_VDDGFX_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %50 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %51 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load i32, i32* @VR_SVI2_PLANE_1, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %63

61:                                               ; preds = %40
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %54
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %66 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %67 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i32, i32* @VR_SVI2_PLANE_2, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @VRCONF_VDDCI_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %95

79:                                               ; preds = %64
  %80 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_GPIO, align 8
  %81 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %82 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32, i32* @VR_SMIO_PATTERN_1, align 4
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @VRCONF_VDDCI_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85, %79
  br label %95

95:                                               ; preds = %94, %70
  %96 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_GPIO, align 8
  %97 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %98 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load i32, i32* @VR_SMIO_PATTERN_2, align 4
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @VRCONF_MVDD_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %101, %95
  ret i32 0
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
