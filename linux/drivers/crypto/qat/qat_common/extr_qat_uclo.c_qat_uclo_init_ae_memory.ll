; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_ae_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_ae_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }
%struct.icp_qat_uof_initmem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"QAT: initmem region error. region type=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*)* @qat_uclo_init_ae_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_init_ae_memory(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uof_initmem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca %struct.icp_qat_uof_initmem*, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store %struct.icp_qat_uof_initmem* %1, %struct.icp_qat_uof_initmem** %5, align 8
  %6 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %7 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 129, label %9
    i32 128, label %18
  ]

9:                                                ; preds = %2
  %10 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %11 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %12 = call i32 @qat_uclo_init_lmem_seg(%struct.icp_qat_fw_loader_handle* %10, %struct.icp_qat_uof_initmem* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %9
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %20 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %21 = call i32 @qat_uclo_init_umem_seg(%struct.icp_qat_fw_loader_handle* %19, %struct.icp_qat_uof_initmem* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %18
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %29 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %26, %17
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %27, %23, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @qat_uclo_init_lmem_seg(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*) #1

declare dso_local i32 @qat_uclo_init_umem_seg(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
