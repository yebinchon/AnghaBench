; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_uvd_clock_voltage_limit_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_uvd_clock_voltage_limit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.phm_uvd_clock_voltage_dependency_table = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_uvd_clock_voltage_dependency_table**, %struct.TYPE_12__*, %struct.TYPE_10__*)* @get_uvd_clock_voltage_limit_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_uvd_clock_voltage_limit_table(%struct.pp_hwmgr* %0, %struct.phm_uvd_clock_voltage_dependency_table** %1, %struct.TYPE_12__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca %struct.phm_uvd_clock_voltage_dependency_table**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.phm_uvd_clock_voltage_dependency_table*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store %struct.phm_uvd_clock_voltage_dependency_table** %1, %struct.phm_uvd_clock_voltage_dependency_table*** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 16, %17
  %19 = add i64 8, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.phm_uvd_clock_voltage_dependency_table* @kzalloc(i64 %20, i32 %21)
  store %struct.phm_uvd_clock_voltage_dependency_table* %22, %struct.phm_uvd_clock_voltage_dependency_table** %12, align 8
  %23 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %12, align 8
  %24 = icmp eq %struct.phm_uvd_clock_voltage_dependency_table* null, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %103

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %12, align 8
  %33 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %97, %28
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %51
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %13, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @le16_to_cpu(i32 %59)
  %61 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %12, align 8
  %62 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i64 %60, i64* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = shl i64 %69, 16
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @le16_to_cpu(i32 %73)
  %75 = or i64 %70, %74
  %76 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %12, align 8
  %77 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i64 %75, i64* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 %84, 16
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @le16_to_cpu(i32 %88)
  %90 = or i64 %85, %89
  %91 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %12, align 8
  %92 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  store i64 %90, i64* %96, align 8
  br label %97

97:                                               ; preds = %41
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %34

100:                                              ; preds = %34
  %101 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %12, align 8
  %102 = load %struct.phm_uvd_clock_voltage_dependency_table**, %struct.phm_uvd_clock_voltage_dependency_table*** %7, align 8
  store %struct.phm_uvd_clock_voltage_dependency_table* %101, %struct.phm_uvd_clock_voltage_dependency_table** %102, align 8
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %25
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.phm_uvd_clock_voltage_dependency_table* @kzalloc(i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
