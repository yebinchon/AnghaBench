; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_lmem_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_lmem_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_uclo_objhandle* }
%struct.icp_qat_uclo_objhandle = type { i32* }
%struct.icp_qat_uof_initmem = type { i32 }

@ICP_QAT_UCLO_MAX_LMEM_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*)* @qat_uclo_init_lmem_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_init_lmem_seg(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uof_initmem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca %struct.icp_qat_uof_initmem*, align 8
  %6 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %7 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store %struct.icp_qat_uof_initmem* %1, %struct.icp_qat_uof_initmem** %5, align 8
  %8 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %9 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %8, i32 0, i32 0
  %10 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  store %struct.icp_qat_uclo_objhandle* %10, %struct.icp_qat_uclo_objhandle** %6, align 8
  %11 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %12 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %13 = load i32, i32* @ICP_QAT_UCLO_MAX_LMEM_REG, align 4
  %14 = call i64 @qat_uclo_fetch_initmem_ae(%struct.icp_qat_fw_loader_handle* %11, %struct.icp_qat_uof_initmem* %12, i32 %13, i32* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %21 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %24 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i64 @qat_uclo_create_batch_init_list(%struct.icp_qat_fw_loader_handle* %20, %struct.icp_qat_uof_initmem* %21, i32 %22, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @qat_uclo_fetch_initmem_ae(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*, i32, i32*) #1

declare dso_local i64 @qat_uclo_create_batch_init_list(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
