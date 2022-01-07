; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_pm_release_mem_v10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_pm_release_mem_v10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm4_mec_release_mem = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IT_RELEASE_MEM = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_TS_EVENT = common dso_local global i32 0, align 4
@event_index__mec_release_mem__end_of_pipe = common dso_local global i32 0, align 4
@cache_policy__mec_release_mem__lru = common dso_local global i32 0, align 4
@data_sel__mec_release_mem__send_32_bit_low = common dso_local global i32 0, align 4
@int_sel__mec_release_mem__send_interrupt_after_write_confirm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @pm_release_mem_v10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_release_mem_v10(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pm4_mec_release_mem*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.pm4_mec_release_mem*
  store %struct.pm4_mec_release_mem* %12, %struct.pm4_mec_release_mem** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @memset(i32* %13, i32 0, i32 48)
  %15 = load i32, i32* @IT_RELEASE_MEM, align 4
  %16 = call i32 @pm_build_pm4_header(i32 %15, i32 48)
  %17 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %18 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %21 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %22 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @event_index__mec_release_mem__end_of_pipe, align 4
  %25 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %26 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %29 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %32 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* @cache_policy__mec_release_mem__lru, align 4
  %35 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %36 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @data_sel__mec_release_mem__send_32_bit_low, align 4
  %39 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %40 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @int_sel__mec_release_mem__send_interrupt_after_write_confirm, align 4
  %43 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %44 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = lshr i32 %46, 2
  %48 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %49 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @upper_32_bits(i32 %51)
  %53 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %54 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %56 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  ret i32 12
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
