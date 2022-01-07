; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_tpg_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_tpg_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_portal_group = type { i32 }
%struct.srpt_port = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unable to extract srpt_tpg_store_enable\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Illegal value for srpt_tpg_store_enable: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @srpt_tpg_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @srpt_tpg_enable_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
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
  %13 = call %struct.se_portal_group* @to_tpg(%struct.config_item* %12)
  store %struct.se_portal_group* %13, %struct.se_portal_group** %8, align 8
  %14 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %15 = call %struct.srpt_port* @srpt_tpg_to_sport(%struct.se_portal_group* %14)
  store %struct.srpt_port* %15, %struct.srpt_port** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %46

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %46

35:                                               ; preds = %27, %24
  %36 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %37 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @srpt_set_enabled(%struct.srpt_port* %39, i64 %40)
  %42 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %43 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %35, %30, %20
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local %struct.se_portal_group* @to_tpg(%struct.config_item*) #1

declare dso_local %struct.srpt_port* @srpt_tpg_to_sport(%struct.se_portal_group*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @srpt_set_enabled(%struct.srpt_port*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
