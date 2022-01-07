; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_get_clock_by_type_with_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_get_clock_by_type_with_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_clock_levels_with_voltage = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.smu10_hwmgr = type { %struct.smu10_clock_voltage_information }
%struct.smu10_clock_voltage_information = type { %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table* }
%struct.smu10_voltage_dependency_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, %struct.pp_clock_levels_with_voltage*)* @smu10_get_clock_by_type_with_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_get_clock_by_type_with_voltage(%struct.pp_hwmgr* %0, i32 %1, %struct.pp_clock_levels_with_voltage* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_clock_levels_with_voltage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.smu10_hwmgr*, align 8
  %10 = alloca %struct.smu10_clock_voltage_information*, align 8
  %11 = alloca %struct.smu10_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pp_clock_levels_with_voltage* %2, %struct.pp_clock_levels_with_voltage** %7, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smu10_hwmgr*
  store %struct.smu10_hwmgr* %15, %struct.smu10_hwmgr** %9, align 8
  %16 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %9, align 8
  %17 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %16, i32 0, i32 0
  store %struct.smu10_clock_voltage_information* %17, %struct.smu10_clock_voltage_information** %10, align 8
  store %struct.smu10_voltage_dependency_table* null, %struct.smu10_voltage_dependency_table** %11, align 8
  %18 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %19 = icmp eq %struct.smu10_clock_voltage_information* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %108

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %49 [
    i32 130, label %25
    i32 131, label %29
    i32 133, label %33
    i32 128, label %37
    i32 132, label %41
    i32 129, label %45
  ]

25:                                               ; preds = %23
  %26 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %27 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %26, i32 0, i32 5
  %28 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %27, align 8
  store %struct.smu10_voltage_dependency_table* %28, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %52

29:                                               ; preds = %23
  %30 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %31 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %30, i32 0, i32 4
  %32 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %31, align 8
  store %struct.smu10_voltage_dependency_table* %32, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %52

33:                                               ; preds = %23
  %34 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %35 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %34, i32 0, i32 3
  %36 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %35, align 8
  store %struct.smu10_voltage_dependency_table* %36, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %52

37:                                               ; preds = %23
  %38 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %39 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %38, i32 0, i32 2
  %40 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %39, align 8
  store %struct.smu10_voltage_dependency_table* %40, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %52

41:                                               ; preds = %23
  %42 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %43 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %42, i32 0, i32 1
  %44 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %43, align 8
  store %struct.smu10_voltage_dependency_table* %44, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %52

45:                                               ; preds = %23
  %46 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %47 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %46, i32 0, i32 0
  %48 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %47, align 8
  store %struct.smu10_voltage_dependency_table* %48, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %52

49:                                               ; preds = %23
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %108

52:                                               ; preds = %45, %41, %37, %33, %29, %25
  %53 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %54 = icmp eq %struct.smu10_voltage_dependency_table* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %57 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %108

63:                                               ; preds = %55
  %64 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %7, align 8
  %65 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  store i64 0, i64* %8, align 8
  br label %66

66:                                               ; preds = %104, %63
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %69 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  %73 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %74 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 10
  %81 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %7, align 8
  %82 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  %87 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %88 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %7, align 8
  %95 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %93, i32* %99, align 4
  %100 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %7, align 8
  %101 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %72
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %8, align 8
  br label %66

107:                                              ; preds = %66
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %60, %49, %20
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
