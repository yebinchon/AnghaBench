; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_simg_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_simg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.icp_firml_dram_desc = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, %struct.icp_firml_dram_desc*)* @qat_uclo_simg_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_simg_free(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_firml_dram_desc* %1) #0 {
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca %struct.icp_firml_dram_desc*, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  store %struct.icp_firml_dram_desc* %1, %struct.icp_firml_dram_desc** %4, align 8
  %5 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %6 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.icp_firml_dram_desc*, %struct.icp_firml_dram_desc** %4, align 8
  %10 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.icp_firml_dram_desc*, %struct.icp_firml_dram_desc** %4, align 8
  %13 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.icp_firml_dram_desc*, %struct.icp_firml_dram_desc** %4, align 8
  %16 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dma_free_coherent(i32* %8, i64 %11, i32 %14, i32 %17)
  %19 = load %struct.icp_firml_dram_desc*, %struct.icp_firml_dram_desc** %4, align 8
  %20 = call i32 @memset(%struct.icp_firml_dram_desc* %19, i32 0, i32 16)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @memset(%struct.icp_firml_dram_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
