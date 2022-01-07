; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgmgr.c_kfd_dbgmgr_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgmgr.c_kfd_dbgmgr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgmgr = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)*, i32* }
%struct.kfd_process = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"H/W debugger is already active using pasid %d\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kfd_dbgmgr_register(%struct.kfd_dbgmgr* %0, %struct.kfd_process* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kfd_dbgmgr*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  store %struct.kfd_dbgmgr* %0, %struct.kfd_dbgmgr** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  %6 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %7 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %12 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* @EBUSY, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %3, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %19 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %22 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %24 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %23, i32 0, i32 1
  %25 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %26 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32* %24, i32** %28, align 8
  %29 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %30 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %32, align 8
  %34 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %35 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 %33(%struct.TYPE_2__* %36)
  store i64 0, i64* %3, align 8
  br label %38

38:                                               ; preds = %17, %10
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
