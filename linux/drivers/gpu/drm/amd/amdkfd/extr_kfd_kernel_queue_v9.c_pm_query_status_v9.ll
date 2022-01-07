; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_query_status_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_query_status_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.pm4_mes_query_status = type { i8*, i8*, i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@IT_QUERY_STATUS = common dso_local global i32 0, align 4
@interrupt_sel__mes_query_status__completion_status = common dso_local global i32 0, align 4
@command__mes_query_status__fence_only_after_write_ack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i64*, i64, i64)* @pm_query_status_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_query_status_v9(%struct.packet_manager* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.packet_manager*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pm4_mes_query_status*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = bitcast i64* %10 to %struct.pm4_mes_query_status*
  store %struct.pm4_mes_query_status* %11, %struct.pm4_mes_query_status** %9, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = call i32 @memset(i64* %12, i32 0, i32 56)
  %14 = load i32, i32* @IT_QUERY_STATUS, align 4
  %15 = call i32 @pm_build_pm4_header(i32 %14, i32 56)
  %16 = load %struct.pm4_mes_query_status*, %struct.pm4_mes_query_status** %9, align 8
  %17 = getelementptr inbounds %struct.pm4_mes_query_status, %struct.pm4_mes_query_status* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.pm4_mes_query_status*, %struct.pm4_mes_query_status** %9, align 8
  %20 = getelementptr inbounds %struct.pm4_mes_query_status, %struct.pm4_mes_query_status* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @interrupt_sel__mes_query_status__completion_status, align 4
  %23 = load %struct.pm4_mes_query_status*, %struct.pm4_mes_query_status** %9, align 8
  %24 = getelementptr inbounds %struct.pm4_mes_query_status, %struct.pm4_mes_query_status* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @command__mes_query_status__fence_only_after_write_ack, align 4
  %27 = load %struct.pm4_mes_query_status*, %struct.pm4_mes_query_status** %9, align 8
  %28 = getelementptr inbounds %struct.pm4_mes_query_status, %struct.pm4_mes_query_status* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i8* @upper_32_bits(i64 %30)
  %32 = load %struct.pm4_mes_query_status*, %struct.pm4_mes_query_status** %9, align 8
  %33 = getelementptr inbounds %struct.pm4_mes_query_status, %struct.pm4_mes_query_status* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i8* @lower_32_bits(i64 %34)
  %36 = load %struct.pm4_mes_query_status*, %struct.pm4_mes_query_status** %9, align 8
  %37 = getelementptr inbounds %struct.pm4_mes_query_status, %struct.pm4_mes_query_status* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i8* @upper_32_bits(i64 %38)
  %40 = load %struct.pm4_mes_query_status*, %struct.pm4_mes_query_status** %9, align 8
  %41 = getelementptr inbounds %struct.pm4_mes_query_status, %struct.pm4_mes_query_status* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i8* @lower_32_bits(i64 %42)
  %44 = load %struct.pm4_mes_query_status*, %struct.pm4_mes_query_status** %9, align 8
  %45 = getelementptr inbounds %struct.pm4_mes_query_status, %struct.pm4_mes_query_status* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  ret i32 0
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i8* @upper_32_bits(i64) #1

declare dso_local i8* @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
