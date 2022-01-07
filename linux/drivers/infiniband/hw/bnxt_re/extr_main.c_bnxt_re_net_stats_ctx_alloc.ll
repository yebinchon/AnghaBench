; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_net_stats_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_net_stats_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)* }
%struct.bnxt_fw_msg = type { i32 }
%struct.hwrm_stat_ctx_alloc_output = type { i32, i32 }
%struct.hwrm_stat_ctx_alloc_input = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INVALID_STATS_CTX_ID = common dso_local global i32 0, align 4
@HWRM_STAT_CTX_ALLOC = common dso_local global i32 0, align 4
@STAT_CTX_ALLOC_REQ_STAT_CTX_FLAGS_ROCE = common dso_local global i32 0, align 4
@DFLT_HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*, i32, i32*)* @bnxt_re_net_stats_ctx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_net_stats_ctx_alloc(%struct.bnxt_re_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_re_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hwrm_stat_ctx_alloc_output, align 4
  %9 = alloca %struct.hwrm_stat_ctx_alloc_input, align 4
  %10 = alloca %struct.bnxt_en_dev*, align 8
  %11 = alloca %struct.bnxt_fw_msg, align 4
  %12 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = bitcast %struct.hwrm_stat_ctx_alloc_output* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %struct.hwrm_stat_ctx_alloc_input* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %15, i32 0, i32 0
  %17 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %16, align 8
  store %struct.bnxt_en_dev* %17, %struct.bnxt_en_dev** %10, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @INVALID_STATS_CTX_ID, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %10, align 8
  %23 = icmp ne %struct.bnxt_en_dev* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %60

26:                                               ; preds = %3
  %27 = call i32 @memset(%struct.bnxt_fw_msg* %11, i32 0, i32 4)
  %28 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %29 = bitcast %struct.hwrm_stat_ctx_alloc_input* %9 to i8*
  %30 = load i32, i32* @HWRM_STAT_CTX_ALLOC, align 4
  %31 = call i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev* %28, i8* %29, i32 %30, i32 -1, i32 -1)
  %32 = call i32 @cpu_to_le32(i32 1000)
  %33 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_input, %struct.hwrm_stat_ctx_alloc_input* %9, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cpu_to_le64(i32 %34)
  %36 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_input, %struct.hwrm_stat_ctx_alloc_input* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @STAT_CTX_ALLOC_REQ_STAT_CTX_FLAGS_ROCE, align 4
  %38 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_input, %struct.hwrm_stat_ctx_alloc_input* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.hwrm_stat_ctx_alloc_input* %9 to i8*
  %40 = bitcast %struct.hwrm_stat_ctx_alloc_output* %8 to i8*
  %41 = load i32, i32* @DFLT_HWRM_CMD_TIMEOUT, align 4
  %42 = call i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg* %11, i8* %39, i32 16, i8* %40, i32 8, i32 %41)
  %43 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %10, align 8
  %44 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)*, i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)** %46, align 8
  %48 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %10, align 8
  %49 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %50 = call i32 %47(%struct.bnxt_en_dev* %48, i32 %49, %struct.bnxt_fw_msg* %11)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %26
  %54 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_output, %struct.hwrm_stat_ctx_alloc_output* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %26
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.bnxt_fw_msg*, i32, i32) #2

declare dso_local i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev*, i8*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg*, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
