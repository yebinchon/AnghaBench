; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_tdc_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_tdc_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iceland_smumgr = type { %struct.TYPE_4__, %struct.iceland_pt_defaults* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.iceland_pt_defaults = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @iceland_populate_tdc_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_populate_tdc_limit(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.iceland_smumgr*, align 8
  %5 = alloca %struct.iceland_pt_defaults*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.iceland_smumgr*
  store %struct.iceland_smumgr* %9, %struct.iceland_smumgr** %4, align 8
  %10 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %4, align 8
  %11 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %10, i32 0, i32 1
  %12 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %11, align 8
  store %struct.iceland_pt_defaults* %12, %struct.iceland_pt_defaults** %5, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 256
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %21)
  %23 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %4, align 8
  %24 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %5, align 8
  %27 = getelementptr inbounds %struct.iceland_pt_defaults, %struct.iceland_pt_defaults* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %4, align 8
  %30 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %5, align 8
  %33 = getelementptr inbounds %struct.iceland_pt_defaults, %struct.iceland_pt_defaults* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %4, align 8
  %36 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  ret i32 0
}

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_US(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
