; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_node_channels_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_node_channels_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.config_item = type { i32 }
%struct.stp_policy_node = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.stm_device* }
%struct.stm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@stp_policy_subsys = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @stp_policy_node_channels_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stp_policy_node_channels_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stp_policy_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stm_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.config_item*, %struct.config_item** %5, align 8
  %15 = call %struct.stp_policy_node* @to_stp_policy_node(%struct.config_item* %14)
  store %struct.stp_policy_node* %15, %struct.stp_policy_node** %8, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i64, i64* @ENODEV, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %13, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10)
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %69

25:                                               ; preds = %3
  %26 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stp_policy_subsys, i32 0, i32 0))
  %27 = load %struct.stp_policy_node*, %struct.stp_policy_node** %8, align 8
  %28 = getelementptr inbounds %struct.stp_policy_node, %struct.stp_policy_node* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.stm_device*, %struct.stm_device** %30, align 8
  store %struct.stm_device* %31, %struct.stm_device** %11, align 8
  %32 = load %struct.stm_device*, %struct.stm_device** %11, align 8
  %33 = icmp ne %struct.stm_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %66

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @INT_MAX, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @INT_MAX, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.stm_device*, %struct.stm_device** %11, align 8
  %50 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp uge i32 %48, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47, %43, %39, %35
  %56 = load i64, i64* @ERANGE, align 8
  %57 = sub i64 0, %56
  store i64 %57, i64* %13, align 8
  br label %66

58:                                               ; preds = %47
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.stp_policy_node*, %struct.stp_policy_node** %8, align 8
  %62 = getelementptr inbounds %struct.stp_policy_node, %struct.stp_policy_node* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.stp_policy_node*, %struct.stp_policy_node** %8, align 8
  %65 = getelementptr inbounds %struct.stp_policy_node, %struct.stp_policy_node* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %55, %34
  %67 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stp_policy_subsys, i32 0, i32 0))
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %66, %22
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local %struct.stp_policy_node* @to_stp_policy_node(%struct.config_item*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
