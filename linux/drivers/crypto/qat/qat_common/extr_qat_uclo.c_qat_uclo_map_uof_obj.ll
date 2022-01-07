; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_uof_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_uof_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_uclo_objhandle* }
%struct.icp_qat_uclo_objhandle = type { %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle* }
%struct.icp_qat_uof_filehdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICP_QAT_UOF_OBJS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"QAT: object file chunk is null\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8*, i32)* @qat_uclo_map_uof_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_map_uof_obj(%struct.icp_qat_fw_loader_handle* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_uof_filehdr*, align 8
  %9 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.icp_qat_uclo_objhandle* @kzalloc(i32 16, i32 %10)
  store %struct.icp_qat_uclo_objhandle* %11, %struct.icp_qat_uclo_objhandle** %9, align 8
  %12 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %13 = icmp ne %struct.icp_qat_uclo_objhandle* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %80

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.icp_qat_uclo_objhandle* @kmemdup(i8* %18, i32 %19, i32 %20)
  %22 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %23 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %22, i32 0, i32 0
  store %struct.icp_qat_uclo_objhandle* %21, %struct.icp_qat_uclo_objhandle** %23, align 8
  %24 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %25 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %24, i32 0, i32 0
  %26 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %25, align 8
  %27 = icmp ne %struct.icp_qat_uclo_objhandle* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %75

29:                                               ; preds = %17
  %30 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %31 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %30, i32 0, i32 0
  %32 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %31, align 8
  %33 = bitcast %struct.icp_qat_uclo_objhandle* %32 to %struct.icp_qat_uof_filehdr*
  store %struct.icp_qat_uof_filehdr* %33, %struct.icp_qat_uof_filehdr** %8, align 8
  %34 = load %struct.icp_qat_uof_filehdr*, %struct.icp_qat_uof_filehdr** %8, align 8
  %35 = call i64 @qat_uclo_check_uof_format(%struct.icp_qat_uof_filehdr* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %70

38:                                               ; preds = %29
  %39 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %40 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %39, i32 0, i32 0
  %41 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %40, align 8
  %42 = bitcast %struct.icp_qat_uclo_objhandle* %41 to i8*
  %43 = load %struct.icp_qat_uof_filehdr*, %struct.icp_qat_uof_filehdr** %8, align 8
  %44 = load i32, i32* @ICP_QAT_UOF_OBJS, align 4
  %45 = call %struct.icp_qat_uclo_objhandle* @qat_uclo_map_chunk(i8* %42, %struct.icp_qat_uof_filehdr* %43, i32 %44)
  %46 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %47 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %46, i32 0, i32 1
  store %struct.icp_qat_uclo_objhandle* %45, %struct.icp_qat_uclo_objhandle** %47, align 8
  %48 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %49 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %48, i32 0, i32 1
  %50 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %49, align 8
  %51 = icmp ne %struct.icp_qat_uclo_objhandle* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %38
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %70

54:                                               ; preds = %38
  %55 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %56 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %57 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %56, i32 0, i32 0
  store %struct.icp_qat_uclo_objhandle* %55, %struct.icp_qat_uclo_objhandle** %57, align 8
  %58 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %59 = call i64 @qat_uclo_parse_uof_obj(%struct.icp_qat_fw_loader_handle* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %80

63:                                               ; preds = %61
  %64 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %65 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %64, i32 0, i32 0
  store %struct.icp_qat_uclo_objhandle* null, %struct.icp_qat_uclo_objhandle** %65, align 8
  %66 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %67 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %66, i32 0, i32 1
  %68 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %67, align 8
  %69 = call i32 @kfree(%struct.icp_qat_uclo_objhandle* %68)
  br label %70

70:                                               ; preds = %63, %52, %37
  %71 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %72 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %71, i32 0, i32 0
  %73 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %72, align 8
  %74 = call i32 @kfree(%struct.icp_qat_uclo_objhandle* %73)
  br label %75

75:                                               ; preds = %70, %28
  %76 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  %77 = call i32 @kfree(%struct.icp_qat_uclo_objhandle* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %62, %14
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.icp_qat_uclo_objhandle* @kzalloc(i32, i32) #1

declare dso_local %struct.icp_qat_uclo_objhandle* @kmemdup(i8*, i32, i32) #1

declare dso_local i64 @qat_uclo_check_uof_format(%struct.icp_qat_uof_filehdr*) #1

declare dso_local %struct.icp_qat_uclo_objhandle* @qat_uclo_map_chunk(i8*, %struct.icp_qat_uof_filehdr*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @qat_uclo_parse_uof_obj(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i32 @kfree(%struct.icp_qat_uclo_objhandle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
