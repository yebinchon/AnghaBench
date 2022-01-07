; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_ummap_auth_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_ummap_auth_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }
%struct.icp_qat_fw_auth_desc = type { i32 }
%struct.icp_firml_dram_desc = type { i32, i32, %struct.icp_qat_fw_auth_desc* }
%struct.icp_qat_auth_chunk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_auth_desc**)* @qat_uclo_ummap_auth_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_ummap_auth_fw(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_auth_desc** %1) #0 {
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca %struct.icp_qat_fw_auth_desc**, align 8
  %5 = alloca %struct.icp_firml_dram_desc, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  store %struct.icp_qat_fw_auth_desc** %1, %struct.icp_qat_fw_auth_desc*** %4, align 8
  %6 = load %struct.icp_qat_fw_auth_desc**, %struct.icp_qat_fw_auth_desc*** %4, align 8
  %7 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %6, align 8
  %8 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %5, i32 0, i32 2
  store %struct.icp_qat_fw_auth_desc* %7, %struct.icp_qat_fw_auth_desc** %8, align 8
  %9 = load %struct.icp_qat_fw_auth_desc**, %struct.icp_qat_fw_auth_desc*** %4, align 8
  %10 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %9, align 8
  %11 = bitcast %struct.icp_qat_fw_auth_desc* %10 to %struct.icp_qat_auth_chunk*
  %12 = getelementptr inbounds %struct.icp_qat_auth_chunk, %struct.icp_qat_auth_chunk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.icp_qat_fw_auth_desc**, %struct.icp_qat_fw_auth_desc*** %4, align 8
  %16 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %15, align 8
  %17 = bitcast %struct.icp_qat_fw_auth_desc* %16 to %struct.icp_qat_auth_chunk*
  %18 = getelementptr inbounds %struct.icp_qat_auth_chunk, %struct.icp_qat_auth_chunk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %22 = call i32 @qat_uclo_simg_free(%struct.icp_qat_fw_loader_handle* %21, %struct.icp_firml_dram_desc* %5)
  ret void
}

declare dso_local i32 @qat_uclo_simg_free(%struct.icp_qat_fw_loader_handle*, %struct.icp_firml_dram_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
