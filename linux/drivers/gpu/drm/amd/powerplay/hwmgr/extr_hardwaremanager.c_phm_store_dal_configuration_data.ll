; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_store_dal_configuration_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_store_dal_configuration_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)*, i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)* }
%struct.amd_pp_display_configuration = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_store_dal_configuration_data(%struct.pp_hwmgr* %0, %struct.amd_pp_display_configuration* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.amd_pp_display_configuration*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.amd_pp_display_configuration* %1, %struct.amd_pp_display_configuration** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %9 = call i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr* %8)
  %10 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %11 = icmp eq %struct.amd_pp_display_configuration* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %111

15:                                               ; preds = %2
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.pp_hwmgr*, i32)* null, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)** %26, align 8
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %29 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %30 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %27(%struct.pp_hwmgr* %28, i32 %31)
  br label %33

33:                                               ; preds = %22, %15
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %37 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %42 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %41, i32 0, i32 5
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %59 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.pp_hwmgr*, i32)* null, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)** %68, align 8
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 %69(%struct.pp_hwmgr* %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %57
  %74 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %75 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)*, i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)** %77, align 8
  %79 = icmp eq i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %111

83:                                               ; preds = %73
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %85 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)*, i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %92 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)*, i32 (%struct.pp_hwmgr*, i32, i32, i32, i32)** %94, align 8
  %96 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %97 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %98 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %101 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %104 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %107 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 %95(%struct.pp_hwmgr* %96, i32 %99, i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %90, %83
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %80, %12
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
