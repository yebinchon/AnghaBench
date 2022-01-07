; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_uvd_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_uvd_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.phm_uvd_clock_voltage_dependency_table* }
%struct.phm_uvd_clock_voltage_dependency_table = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @smu8_get_uvd_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_get_uvd_level(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phm_uvd_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %11, align 8
  store %struct.phm_uvd_clock_voltage_dependency_table* %12, %struct.phm_uvd_clock_voltage_dependency_table** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %65 [
    i32 128, label %14
    i32 130, label %14
    i32 129, label %39
    i32 131, label %39
  ]

14:                                               ; preds = %3, %3
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %8, align 8
  %18 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %8, align 8
  %25 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %15

38:                                               ; preds = %33, %15
  br label %66

39:                                               ; preds = %3, %3
  %40 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %8, align 8
  %41 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %61, %39
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %8, align 8
  %51 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %49, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %64

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  br label %45

64:                                               ; preds = %59, %45
  br label %66

65:                                               ; preds = %3
  br label %66

66:                                               ; preds = %65, %64, %38
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
