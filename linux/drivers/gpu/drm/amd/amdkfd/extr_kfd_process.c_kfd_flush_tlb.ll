; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_flush_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_flush_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { %struct.TYPE_4__*, %struct.TYPE_6__, %struct.kfd_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.kfd_dev = type { i32, %struct.TYPE_5__*, %struct.kfd2kgd_calls* }
%struct.TYPE_5__ = type { i64 }
%struct.kfd2kgd_calls = type { i32 (i32, i32)*, i32 (i32, i32)* }

@KFD_SCHED_POLICY_NO_HWS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfd_flush_tlb(%struct.kfd_process_device* %0) #0 {
  %2 = alloca %struct.kfd_process_device*, align 8
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca %struct.kfd2kgd_calls*, align 8
  store %struct.kfd_process_device* %0, %struct.kfd_process_device** %2, align 8
  %5 = load %struct.kfd_process_device*, %struct.kfd_process_device** %2, align 8
  %6 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %5, i32 0, i32 2
  %7 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  store %struct.kfd_dev* %7, %struct.kfd_dev** %3, align 8
  %8 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %9 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %8, i32 0, i32 2
  %10 = load %struct.kfd2kgd_calls*, %struct.kfd2kgd_calls** %9, align 8
  store %struct.kfd2kgd_calls* %10, %struct.kfd2kgd_calls** %4, align 8
  %11 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %12 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KFD_SCHED_POLICY_NO_HWS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.kfd_process_device*, %struct.kfd_process_device** %2, align 8
  %20 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.kfd2kgd_calls*, %struct.kfd2kgd_calls** %4, align 8
  %26 = getelementptr inbounds %struct.kfd2kgd_calls, %struct.kfd2kgd_calls* %25, i32 0, i32 1
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %29 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.kfd_process_device*, %struct.kfd_process_device** %2, align 8
  %32 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %27(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %24, %18
  br label %50

37:                                               ; preds = %1
  %38 = load %struct.kfd2kgd_calls*, %struct.kfd2kgd_calls** %4, align 8
  %39 = getelementptr inbounds %struct.kfd2kgd_calls, %struct.kfd2kgd_calls* %38, i32 0, i32 0
  %40 = load i32 (i32, i32)*, i32 (i32, i32)** %39, align 8
  %41 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %42 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.kfd_process_device*, %struct.kfd_process_device** %2, align 8
  %45 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %40(i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %37, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
