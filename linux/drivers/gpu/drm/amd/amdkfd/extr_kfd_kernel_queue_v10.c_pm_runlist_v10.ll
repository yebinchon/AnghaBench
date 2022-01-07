; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_pm_runlist_v10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_pm_runlist_v10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.kfd_dev* }
%struct.kfd_dev = type { i32 }
%struct.pm4_mes_runlist = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@IT_RUN_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32*, i32, i64, i32)* @pm_runlist_v10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_runlist_v10(%struct.packet_manager* %0, i32* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.packet_manager*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pm4_mes_runlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kfd_dev*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.packet_manager*, %struct.packet_manager** %6, align 8
  %15 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %17, align 8
  store %struct.kfd_dev* %18, %struct.kfd_dev** %13, align 8
  %19 = load %struct.packet_manager*, %struct.packet_manager** %6, align 8
  %20 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.kfd_dev*, %struct.kfd_dev** %13, align 8
  %25 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @min(i32 %23, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = bitcast i32* %28 to %struct.pm4_mes_runlist*
  store %struct.pm4_mes_runlist* %29, %struct.pm4_mes_runlist** %11, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @memset(i32* %30, i32 0, i32 48)
  %32 = load i32, i32* @IT_RUN_LIST, align 4
  %33 = call i32 @pm_build_pm4_header(i32 %32, i32 48)
  %34 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %11, align 8
  %35 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %11, align 8
  %39 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %11, align 8
  %46 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %11, align 8
  %49 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %11, align 8
  %52 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %11, align 8
  %56 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @lower_32_bits(i32 %58)
  %60 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %11, align 8
  %61 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  %64 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %11, align 8
  %65 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  ret i32 0
}

declare dso_local i32 @min(i32, i32) #1

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
