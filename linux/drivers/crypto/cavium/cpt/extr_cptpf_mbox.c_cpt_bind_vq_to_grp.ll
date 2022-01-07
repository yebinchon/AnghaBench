; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_mbox.c_cpt_bind_vq_to_grp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_mbox.c_cpt_bind_vq_to_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i64, i32, %struct.TYPE_3__*, %struct.microcode* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.microcode = type { i64, i32 }
%union.cptx_pf_qx_ctl = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CPT_MAX_VF_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Queues are more than cores in the group\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CPT_MAX_CORE_GROUPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Request group is more than possible groups\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Request group is higher than available functional groups\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"VF %d TYPE %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"SE\00", align 1
@AE_TYPES = common dso_local global i32 0, align 4
@SE_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_device*, i64, i64)* @cpt_bind_vq_to_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpt_bind_vq_to_grp(%struct.cpt_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpt_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.microcode*, align 8
  %9 = alloca %union.cptx_pf_qx_ctl, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %12 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %11, i32 0, i32 3
  %13 = load %struct.microcode*, %struct.microcode** %12, align 8
  store %struct.microcode* %13, %struct.microcode** %8, align 8
  %14 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %15 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @CPT_MAX_VF_NUM, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %92

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @CPT_MAX_CORE_GROUPS, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %92

35:                                               ; preds = %26
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %38 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %92

46:                                               ; preds = %35
  %47 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %48 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @CPTX_PF_QX_CTL(i32 0, i64 %50)
  %52 = call i32 @cpt_read_csr64(i32 %49, i32 %51)
  %53 = bitcast %union.cptx_pf_qx_ctl* %9 to i32*
  store i32 %52, i32* %53, align 4
  %54 = load %struct.microcode*, %struct.microcode** %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.microcode, %struct.microcode* %54, i64 %55
  %57 = getelementptr inbounds %struct.microcode, %struct.microcode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = bitcast %union.cptx_pf_qx_ctl* %9 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %62 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @CPTX_PF_QX_CTL(i32 0, i64 %64)
  %66 = bitcast %union.cptx_pf_qx_ctl* %9 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cpt_write_csr64(i32 %63, i32 %65, i32 %67)
  %69 = load %struct.device*, %struct.device** %10, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.microcode*, %struct.microcode** %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.microcode, %struct.microcode* %71, i64 %72
  %74 = getelementptr inbounds %struct.microcode, %struct.microcode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %79 = call i32 @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %70, i8* %78)
  %80 = load %struct.microcode*, %struct.microcode** %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.microcode, %struct.microcode* %80, i64 %81
  %83 = getelementptr inbounds %struct.microcode, %struct.microcode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %46
  %87 = load i32, i32* @AE_TYPES, align 4
  br label %90

88:                                               ; preds = %46
  %89 = load i32, i32* @SE_TYPES, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %41, %30, %21
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cpt_read_csr64(i32, i32) #1

declare dso_local i32 @CPTX_PF_QX_CTL(i32, i64) #1

declare dso_local i32 @cpt_write_csr64(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
