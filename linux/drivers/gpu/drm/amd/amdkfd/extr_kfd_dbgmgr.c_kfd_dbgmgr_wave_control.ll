; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgmgr.c_kfd_dbgmgr_wave_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgmgr.c_kfd_dbgmgr_wave_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgmgr = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*, %struct.dbg_wave_control_info*)* }
%struct.dbg_wave_control_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [64 x i8] c"H/W debugger support was not registered for requester pasid %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kfd_dbgmgr_wave_control(%struct.kfd_dbgmgr* %0, %struct.dbg_wave_control_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kfd_dbgmgr*, align 8
  %5 = alloca %struct.dbg_wave_control_info*, align 8
  store %struct.kfd_dbgmgr* %0, %struct.kfd_dbgmgr** %4, align 8
  store %struct.dbg_wave_control_info* %1, %struct.dbg_wave_control_info** %5, align 8
  %6 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %7 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %10 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %8, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %17 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %3, align 8
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %26 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64 (%struct.TYPE_4__*, %struct.dbg_wave_control_info*)*, i64 (%struct.TYPE_4__*, %struct.dbg_wave_control_info*)** %28, align 8
  %30 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %4, align 8
  %31 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %34 = call i64 %29(%struct.TYPE_4__* %32, %struct.dbg_wave_control_info* %33)
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %24, %15
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
