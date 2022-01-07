; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_net_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_net_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)* }
%struct.bnxt_fw_msg = type { i32 }
%struct.hwrm_ring_free_input = type { i32, i32, i32 }
%struct.hwrm_ring_free_output = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HWRM_RING_FREE = common dso_local global i32 0, align 4
@DFLT_HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to free HW ring:%d :%#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*, i32, i32)* @bnxt_re_net_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_re_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_en_dev*, align 8
  %9 = alloca %struct.hwrm_ring_free_input, align 4
  %10 = alloca %struct.hwrm_ring_free_output, align 4
  %11 = alloca %struct.bnxt_fw_msg, align 4
  %12 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %13, i32 0, i32 0
  %15 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %14, align 8
  store %struct.bnxt_en_dev* %15, %struct.bnxt_en_dev** %8, align 8
  %16 = bitcast %struct.hwrm_ring_free_input* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %8, align 8
  %20 = icmp ne %struct.bnxt_en_dev* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %57

23:                                               ; preds = %3
  %24 = call i32 @memset(%struct.bnxt_fw_msg* %11, i32 0, i32 4)
  %25 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %26 = bitcast %struct.hwrm_ring_free_input* %9 to i8*
  %27 = load i32, i32* @HWRM_RING_FREE, align 4
  %28 = call i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev* %25, i8* %26, i32 %27, i32 -1, i32 -1)
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.hwrm_ring_free_input, %struct.hwrm_ring_free_input* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.hwrm_ring_free_input, %struct.hwrm_ring_free_input* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.hwrm_ring_free_input* %9 to i8*
  %35 = bitcast %struct.hwrm_ring_free_output* %10 to i8*
  %36 = load i32, i32* @DFLT_HWRM_CMD_TIMEOUT, align 4
  %37 = call i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg* %11, i8* %34, i32 12, i8* %35, i32 4, i32 %36)
  %38 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %8, align 8
  %39 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)*, i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)** %41, align 8
  %43 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %8, align 8
  %44 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %45 = call i32 %42(%struct.bnxt_en_dev* %43, i32 %44, %struct.bnxt_fw_msg* %11)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %23
  %49 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %50 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %49)
  %51 = getelementptr inbounds %struct.hwrm_ring_free_input, %struct.hwrm_ring_free_input* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %23
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %21
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.bnxt_fw_msg*, i32, i32) #2

declare dso_local i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev*, i8*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg*, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #2

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
