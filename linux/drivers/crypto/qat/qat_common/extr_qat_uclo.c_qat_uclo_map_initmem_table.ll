; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_initmem_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_initmem_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uof_encap_obj = type { i64, i32 }
%struct.icp_qat_uclo_init_mem_table = type { %struct.icp_qat_uof_initmem*, i32 }
%struct.icp_qat_uof_initmem = type { i32 }
%struct.icp_qat_uof_chunkhdr = type { i64 }

@ICP_QAT_UOF_IMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uclo_init_mem_table*)* @qat_uclo_map_initmem_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_map_initmem_table(%struct.icp_qat_uof_encap_obj* %0, %struct.icp_qat_uclo_init_mem_table* %1) #0 {
  %3 = alloca %struct.icp_qat_uof_encap_obj*, align 8
  %4 = alloca %struct.icp_qat_uclo_init_mem_table*, align 8
  %5 = alloca %struct.icp_qat_uof_chunkhdr*, align 8
  store %struct.icp_qat_uof_encap_obj* %0, %struct.icp_qat_uof_encap_obj** %3, align 8
  store %struct.icp_qat_uclo_init_mem_table* %1, %struct.icp_qat_uclo_init_mem_table** %4, align 8
  %6 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %3, align 8
  %7 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ICP_QAT_UOF_IMEM, align 4
  %10 = call %struct.icp_qat_uof_chunkhdr* @qat_uclo_find_chunk(i32 %8, i32 %9, i32* null)
  store %struct.icp_qat_uof_chunkhdr* %10, %struct.icp_qat_uof_chunkhdr** %5, align 8
  %11 = load %struct.icp_qat_uof_chunkhdr*, %struct.icp_qat_uof_chunkhdr** %5, align 8
  %12 = icmp ne %struct.icp_qat_uof_chunkhdr* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.icp_qat_uclo_init_mem_table*, %struct.icp_qat_uclo_init_mem_table** %4, align 8
  %15 = getelementptr inbounds %struct.icp_qat_uclo_init_mem_table, %struct.icp_qat_uclo_init_mem_table* %14, i32 0, i32 1
  %16 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %3, align 8
  %17 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.icp_qat_uof_chunkhdr*, %struct.icp_qat_uof_chunkhdr** %5, align 8
  %20 = getelementptr inbounds %struct.icp_qat_uof_chunkhdr, %struct.icp_qat_uof_chunkhdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i32 @memmove(i32* %15, i64 %22, i32 4)
  %24 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %3, align 8
  %25 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.icp_qat_uof_chunkhdr*, %struct.icp_qat_uof_chunkhdr** %5, align 8
  %28 = getelementptr inbounds %struct.icp_qat_uof_chunkhdr, %struct.icp_qat_uof_chunkhdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = add i64 %30, 4
  %32 = inttoptr i64 %31 to %struct.icp_qat_uof_initmem*
  %33 = load %struct.icp_qat_uclo_init_mem_table*, %struct.icp_qat_uclo_init_mem_table** %4, align 8
  %34 = getelementptr inbounds %struct.icp_qat_uclo_init_mem_table, %struct.icp_qat_uclo_init_mem_table* %33, i32 0, i32 0
  store %struct.icp_qat_uof_initmem* %32, %struct.icp_qat_uof_initmem** %34, align 8
  br label %35

35:                                               ; preds = %13, %2
  ret void
}

declare dso_local %struct.icp_qat_uof_chunkhdr* @qat_uclo_find_chunk(i32, i32, i32*) #1

declare dso_local i32 @memmove(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
