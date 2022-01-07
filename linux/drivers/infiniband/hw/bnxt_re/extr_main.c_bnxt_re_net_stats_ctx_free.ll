; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_net_stats_ctx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_net_stats_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)* }
%struct.bnxt_fw_msg = type { i32 }
%struct.hwrm_stat_ctx_free_input = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HWRM_STAT_CTX_FREE = common dso_local global i32 0, align 4
@DFLT_HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to free HW stats context %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*, i32)* @bnxt_re_net_stats_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_net_stats_ctx_free(%struct.bnxt_re_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_re_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_en_dev*, align 8
  %7 = alloca %struct.hwrm_stat_ctx_free_input, align 4
  %8 = alloca %struct.bnxt_fw_msg, align 4
  %9 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %10, i32 0, i32 0
  %12 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %11, align 8
  store %struct.bnxt_en_dev* %12, %struct.bnxt_en_dev** %6, align 8
  %13 = bitcast %struct.hwrm_stat_ctx_free_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %17 = icmp ne %struct.bnxt_en_dev* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = call i32 @memset(%struct.bnxt_fw_msg* %8, i32 0, i32 4)
  %22 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %4, align 8
  %23 = bitcast %struct.hwrm_stat_ctx_free_input* %7 to i8*
  %24 = load i32, i32* @HWRM_STAT_CTX_FREE, align 4
  %25 = call i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev* %22, i8* %23, i32 %24, i32 -1, i32 -1)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.hwrm_stat_ctx_free_input, %struct.hwrm_stat_ctx_free_input* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.hwrm_stat_ctx_free_input* %7 to i8*
  %30 = bitcast %struct.hwrm_stat_ctx_free_input* %7 to i8*
  %31 = load i32, i32* @DFLT_HWRM_CMD_TIMEOUT, align 4
  %32 = call i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg* %8, i8* %29, i32 8, i8* %30, i32 8, i32 %31)
  %33 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %34 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)*, i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)** %36, align 8
  %38 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %39 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %40 = call i32 %37(%struct.bnxt_en_dev* %38, i32 %39, %struct.bnxt_fw_msg* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %20
  %44 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %4, align 8
  %45 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %20
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.bnxt_fw_msg*, i32, i32) #2

declare dso_local i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev*, i8*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg*, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
