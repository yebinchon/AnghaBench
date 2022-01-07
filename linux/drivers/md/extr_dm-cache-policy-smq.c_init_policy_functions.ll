; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_init_policy_functions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_init_policy_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@smq_destroy = common dso_local global i32 0, align 4
@smq_lookup = common dso_local global i32 0, align 4
@smq_lookup_with_work = common dso_local global i32 0, align 4
@smq_get_background_work = common dso_local global i32 0, align 4
@smq_complete_background_work = common dso_local global i32 0, align 4
@smq_set_dirty = common dso_local global i32 0, align 4
@smq_clear_dirty = common dso_local global i32 0, align 4
@smq_load_mapping = common dso_local global i32 0, align 4
@smq_invalidate_mapping = common dso_local global i32 0, align 4
@smq_get_hint = common dso_local global i32 0, align 4
@smq_residency = common dso_local global i32 0, align 4
@smq_tick = common dso_local global i32 0, align 4
@smq_allow_migrations = common dso_local global i32 0, align 4
@mq_set_config_value = common dso_local global i32 0, align 4
@mq_emit_config_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*, i32)* @init_policy_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_policy_functions(%struct.smq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.smq_policy*, align 8
  %4 = alloca i32, align 4
  store %struct.smq_policy* %0, %struct.smq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @smq_destroy, align 4
  %6 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %7 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 14
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @smq_lookup, align 4
  %10 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %11 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 13
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @smq_lookup_with_work, align 4
  %14 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %15 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 12
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @smq_get_background_work, align 4
  %18 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %19 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 11
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @smq_complete_background_work, align 4
  %22 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %23 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 10
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @smq_set_dirty, align 4
  %26 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %27 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 9
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @smq_clear_dirty, align 4
  %30 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %31 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @smq_load_mapping, align 4
  %34 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %35 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 7
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @smq_invalidate_mapping, align 4
  %38 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %39 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @smq_get_hint, align 4
  %42 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %43 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @smq_residency, align 4
  %46 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %47 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @smq_tick, align 4
  %50 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %51 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @smq_allow_migrations, align 4
  %54 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %55 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %2
  %60 = load i32, i32* @mq_set_config_value, align 4
  %61 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %62 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @mq_emit_config_values, align 4
  %65 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %66 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
