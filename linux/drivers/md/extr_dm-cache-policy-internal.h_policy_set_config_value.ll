; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-internal.h_policy_set_config_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-internal.h_policy_set_config_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_policy*, i8*, i8*)* @policy_set_config_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_set_config_value(%struct.dm_cache_policy* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_cache_policy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %8 = getelementptr inbounds %struct.dm_cache_policy, %struct.dm_cache_policy* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.dm_cache_policy*, i8*, i8*)**
  %10 = load i32 (%struct.dm_cache_policy*, i8*, i8*)*, i32 (%struct.dm_cache_policy*, i8*, i8*)** %9, align 8
  %11 = icmp ne i32 (%struct.dm_cache_policy*, i8*, i8*)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %14 = getelementptr inbounds %struct.dm_cache_policy, %struct.dm_cache_policy* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.dm_cache_policy*, i8*, i8*)**
  %16 = load i32 (%struct.dm_cache_policy*, i8*, i8*)*, i32 (%struct.dm_cache_policy*, i8*, i8*)** %15, align 8
  %17 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 %16(%struct.dm_cache_policy* %17, i8* %18, i8* %19)
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi i32 [ %20, %12 ], [ %23, %21 ]
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
