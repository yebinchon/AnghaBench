; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_fetch_initmem_ae.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_fetch_initmem_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_uclo_objhandle* }
%struct.icp_qat_uclo_objhandle = type { i32 }
%struct.icp_qat_uof_initmem = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"QAT: initmem is out of range\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICP_QAT_UOF_LOCAL_SCOPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"QAT: Memory scope for init_mem error\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"QAT: AE name assigned in UOF init table is NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"QAT: Parse num for AE number failed\0A\00", align 1
@ICP_QAT_UCLO_MAX_AE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"QAT: ae %d out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*, i32, i32*)* @qat_uclo_fetch_initmem_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_fetch_initmem_ae(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uof_initmem* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca %struct.icp_qat_uof_initmem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %11 = alloca i8*, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store %struct.icp_qat_uof_initmem* %1, %struct.icp_qat_uof_initmem** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %13 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %12, i32 0, i32 0
  %14 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %13, align 8
  store %struct.icp_qat_uclo_objhandle* %14, %struct.icp_qat_uclo_objhandle** %10, align 8
  %15 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %16 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %19 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %17, %20
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 2
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %73

29:                                               ; preds = %4
  %30 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %31 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ICP_QAT_UOF_LOCAL_SCOPE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %73

39:                                               ; preds = %29
  %40 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %10, align 8
  %41 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %40, i32 0, i32 0
  %42 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %43 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @qat_uclo_get_string(i32* %41, i32 %44)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %73

52:                                               ; preds = %39
  %53 = load i8*, i8** %11, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @qat_uclo_parse_num(i8* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %73

61:                                               ; preds = %52
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ICP_QAT_UCLO_MAX_AE, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %66, %57, %48, %35, %25
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @qat_uclo_get_string(i32*, i32) #1

declare dso_local i64 @qat_uclo_parse_num(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
