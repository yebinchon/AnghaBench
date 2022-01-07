; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_convert_vid7_to_vid2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_convert_vid7_to_vid2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.radeon_clock_voltage_dependency_table }
%struct.radeon_clock_voltage_dependency_table = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.sumo_vid_mapping_table = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*, %struct.sumo_vid_mapping_table*, i64)* @kv_convert_vid7_to_vid2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kv_convert_vid7_to_vid2(%struct.radeon_device* %0, %struct.sumo_vid_mapping_table* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.sumo_vid_mapping_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %9 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.sumo_vid_mapping_table* %1, %struct.sumo_vid_mapping_table** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.radeon_clock_voltage_dependency_table* %14, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %15 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %16 = icmp ne %struct.radeon_clock_voltage_dependency_table* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %3
  %18 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %31 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %4, align 8
  br label %90

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %47 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %90

50:                                               ; preds = %17, %3
  store i64 0, i64* %9, align 8
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %54 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %59 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %69 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %4, align 8
  br label %90

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %51

79:                                               ; preds = %51
  %80 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %81 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %84 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %79, %67, %45, %39
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
