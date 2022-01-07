; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_check_uof_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_check_uof_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uof_filehdr = type { i32, i32, i64 }

@ICP_QAT_UOF_FID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"QAT: Invalid header 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICP_QAT_UOF_MINVER = common dso_local global i32 0, align 4
@ICP_QAT_UOF_MAJVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"QAT: bad UOF version, major 0x%x, minor 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_uof_filehdr*)* @qat_uclo_check_uof_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_check_uof_format(%struct.icp_qat_uof_filehdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_uof_filehdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.icp_qat_uof_filehdr* %0, %struct.icp_qat_uof_filehdr** %3, align 8
  %6 = load %struct.icp_qat_uof_filehdr*, %struct.icp_qat_uof_filehdr** %3, align 8
  %7 = getelementptr inbounds %struct.icp_qat_uof_filehdr, %struct.icp_qat_uof_filehdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 255
  store i32 %9, i32* %4, align 4
  %10 = load %struct.icp_qat_uof_filehdr*, %struct.icp_qat_uof_filehdr** %3, align 8
  %11 = getelementptr inbounds %struct.icp_qat_uof_filehdr, %struct.icp_qat_uof_filehdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %5, align 4
  %14 = load %struct.icp_qat_uof_filehdr*, %struct.icp_qat_uof_filehdr** %3, align 8
  %15 = getelementptr inbounds %struct.icp_qat_uof_filehdr, %struct.icp_qat_uof_filehdr* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ICP_QAT_UOF_FID, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.icp_qat_uof_filehdr*, %struct.icp_qat_uof_filehdr** %3, align 8
  %21 = getelementptr inbounds %struct.icp_qat_uof_filehdr, %struct.icp_qat_uof_filehdr* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ICP_QAT_UOF_MINVER, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ICP_QAT_UOF_MAJVER, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %35, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
