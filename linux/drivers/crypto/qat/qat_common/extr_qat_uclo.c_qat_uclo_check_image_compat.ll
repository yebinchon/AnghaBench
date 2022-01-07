; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_check_image_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_check_image_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uof_encap_obj = type { i64 }
%struct.icp_qat_uof_image = type { i32, i32 }
%struct.icp_qat_uof_objtable = type { i64 }
%struct.icp_qat_uof_code_page = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [55 x i8] c"QAT: UOF can't contain imported variable to be parsed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"QAT: UOF can't contain shared control store feature\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"QAT: UOF can't contain multiple pages\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"QAT: UOF can't use shared control store feature\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"QAT: UOF can't use reloadable feature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_image*)* @qat_uclo_check_image_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_check_image_compat(%struct.icp_qat_uof_encap_obj* %0, %struct.icp_qat_uof_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icp_qat_uof_encap_obj*, align 8
  %5 = alloca %struct.icp_qat_uof_image*, align 8
  %6 = alloca %struct.icp_qat_uof_objtable*, align 8
  %7 = alloca %struct.icp_qat_uof_objtable*, align 8
  %8 = alloca %struct.icp_qat_uof_objtable*, align 8
  %9 = alloca %struct.icp_qat_uof_objtable*, align 8
  %10 = alloca %struct.icp_qat_uof_code_page*, align 8
  store %struct.icp_qat_uof_encap_obj* %0, %struct.icp_qat_uof_encap_obj** %4, align 8
  store %struct.icp_qat_uof_image* %1, %struct.icp_qat_uof_image** %5, align 8
  %11 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %5, align 8
  %12 = bitcast %struct.icp_qat_uof_image* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 8
  %14 = bitcast i8* %13 to %struct.icp_qat_uof_code_page*
  store %struct.icp_qat_uof_code_page* %14, %struct.icp_qat_uof_code_page** %10, align 8
  %15 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %4, align 8
  %16 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %10, align 8
  %19 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = inttoptr i64 %21 to %struct.icp_qat_uof_objtable*
  store %struct.icp_qat_uof_objtable* %22, %struct.icp_qat_uof_objtable** %6, align 8
  %23 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %4, align 8
  %24 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %10, align 8
  %27 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = inttoptr i64 %29 to %struct.icp_qat_uof_objtable*
  store %struct.icp_qat_uof_objtable* %30, %struct.icp_qat_uof_objtable** %7, align 8
  %31 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %4, align 8
  %32 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %10, align 8
  %35 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = inttoptr i64 %37 to %struct.icp_qat_uof_objtable*
  store %struct.icp_qat_uof_objtable* %38, %struct.icp_qat_uof_objtable** %8, align 8
  %39 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %6, align 8
  %40 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %2
  %44 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %7, align 8
  %45 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %8, align 8
  %50 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48, %43, %2
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %104

57:                                               ; preds = %48
  %58 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %4, align 8
  %59 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %10, align 8
  %62 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = inttoptr i64 %64 to %struct.icp_qat_uof_objtable*
  store %struct.icp_qat_uof_objtable* %65, %struct.icp_qat_uof_objtable** %9, align 8
  %66 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %9, align 8
  %67 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %104

74:                                               ; preds = %57
  %75 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %5, align 8
  %76 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %104

83:                                               ; preds = %74
  %84 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %5, align 8
  %85 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @ICP_QAT_SHARED_USTORE_MODE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @EFAULT, align 4
  %92 = sub i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %104

93:                                               ; preds = %83
  %94 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %5, align 8
  %95 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @RELOADABLE_CTX_SHARED_MODE(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %99, %89, %79, %70, %53
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ICP_QAT_SHARED_USTORE_MODE(i32) #1

declare dso_local i64 @RELOADABLE_CTX_SHARED_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
