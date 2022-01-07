; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgmgr.c_kfd_dbgmgr_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgmgr.c_kfd_dbgmgr_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgmgr = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.kfd_process = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"H/W debugger is not registered by calling pasid %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kfd_dbgmgr_unregister(%struct.kfd_dbgmgr* %0, %struct.kfd_process* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kfd_dbgmgr*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  store %struct.kfd_dbgmgr* %0, %struct.kfd_dbgmgr** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  %6 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %7 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %10 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %15 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %3, align 8
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %22 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %24, align 8
  %26 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %27 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 %25(%struct.TYPE_2__* %28)
  %30 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %31 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  store i64 0, i64* %3, align 8
  br label %32

32:                                               ; preds = %20, %13
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
