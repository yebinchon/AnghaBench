; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_elb_voltages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_elb_voltages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64*, i64* }
%struct.TYPE_3__ = type { i64, i64*, i64* }

@SMU7_MAX_LEAKAGE_COUNT = common dso_local global i32 0, align 4
@ATOM_VIRTUAL_VOLTAGE_ID0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_get_elb_voltages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_elb_voltages(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smu7_hwmgr*, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %7, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = call i64 @atomctrl_get_leakage_id_from_efuse(%struct.pp_hwmgr* %13, i64* %6)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %99, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SMU7_MAX_LEAKAGE_COUNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %102

21:                                               ; preds = %17
  %22 = load i64, i64* @ATOM_VIRTUAL_VOLTAGE_ID0, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  store i64 %25, i64* %3, align 8
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @atomctrl_get_leakage_vddc_base_on_leakage(%struct.pp_hwmgr* %26, i64* %4, i64* %5, i64 %27, i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %98

31:                                               ; preds = %21
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %41 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %45 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %43, i64 %47
  store i64 %39, i64* %48, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %51 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %55 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  store i64 %49, i64* %58, align 8
  %59 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %60 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %38, %34, %31
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %74 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %78 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %76, i64 %80
  store i64 %72, i64* %81, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %84 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %88 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  store i64 %82, i64* %91, align 8
  %92 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %93 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %71, %67, %64
  br label %98

98:                                               ; preds = %97, %21
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %17

102:                                              ; preds = %17
  br label %103

103:                                              ; preds = %102, %1
  ret i32 0
}

declare dso_local i64 @atomctrl_get_leakage_id_from_efuse(%struct.pp_hwmgr*, i64*) #1

declare dso_local i64 @atomctrl_get_leakage_vddc_base_on_leakage(%struct.pp_hwmgr*, i64*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
