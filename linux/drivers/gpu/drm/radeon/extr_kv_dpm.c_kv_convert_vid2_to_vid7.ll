; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_convert_vid2_to_vid7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_convert_vid2_to_vid7.c"
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

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*, %struct.sumo_vid_mapping_table*, i64)* @kv_convert_vid2_to_vid7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kv_convert_vid2_to_vid7(%struct.radeon_device* %0, %struct.sumo_vid_mapping_table* %1, i64 %2) #0 {
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
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %25 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %30 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  br label %87

36:                                               ; preds = %22
  %37 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %38 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %4, align 8
  br label %87

47:                                               ; preds = %17, %3
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %73, %47
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %51 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %56 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %66 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %4, align 8
  br label %87

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %48

76:                                               ; preds = %48
  %77 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %78 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %6, align 8
  %81 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %76, %64, %36, %28
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
