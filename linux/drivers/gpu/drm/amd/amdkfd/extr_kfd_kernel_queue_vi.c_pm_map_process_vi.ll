; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_map_process_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_map_process_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.qcm_process_device = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.pm4_mes_map_process = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@IT_MAP_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32*, %struct.qcm_process_device*)* @pm_map_process_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_map_process_vi(%struct.packet_manager* %0, i32* %1, %struct.qcm_process_device* %2) #0 {
  %4 = alloca %struct.packet_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qcm_process_device*, align 8
  %7 = alloca %struct.pm4_mes_map_process*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.qcm_process_device* %2, %struct.qcm_process_device** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.pm4_mes_map_process*
  store %struct.pm4_mes_map_process* %9, %struct.pm4_mes_map_process** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @memset(i32* %10, i32 0, i32 64)
  %12 = load i32, i32* @IT_MAP_PROCESS, align 4
  %13 = call i32 @pm_build_pm4_header(i32 %12, i32 64)
  %14 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %15 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %18 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %24 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %27 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %30 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %29, i32 0, i32 12
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %37 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %40 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %43 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %46 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %49 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %52 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %55 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %58 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %61 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %64 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %3
  br label %72

68:                                               ; preds = %3
  %69 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %70 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i32 [ 0, %67 ], [ %71, %68 ]
  %74 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %75 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %78 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %81 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %83 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %86 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %88 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %91 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %93 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %96 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %98 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %101 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %103 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @lower_32_bits(i32 %104)
  %106 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %107 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %109 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @upper_32_bits(i32 %110)
  %112 = load %struct.pm4_mes_map_process*, %struct.pm4_mes_map_process** %7, align 8
  %113 = getelementptr inbounds %struct.pm4_mes_map_process, %struct.pm4_mes_map_process* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
