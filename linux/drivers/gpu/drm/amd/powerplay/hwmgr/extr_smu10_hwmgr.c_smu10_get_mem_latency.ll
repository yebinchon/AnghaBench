; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_get_mem_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_get_mem_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@MEM_FREQ_LOW_LATENCY = common dso_local global i64 0, align 8
@MEM_FREQ_HIGH_LATENCY = common dso_local global i64 0, align 8
@MEM_LATENCY_HIGH = common dso_local global i64 0, align 8
@MEM_LATENCY_LOW = common dso_local global i64 0, align 8
@MEM_LATENCY_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pp_hwmgr*, i64)* @smu10_get_mem_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smu10_get_mem_latency(%struct.pp_hwmgr* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MEM_FREQ_LOW_LATENCY, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MEM_FREQ_HIGH_LATENCY, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @MEM_LATENCY_HIGH, align 8
  store i64 %14, i64* %3, align 8
  br label %23

15:                                               ; preds = %9, %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MEM_FREQ_HIGH_LATENCY, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @MEM_LATENCY_LOW, align 8
  store i64 %20, i64* %3, align 8
  br label %23

21:                                               ; preds = %15
  %22 = load i64, i64* @MEM_LATENCY_ERR, align 8
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %21, %19, %13
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
