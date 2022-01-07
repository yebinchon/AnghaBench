; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_tpg_attrib_srp_max_rsp_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_tpg_attrib_srp_max_rsp_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_portal_group = type { i32 }
%struct.srpt_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"kstrtoul() failed with ret: %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@MAX_SRPT_RSP_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"val: %lu exceeds MAX_SRPT_RSP_SIZE: %d\0A\00", align 1
@MIN_MAX_RSP_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"val: %lu smaller than MIN_MAX_RSP_SIZE: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @srpt_tpg_attrib_srp_max_rsp_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @srpt_tpg_attrib_srp_max_rsp_size_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_portal_group*, align 8
  %9 = alloca %struct.srpt_port*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.se_portal_group* @attrib_to_tpg(%struct.config_item* %12)
  store %struct.se_portal_group* %13, %struct.se_portal_group** %8, align 8
  %14 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %15 = call %struct.srpt_port* @srpt_tpg_to_sport(%struct.se_portal_group* %14)
  store %struct.srpt_port* %15, %struct.srpt_port** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %52

26:                                               ; preds = %3
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @MAX_SRPT_RSP_SIZE, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @MAX_SRPT_RSP_SIZE, align 8
  %33 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %52

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @MIN_MAX_RSP_SIZE, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @MIN_MAX_RSP_SIZE, align 8
  %43 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %4, align 8
  br label %52

46:                                               ; preds = %36
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %49 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %46, %40, %30, %20
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local %struct.se_portal_group* @attrib_to_tpg(%struct.config_item*) #1

declare dso_local %struct.srpt_port* @srpt_tpg_to_sport(%struct.se_portal_group*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
