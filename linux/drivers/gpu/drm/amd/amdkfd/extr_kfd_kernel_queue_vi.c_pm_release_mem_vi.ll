; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_release_mem_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_release_mem_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm4_mec_release_mem = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IT_RELEASE_MEM = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_TS_EVENT = common dso_local global i32 0, align 4
@event_index___release_mem__end_of_pipe = common dso_local global i32 0, align 4
@cache_policy___release_mem__lru = common dso_local global i32 0, align 4
@data_sel___release_mem__send_32_bit_low = common dso_local global i32 0, align 4
@int_sel___release_mem__send_interrupt_after_write_confirm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @pm_release_mem_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_release_mem_vi(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pm4_mec_release_mem*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pm4_mec_release_mem*
  store %struct.pm4_mec_release_mem* %7, %struct.pm4_mec_release_mem** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @memset(i32* %8, i32 0, i32 64)
  %10 = load i32, i32* @IT_RELEASE_MEM, align 4
  %11 = call i32 @pm_build_pm4_header(i32 %10, i32 64)
  %12 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %13 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %16 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %17 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @event_index___release_mem__end_of_pipe, align 4
  %20 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %21 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 4
  %23 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %24 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %27 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @cache_policy___release_mem__lru, align 4
  %30 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %31 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 8
  %33 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %34 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @data_sel___release_mem__send_32_bit_low, align 4
  %37 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %38 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @int_sel___release_mem__send_interrupt_after_write_confirm, align 4
  %41 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %42 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = lshr i32 %44, 2
  %46 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %47 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @upper_32_bits(i32 %49)
  %51 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %52 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pm4_mec_release_mem*, %struct.pm4_mec_release_mem** %5, align 8
  %54 = getelementptr inbounds %struct.pm4_mec_release_mem, %struct.pm4_mec_release_mem* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
