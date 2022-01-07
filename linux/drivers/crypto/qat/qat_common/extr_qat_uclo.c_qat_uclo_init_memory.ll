; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_4__*, %struct.icp_qat_uclo_objhandle* }
%struct.TYPE_4__ = type { i32 }
%struct.icp_qat_uclo_objhandle = type { i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.icp_qat_uof_initmem* }
%struct.icp_qat_uof_initmem = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"QAT: fail to batch init lmem for AE %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*)* @qat_uclo_init_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_init_memory(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %7 = alloca %struct.icp_qat_uof_initmem*, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  %8 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %9 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %8, i32 0, i32 1
  %10 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %9, align 8
  store %struct.icp_qat_uclo_objhandle* %10, %struct.icp_qat_uclo_objhandle** %6, align 8
  %11 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %12 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %13, align 8
  store %struct.icp_qat_uof_initmem* %14, %struct.icp_qat_uof_initmem** %7, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %47, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %18 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %24 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %29 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %30 = call i64 @qat_uclo_init_ae_memory(%struct.icp_qat_fw_loader_handle* %28, %struct.icp_qat_uof_initmem* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %107

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %38 = ptrtoint %struct.icp_qat_uof_initmem* %37 to i64
  %39 = add i64 %38, 16
  %40 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %41 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = add i64 %39, %44
  %46 = inttoptr i64 %45 to %struct.icp_qat_uof_initmem*
  store %struct.icp_qat_uof_initmem* %46, %struct.icp_qat_uof_initmem** %7, align 8
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %15

50:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %103, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %54 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %51
  %60 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %63 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @qat_hal_batch_wr_lm(%struct.icp_qat_fw_loader_handle* %60, i32 %61, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %107

76:                                               ; preds = %59
  %77 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %78 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %79 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @qat_uclo_cleanup_batch_init_list(%struct.icp_qat_fw_loader_handle* %77, i32* %83)
  %85 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %88 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @qat_uclo_batch_wr_umem(%struct.icp_qat_fw_loader_handle* %85, i32 %86, i32 %93)
  %95 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %96 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %97 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @qat_uclo_cleanup_batch_init_list(%struct.icp_qat_fw_loader_handle* %95, i32* %101)
  br label %103

103:                                              ; preds = %76
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %51

106:                                              ; preds = %51
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %71, %32
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @qat_uclo_init_ae_memory(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*) #1

declare dso_local i64 @qat_hal_batch_wr_lm(%struct.icp_qat_fw_loader_handle*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qat_uclo_cleanup_batch_init_list(%struct.icp_qat_fw_loader_handle*, i32*) #1

declare dso_local i32 @qat_uclo_batch_wr_umem(%struct.icp_qat_fw_loader_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
