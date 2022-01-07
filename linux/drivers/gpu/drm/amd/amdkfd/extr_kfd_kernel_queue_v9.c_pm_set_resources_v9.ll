; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_set_resources_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_set_resources_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.scheduling_resources = type { i32, i32, i32, i32, i32, i32 }
%struct.pm4_mes_set_resources = type { i8*, i8*, i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IT_SET_RESOURCES = common dso_local global i32 0, align 4
@queue_type__mes_set_resources__hsa_interface_queue_hiq = common dso_local global i32 0, align 4
@KFD_UNMAP_LATENCY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32*, %struct.scheduling_resources*)* @pm_set_resources_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_set_resources_v9(%struct.packet_manager* %0, i32* %1, %struct.scheduling_resources* %2) #0 {
  %4 = alloca %struct.packet_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.scheduling_resources*, align 8
  %7 = alloca %struct.pm4_mes_set_resources*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.scheduling_resources* %2, %struct.scheduling_resources** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.pm4_mes_set_resources*
  store %struct.pm4_mes_set_resources* %9, %struct.pm4_mes_set_resources** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @memset(i32* %10, i32 0, i32 64)
  %12 = load i32, i32* @IT_SET_RESOURCES, align 4
  %13 = call i32 @pm_build_pm4_header(i32 %12, i32 64)
  %14 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %15 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @queue_type__mes_set_resources__hsa_interface_queue_hiq, align 4
  %18 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %19 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load %struct.scheduling_resources*, %struct.scheduling_resources** %6, align 8
  %22 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %25 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @KFD_UNMAP_LATENCY_MS, align 4
  %28 = sdiv i32 %27, 100
  %29 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %30 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.scheduling_resources*, %struct.scheduling_resources** %6, align 8
  %33 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %36 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.scheduling_resources*, %struct.scheduling_resources** %6, align 8
  %39 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %42 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.scheduling_resources*, %struct.scheduling_resources** %6, align 8
  %45 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %48 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.scheduling_resources*, %struct.scheduling_resources** %6, align 8
  %51 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @lower_32_bits(i32 %52)
  %54 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %55 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.scheduling_resources*, %struct.scheduling_resources** %6, align 8
  %57 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @upper_32_bits(i32 %58)
  %60 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %61 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.scheduling_resources*, %struct.scheduling_resources** %6, align 8
  %63 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @lower_32_bits(i32 %64)
  %66 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %67 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.scheduling_resources*, %struct.scheduling_resources** %6, align 8
  %69 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @upper_32_bits(i32 %70)
  %72 = load %struct.pm4_mes_set_resources*, %struct.pm4_mes_set_resources** %7, align 8
  %73 = getelementptr inbounds %struct.pm4_mes_set_resources, %struct.pm4_mes_set_resources* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
