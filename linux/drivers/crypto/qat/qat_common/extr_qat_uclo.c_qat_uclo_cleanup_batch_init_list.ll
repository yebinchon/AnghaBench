; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_cleanup_batch_init_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_cleanup_batch_init_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }
%struct.icp_qat_uof_batch_init = type { %struct.icp_qat_uof_batch_init* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_batch_init**)* @qat_uclo_cleanup_batch_init_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_cleanup_batch_init_list(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uof_batch_init** %1) #0 {
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca %struct.icp_qat_uof_batch_init**, align 8
  %5 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %6 = alloca %struct.icp_qat_uof_batch_init*, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  store %struct.icp_qat_uof_batch_init** %1, %struct.icp_qat_uof_batch_init*** %4, align 8
  %7 = load %struct.icp_qat_uof_batch_init**, %struct.icp_qat_uof_batch_init*** %4, align 8
  %8 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  store %struct.icp_qat_uof_batch_init* %8, %struct.icp_qat_uof_batch_init** %5, align 8
  br label %9

9:                                                ; preds = %12, %2
  %10 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %5, align 8
  %11 = icmp ne %struct.icp_qat_uof_batch_init* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %5, align 8
  store %struct.icp_qat_uof_batch_init* %13, %struct.icp_qat_uof_batch_init** %6, align 8
  %14 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %5, align 8
  %15 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %14, i32 0, i32 0
  %16 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %15, align 8
  store %struct.icp_qat_uof_batch_init* %16, %struct.icp_qat_uof_batch_init** %5, align 8
  %17 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %6, align 8
  %18 = call i32 @kfree(%struct.icp_qat_uof_batch_init* %17)
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.icp_qat_uof_batch_init**, %struct.icp_qat_uof_batch_init*** %4, align 8
  store %struct.icp_qat_uof_batch_init* null, %struct.icp_qat_uof_batch_init** %20, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.icp_qat_uof_batch_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
