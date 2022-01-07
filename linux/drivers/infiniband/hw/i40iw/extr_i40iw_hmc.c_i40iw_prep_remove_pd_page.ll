; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_prep_remove_pd_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_prep_remove_pd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hmc_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.i40iw_hmc_sd_entry* }
%struct.i40iw_hmc_sd_entry = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@I40IW_ERR_NOT_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_prep_remove_pd_page(%struct.i40iw_hmc_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_hmc_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40iw_hmc_sd_entry*, align 8
  store %struct.i40iw_hmc_info* %0, %struct.i40iw_hmc_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %8 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %10, i64 %11
  store %struct.i40iw_hmc_sd_entry* %12, %struct.i40iw_hmc_sd_entry** %6, align 8
  %13 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @I40IW_ERR_NOT_READY, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %23 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %24, i32 0, i32 0
  %26 = call i32 @I40IW_DEC_SD_REFCNT(%struct.TYPE_6__* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @I40IW_DEC_SD_REFCNT(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
