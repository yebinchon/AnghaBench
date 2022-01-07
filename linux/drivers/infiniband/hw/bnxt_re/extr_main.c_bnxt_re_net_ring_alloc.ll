; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_net_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_net_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)* }
%struct.bnxt_fw_msg = type { i32 }
%struct.hwrm_ring_alloc_input = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.hwrm_ring_alloc_output = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HWRM_RING_ALLOC = common dso_local global i32 0, align 4
@BNXT_PAGE_SHIFT = common dso_local global i32 0, align 4
@RING_ALLOC_REQ_INT_MODE_MSIX = common dso_local global i32 0, align 4
@DFLT_HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*, i32*, i32, i32, i64, i64, i32*)* @bnxt_re_net_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_net_ring_alloc(%struct.bnxt_re_dev* %0, i32* %1, i32 %2, i32 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_re_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.bnxt_en_dev*, align 8
  %17 = alloca %struct.hwrm_ring_alloc_input, align 8
  %18 = alloca %struct.hwrm_ring_alloc_output, align 4
  %19 = alloca %struct.bnxt_fw_msg, align 4
  %20 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %9, align 8
  %22 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %21, i32 0, i32 0
  %23 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %22, align 8
  store %struct.bnxt_en_dev* %23, %struct.bnxt_en_dev** %16, align 8
  %24 = bitcast %struct.hwrm_ring_alloc_input* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 56, i1 false)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %20, align 4
  %27 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %16, align 8
  %28 = icmp ne %struct.bnxt_en_dev* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %20, align 4
  store i32 %30, i32* %8, align 4
  br label %83

31:                                               ; preds = %7
  %32 = call i32 @memset(%struct.bnxt_fw_msg* %19, i32 0, i32 4)
  %33 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %9, align 8
  %34 = bitcast %struct.hwrm_ring_alloc_input* %17 to i8*
  %35 = load i32, i32* @HWRM_RING_ALLOC, align 4
  %36 = call i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev* %33, i8* %34, i32 %35, i32 -1, i32 -1)
  %37 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 8
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_le64(i32 %40)
  %42 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 7
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i32, i32* @BNXT_PAGE_SHIFT, align 4
  %47 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 6
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %31
  %50 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @cpu_to_le16(i64 %51)
  %53 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 4
  store i32 %52, i32* %53, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @cpu_to_le32(i64 %55)
  %57 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @RING_ALLOC_REQ_INT_MODE_MSIX, align 4
  %61 = getelementptr inbounds %struct.hwrm_ring_alloc_input, %struct.hwrm_ring_alloc_input* %17, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = bitcast %struct.hwrm_ring_alloc_input* %17 to i8*
  %63 = bitcast %struct.hwrm_ring_alloc_output* %18 to i8*
  %64 = load i32, i32* @DFLT_HWRM_CMD_TIMEOUT, align 4
  %65 = call i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg* %19, i8* %62, i32 56, i8* %63, i32 4, i32 %64)
  %66 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %16, align 8
  %67 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)*, i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)** %69, align 8
  %71 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %16, align 8
  %72 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %73 = call i32 %70(%struct.bnxt_en_dev* %71, i32 %72, %struct.bnxt_fw_msg* %19)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %49
  %77 = getelementptr inbounds %struct.hwrm_ring_alloc_output, %struct.hwrm_ring_alloc_output* %18, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = load i32*, i32** %15, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %49
  %82 = load i32, i32* %20, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %29
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.bnxt_fw_msg*, i32, i32) #2

declare dso_local i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev*, i8*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @cpu_to_le16(i64) #2

declare dso_local i32 @cpu_to_le32(i64) #2

declare dso_local i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg*, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
