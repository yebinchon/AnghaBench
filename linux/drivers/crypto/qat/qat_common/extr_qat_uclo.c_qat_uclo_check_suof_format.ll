; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_check_suof_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_check_suof_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_suof_filehdr = type { i32, i32, i64, i64, i32 }

@ICP_QAT_SUOF_FID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"QAT: invalid header 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"QAT: unsupported firmware type\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"QAT: SUOF chunk amount is incorrect\0A\00", align 1
@ICP_QAT_SUOF_MAJVER = common dso_local global i32 0, align 4
@ICP_QAT_SUOF_MINVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"QAT: bad SUOF version, major 0x%x, minor 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_suof_filehdr*)* @qat_uclo_check_suof_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_check_suof_format(%struct.icp_qat_suof_filehdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_suof_filehdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.icp_qat_suof_filehdr* %0, %struct.icp_qat_suof_filehdr** %3, align 8
  %6 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %3, align 8
  %7 = getelementptr inbounds %struct.icp_qat_suof_filehdr, %struct.icp_qat_suof_filehdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 255
  store i32 %9, i32* %4, align 4
  %10 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %3, align 8
  %11 = getelementptr inbounds %struct.icp_qat_suof_filehdr, %struct.icp_qat_suof_filehdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %5, align 4
  %14 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %3, align 8
  %15 = getelementptr inbounds %struct.icp_qat_suof_filehdr, %struct.icp_qat_suof_filehdr* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ICP_QAT_SUOF_FID, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %3, align 8
  %21 = getelementptr inbounds %struct.icp_qat_suof_filehdr, %struct.icp_qat_suof_filehdr* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %1
  %27 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %3, align 8
  %28 = getelementptr inbounds %struct.icp_qat_suof_filehdr, %struct.icp_qat_suof_filehdr* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %59

35:                                               ; preds = %26
  %36 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %3, align 8
  %37 = getelementptr inbounds %struct.icp_qat_suof_filehdr, %struct.icp_qat_suof_filehdr* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %59

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ICP_QAT_SUOF_MAJVER, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ICP_QAT_SUOF_MINVER, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %52, %40, %31, %19
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
