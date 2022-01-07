; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_init_cgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_init_cgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.qm_mcc_initcgr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_RSP_FQ_BACKLOG_PER_CPU = common dso_local global i32 0, align 4
@qipriv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"CGR alloc failed for rsp FQs: %d\0A\00", align 1
@cgr_cb = common dso_local global i32 0, align 4
@QM_CGR_WE_CSCN_EN = common dso_local global i32 0, align 4
@QM_CGR_WE_CS_THRES = common dso_local global i32 0, align 4
@QM_CGR_WE_MODE = common dso_local global i32 0, align 4
@QM_CGR_EN = common dso_local global i32 0, align 4
@QMAN_CGR_MODE_FRAME = common dso_local global i32 0, align 4
@QMAN_CGR_FLAG_USE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error %d creating CAAM CGRID: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Congestion threshold set to %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @init_cgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cgr(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qm_mcc_initcgr, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = call i32 (...) @qman_affine_cpus()
  %8 = call i64 @cpumask_weight(i32 %7)
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @MAX_RSP_FQ_BACKLOG_PER_CPU, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = call i32 @qman_alloc_cgrid(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qipriv, i32 0, i32 0, i32 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load i32, i32* @cgr_cb, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qipriv, i32 0, i32 0, i32 1), align 4
  %22 = call i32 @memset(%struct.qm_mcc_initcgr* %5, i32 0, i32 16)
  %23 = load i32, i32* @QM_CGR_WE_CSCN_EN, align 4
  %24 = load i32, i32* @QM_CGR_WE_CS_THRES, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @QM_CGR_WE_MODE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @cpu_to_be16(i32 %27)
  %29 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @QM_CGR_EN, align 4
  %31 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @QMAN_CGR_MODE_FRAME, align 4
  %34 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %5, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @qm_cgr_cs_thres_set64(i32* %37, i32 %38, i32 1)
  %40 = load i32, i32* @QMAN_CGR_FLAG_USE_INIT, align 4
  %41 = call i32 @qman_create_cgr(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qipriv, i32 0, i32 0), i32 %40, %struct.qm_mcc_initcgr* %5)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %20
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qipriv, i32 0, i32 0, i32 0), align 4
  %48 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %20
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %44, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @cpumask_weight(i32) #1

declare dso_local i32 @qman_affine_cpus(...) #1

declare dso_local i32 @qman_alloc_cgrid(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.qm_mcc_initcgr*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @qm_cgr_cs_thres_set64(i32*, i32, i32) #1

declare dso_local i32 @qman_create_cgr(%struct.TYPE_5__*, i32, %struct.qm_mcc_initcgr*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
