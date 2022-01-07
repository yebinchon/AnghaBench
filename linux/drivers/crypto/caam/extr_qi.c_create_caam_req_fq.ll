; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_create_caam_req_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_create_caam_req_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }
%struct.qman_fq = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.qm_mcc_initfq = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@caam_fq_ern_cb = common dso_local global i32 0, align 4
@QMAN_FQ_FLAG_DYNAMIC_FQID = common dso_local global i32 0, align 4
@QMAN_FQ_FLAG_TO_DCPORTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to create session req FQ\0A\00", align 1
@QM_INITFQ_WE_FQCTRL = common dso_local global i32 0, align 4
@QM_INITFQ_WE_DESTWQ = common dso_local global i32 0, align 4
@QM_INITFQ_WE_CONTEXTB = common dso_local global i32 0, align 4
@QM_INITFQ_WE_CONTEXTA = common dso_local global i32 0, align 4
@QM_INITFQ_WE_CGID = common dso_local global i32 0, align 4
@QM_FQCTRL_CPCSTASH = common dso_local global i32 0, align 4
@QM_FQCTRL_CGE = common dso_local global i32 0, align 4
@qm_channel_caam = common dso_local global i32 0, align 4
@qipriv = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to init session req FQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Allocated request FQ %u for CPU %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qman_fq* (%struct.device*, %struct.qman_fq*, i32, i32)* @create_caam_req_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qman_fq* @create_caam_req_fq(%struct.device* %0, %struct.qman_fq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.qman_fq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qman_fq*, align 8
  %12 = alloca %struct.qm_mcc_initfq, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.qman_fq* @kzalloc(i32 24, i32 %13)
  store %struct.qman_fq* %14, %struct.qman_fq** %11, align 8
  %15 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  %16 = icmp ne %struct.qman_fq* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.qman_fq* @ERR_PTR(i32 %19)
  store %struct.qman_fq* %20, %struct.qman_fq** %5, align 8
  br label %96

21:                                               ; preds = %4
  %22 = load i32, i32* @caam_fq_ern_cb, align 4
  %23 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  %24 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  %27 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @QMAN_FQ_FLAG_DYNAMIC_FQID, align 4
  %30 = load i32, i32* @QMAN_FQ_FLAG_TO_DCPORTAL, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  %33 = call i32 @qman_create_fq(i32 0, i32 %31, %struct.qman_fq* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %91

39:                                               ; preds = %21
  %40 = call i32 @memset(%struct.qm_mcc_initfq* %12, i32 0, i32 24)
  %41 = load i32, i32* @QM_INITFQ_WE_FQCTRL, align 4
  %42 = load i32, i32* @QM_INITFQ_WE_DESTWQ, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @QM_INITFQ_WE_CONTEXTB, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @QM_INITFQ_WE_CONTEXTA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @QM_INITFQ_WE_CGID, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %12, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @QM_FQCTRL_CPCSTASH, align 4
  %53 = load i32, i32* @QM_FQCTRL_CGE, align 4
  %54 = or i32 %52, %53
  %55 = call i8* @cpu_to_be16(i32 %54)
  %56 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %12, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %12, i32 0, i32 0
  %59 = load i32, i32* @qm_channel_caam, align 4
  %60 = call i32 @qm_fqd_set_destwq(%struct.TYPE_8__* %58, i32 %59, i32 2)
  %61 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %62 = call i32 @qman_fq_fqid(%struct.qman_fq* %61)
  %63 = call i32 @cpu_to_be32(i32 %62)
  %64 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %12, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %12, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @qm_fqd_context_a_set64(%struct.TYPE_8__* %66, i32 %67)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qipriv, i32 0, i32 0, i32 0), align 4
  %70 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %12, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @qman_init_fq(%struct.qman_fq* %72, i32 %73, %struct.qm_mcc_initfq* %12)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %39
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %88

80:                                               ; preds = %39
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  %83 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (...) @smp_processor_id()
  %86 = call i32 @dev_dbg(%struct.device* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  store %struct.qman_fq* %87, %struct.qman_fq** %5, align 8
  br label %96

88:                                               ; preds = %77
  %89 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  %90 = call i32 @qman_destroy_fq(%struct.qman_fq* %89)
  br label %91

91:                                               ; preds = %88, %36
  %92 = load %struct.qman_fq*, %struct.qman_fq** %11, align 8
  %93 = call i32 @kfree(%struct.qman_fq* %92)
  %94 = load i32, i32* %10, align 4
  %95 = call %struct.qman_fq* @ERR_PTR(i32 %94)
  store %struct.qman_fq* %95, %struct.qman_fq** %5, align 8
  br label %96

96:                                               ; preds = %91, %80, %17
  %97 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  ret %struct.qman_fq* %97
}

declare dso_local %struct.qman_fq* @kzalloc(i32, i32) #1

declare dso_local %struct.qman_fq* @ERR_PTR(i32) #1

declare dso_local i32 @qman_create_fq(i32, i32, %struct.qman_fq*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @memset(%struct.qm_mcc_initfq*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @qm_fqd_set_destwq(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @qman_fq_fqid(%struct.qman_fq*) #1

declare dso_local i32 @qm_fqd_context_a_set64(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @qman_init_fq(%struct.qman_fq*, i32, %struct.qm_mcc_initfq*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @qman_destroy_fq(%struct.qman_fq*) #1

declare dso_local i32 @kfree(%struct.qman_fq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
