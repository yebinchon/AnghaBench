; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_query_hwrm_pri2cos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_query_hwrm_pri2cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.bnxt_en_dev*, i32 }
%struct.bnxt_en_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)* }
%struct.bnxt_fw_msg = type { i32 }
%struct.hwrm_queue_pri2cos_qcfg_input = type { i32, i32, i32 }
%struct.bnxt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hwrm_queue_pri2cos_qcfg_output = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@HWRM_QUEUE_PRI2COS_QCFG = common dso_local global i32 0, align 4
@HWRM_QUEUE_PRI2COS_QCFG_INPUT_FLAGS_IVLAN = common dso_local global i32 0, align 4
@DFLT_HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Asymmetric cos queue configuration detected\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" on device, QoS may not be fully functional\0A\00", align 1
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*, i32, i32*)* @bnxt_re_query_hwrm_pri2cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_query_hwrm_pri2cos(%struct.bnxt_re_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_re_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hwrm_queue_pri2cos_qcfg_input, align 4
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca %struct.hwrm_queue_pri2cos_qcfg_output, align 8
  %11 = alloca %struct.bnxt_en_dev*, align 8
  %12 = alloca %struct.bnxt_fw_msg, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = bitcast %struct.hwrm_queue_pri2cos_qcfg_input* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  %19 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.bnxt* @netdev_priv(i32 %21)
  store %struct.bnxt* %22, %struct.bnxt** %9, align 8
  %23 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %24 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %23, i32 0, i32 0
  %25 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %24, align 8
  store %struct.bnxt_en_dev* %25, %struct.bnxt_en_dev** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %101

31:                                               ; preds = %3
  %32 = call i32 @memset(%struct.bnxt_fw_msg* %12, i32 0, i32 4)
  %33 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %34 = bitcast %struct.hwrm_queue_pri2cos_qcfg_input* %8 to i8*
  %35 = load i32, i32* @HWRM_QUEUE_PRI2COS_QCFG, align 4
  %36 = call i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev* %33, i8* %34, i32 %35, i32 -1, i32 -1)
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 1
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @HWRM_QUEUE_PRI2COS_QCFG_INPUT_FLAGS_IVLAN, align 4
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = getelementptr inbounds %struct.hwrm_queue_pri2cos_qcfg_input, %struct.hwrm_queue_pri2cos_qcfg_input* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.hwrm_queue_pri2cos_qcfg_input, %struct.hwrm_queue_pri2cos_qcfg_input* %8, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.hwrm_queue_pri2cos_qcfg_input* %8 to i8*
  %53 = bitcast %struct.hwrm_queue_pri2cos_qcfg_output* %10 to i8*
  %54 = load i32, i32* @DFLT_HWRM_CMD_TIMEOUT, align 4
  %55 = call i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg* %12, i8* %52, i32 12, i8* %53, i32 16, i32 %54)
  %56 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %11, align 8
  %57 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)*, i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)** %59, align 8
  %61 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %11, align 8
  %62 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %63 = call i32 %60(%struct.bnxt_en_dev* %61, i32 %62, %struct.bnxt_fw_msg* %12)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %31
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %4, align 4
  br label %101

68:                                               ; preds = %31
  %69 = getelementptr inbounds %struct.hwrm_queue_pri2cos_qcfg_output, %struct.hwrm_queue_pri2cos_qcfg_output* %10, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %74 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %73)
  %75 = call i32 @dev_warn(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %77 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %76)
  %78 = call i32 @dev_warn(i32 %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %72, %68
  %80 = getelementptr inbounds %struct.hwrm_queue_pri2cos_qcfg_output, %struct.hwrm_queue_pri2cos_qcfg_output* %10, i32 0, i32 0
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %7, align 8
  store i32* %81, i32** %15, align 8
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %96, %79
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %17, align 4
  br label %82

99:                                               ; preds = %82
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %66, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bnxt* @netdev_priv(i32) #2

declare dso_local i32 @memset(%struct.bnxt_fw_msg*, i32, i32) #2

declare dso_local i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev*, i8*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg*, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @dev_warn(i32, i8*) #2

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
