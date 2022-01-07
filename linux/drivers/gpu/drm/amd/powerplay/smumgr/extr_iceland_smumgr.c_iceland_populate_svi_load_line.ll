; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_svi_load_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_svi_load_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.iceland_smumgr = type { %struct.TYPE_2__, %struct.iceland_pt_defaults* }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.iceland_pt_defaults = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @iceland_populate_svi_load_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_populate_svi_load_line(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.iceland_smumgr*, align 8
  %4 = alloca %struct.iceland_pt_defaults*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.iceland_smumgr*
  store %struct.iceland_smumgr* %8, %struct.iceland_smumgr** %3, align 8
  %9 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %3, align 8
  %10 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %9, i32 0, i32 1
  %11 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %10, align 8
  store %struct.iceland_pt_defaults* %11, %struct.iceland_pt_defaults** %4, align 8
  %12 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %4, align 8
  %13 = getelementptr inbounds %struct.iceland_pt_defaults, %struct.iceland_pt_defaults* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %3, align 8
  %16 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %4, align 8
  %19 = getelementptr inbounds %struct.iceland_pt_defaults, %struct.iceland_pt_defaults* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %3, align 8
  %22 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %3, align 8
  %25 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 3, i32* %26, align 8
  %27 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %3, align 8
  %28 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
