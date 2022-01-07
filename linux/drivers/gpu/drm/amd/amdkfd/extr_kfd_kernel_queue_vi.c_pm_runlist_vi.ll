; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_runlist_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_runlist_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.kfd_dev* }
%struct.kfd_dev = type { i32 }
%struct.pm4_mes_runlist = type { %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@IT_RUN_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32*, i32, i64, i32)* @pm_runlist_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_runlist_vi(%struct.packet_manager* %0, i32* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.packet_manager*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pm4_mes_runlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.kfd_dev*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %16 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.kfd_dev*, %struct.kfd_dev** %18, align 8
  store %struct.kfd_dev* %19, %struct.kfd_dev** %14, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %78

29:                                               ; preds = %5
  %30 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %31 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.kfd_dev*, %struct.kfd_dev** %14, align 8
  %36 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @min(i32 %34, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = bitcast i32* %39 to %struct.pm4_mes_runlist*
  store %struct.pm4_mes_runlist* %40, %struct.pm4_mes_runlist** %12, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @memset(i32* %41, i32 0, i32 48)
  %43 = load i32, i32* @IT_RUN_LIST, align 4
  %44 = call i32 @pm_build_pm4_header(i32 %43, i32 48)
  %45 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %12, align 8
  %46 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %12, align 8
  %50 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %12, align 8
  %57 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %12, align 8
  %60 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %12, align 8
  %63 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %12, align 8
  %67 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @lower_32_bits(i32 %69)
  %71 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %12, align 8
  %72 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = load %struct.pm4_mes_runlist*, %struct.pm4_mes_runlist** %12, align 8
  %76 = getelementptr inbounds %struct.pm4_mes_runlist, %struct.pm4_mes_runlist* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %29, %26
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i64 @WARN_ON(i32) #1

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
