; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_get_clock_by_type_with_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_get_clock_by_type_with_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_clock_levels_with_latency = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.smu10_hwmgr = type { %struct.smu10_clock_voltage_information }
%struct.smu10_clock_voltage_information = type { %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table* }
%struct.smu10_voltage_dependency_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, %struct.pp_clock_levels_with_latency*)* @smu10_get_clock_by_type_with_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_get_clock_by_type_with_latency(%struct.pp_hwmgr* %0, i32 %1, %struct.pp_clock_levels_with_latency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.smu10_hwmgr*, align 8
  %10 = alloca %struct.smu10_clock_voltage_information*, align 8
  %11 = alloca %struct.smu10_voltage_dependency_table*, align 8
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pp_clock_levels_with_latency* %2, %struct.pp_clock_levels_with_latency** %7, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smu10_hwmgr*
  store %struct.smu10_hwmgr* %16, %struct.smu10_hwmgr** %9, align 8
  %17 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %9, align 8
  %18 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %17, i32 0, i32 0
  store %struct.smu10_clock_voltage_information* %18, %struct.smu10_clock_voltage_information** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %20 = icmp eq %struct.smu10_clock_voltage_information* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %117

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %50 [
    i32 129, label %26
    i32 130, label %30
    i32 133, label %34
    i32 132, label %38
    i32 128, label %42
    i32 131, label %46
  ]

26:                                               ; preds = %24
  %27 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %28 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %27, i32 0, i32 5
  %29 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %28, align 8
  store %struct.smu10_voltage_dependency_table* %29, %struct.smu10_voltage_dependency_table** %11, align 8
  store i32 1, i32* %12, align 4
  br label %53

30:                                               ; preds = %24
  %31 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %32 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %31, i32 0, i32 4
  %33 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %32, align 8
  store %struct.smu10_voltage_dependency_table* %33, %struct.smu10_voltage_dependency_table** %11, align 8
  store i32 1, i32* %12, align 4
  br label %53

34:                                               ; preds = %24
  %35 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %36 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %35, i32 0, i32 3
  %37 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %36, align 8
  store %struct.smu10_voltage_dependency_table* %37, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %53

38:                                               ; preds = %24
  %39 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %40 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %39, i32 0, i32 2
  %41 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %40, align 8
  store %struct.smu10_voltage_dependency_table* %41, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %53

42:                                               ; preds = %24
  %43 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %44 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %43, i32 0, i32 1
  %45 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %44, align 8
  store %struct.smu10_voltage_dependency_table* %45, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %53

46:                                               ; preds = %24
  %47 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %10, align 8
  %48 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %47, i32 0, i32 0
  %49 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %48, align 8
  store %struct.smu10_voltage_dependency_table* %49, %struct.smu10_voltage_dependency_table** %11, align 8
  br label %53

50:                                               ; preds = %24
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %117

53:                                               ; preds = %46, %42, %38, %34, %30, %26
  %54 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %55 = icmp eq %struct.smu10_voltage_dependency_table* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %58 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %53
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %117

64:                                               ; preds = %56
  %65 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %66 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  store i64 0, i64* %8, align 8
  br label %67

67:                                               ; preds = %113, %64
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %70 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %116

73:                                               ; preds = %67
  %74 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %75 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 10
  %82 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %83 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %73
  %91 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %92 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %11, align 8
  %93 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @smu10_get_mem_latency(%struct.pp_hwmgr* %91, i32 %98)
  br label %101

100:                                              ; preds = %73
  br label %101

101:                                              ; preds = %100, %90
  %102 = phi i32 [ %99, %90 ], [ 0, %100 ]
  %103 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %104 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 %102, i32* %108, align 4
  %109 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %110 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %101
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %8, align 8
  br label %67

116:                                              ; preds = %67
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %61, %50, %21
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @smu10_get_mem_latency(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
