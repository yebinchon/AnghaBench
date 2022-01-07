; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i64, i32, i32, i32, i32, i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.dm_table = type { i32 }
%struct.queue_limits = type { i32 }

@event_callback = common dso_local global i32 0, align 4
@DM_TYPE_NVME_BIO_BASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_table* (%struct.mapped_device*, %struct.dm_table*, %struct.queue_limits*)* @__bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_table* @__bind(%struct.mapped_device* %0, %struct.dm_table* %1, %struct.queue_limits* %2) #0 {
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca %struct.queue_limits*, align 8
  %7 = alloca %struct.dm_table*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store %struct.dm_table* %1, %struct.dm_table** %5, align 8
  store %struct.queue_limits* %2, %struct.queue_limits** %6, align 8
  %12 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %13 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %12, i32 0, i32 6
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %8, align 8
  %15 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %16 = call i32 @dm_table_request_based(%struct.dm_table* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %18 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %17, i32 0, i32 3
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %21 = call i64 @dm_table_get_size(%struct.dm_table* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %24 = call i64 @dm_get_size(%struct.mapped_device* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %28 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %27, i32 0, i32 5
  %29 = call i32 @memset(i32* %28, i32 0, i32 4)
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @__set_size(%struct.mapped_device* %31, i64 %32)
  %34 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %35 = load i32, i32* @event_callback, align 4
  %36 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %37 = call i32 @dm_table_event_callback(%struct.dm_table* %34, i32 %35, %struct.mapped_device* %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %42 = call i32 @dm_stop_queue(%struct.request_queue* %41)
  br label %43

43:                                               ; preds = %40, %30
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %48 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DM_TYPE_NVME_BIO_BASED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46, %43
  %53 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %54 = call i32 @dm_table_get_immutable_target(%struct.dm_table* %53)
  %55 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %56 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %59 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %60 = call i32 @__bind_mempools(%struct.mapped_device* %58, %struct.dm_table* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = call %struct.dm_table* @ERR_PTR(i32 %64)
  store %struct.dm_table* %65, %struct.dm_table** %7, align 8
  br label %94

66:                                               ; preds = %57
  %67 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %68 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %71 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %70, i32 0, i32 3
  %72 = call i32 @lockdep_is_held(i32* %71)
  %73 = call %struct.dm_table* @rcu_dereference_protected(i32 %69, i32 %72)
  store %struct.dm_table* %73, %struct.dm_table** %7, align 8
  %74 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %75 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %78 = bitcast %struct.dm_table* %77 to i8*
  %79 = call i32 @rcu_assign_pointer(i32 %76, i8* %78)
  %80 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %81 = call i32 @dm_table_get_immutable_target_type(%struct.dm_table* %80)
  %82 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %83 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %85 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %86 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %87 = call i32 @dm_table_set_restrictions(%struct.dm_table* %84, %struct.request_queue* %85, %struct.queue_limits* %86)
  %88 = load %struct.dm_table*, %struct.dm_table** %7, align 8
  %89 = icmp ne %struct.dm_table* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %66
  %91 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %92 = call i32 @dm_sync_table(%struct.mapped_device* %91)
  br label %93

93:                                               ; preds = %90, %66
  br label %94

94:                                               ; preds = %93, %63
  %95 = load %struct.dm_table*, %struct.dm_table** %7, align 8
  ret %struct.dm_table* %95
}

declare dso_local i32 @dm_table_request_based(%struct.dm_table*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @dm_table_get_size(%struct.dm_table*) #1

declare dso_local i64 @dm_get_size(%struct.mapped_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @__set_size(%struct.mapped_device*, i64) #1

declare dso_local i32 @dm_table_event_callback(%struct.dm_table*, i32, %struct.mapped_device*) #1

declare dso_local i32 @dm_stop_queue(%struct.request_queue*) #1

declare dso_local i32 @dm_table_get_immutable_target(%struct.dm_table*) #1

declare dso_local i32 @__bind_mempools(%struct.mapped_device*, %struct.dm_table*) #1

declare dso_local %struct.dm_table* @ERR_PTR(i32) #1

declare dso_local %struct.dm_table* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i8*) #1

declare dso_local i32 @dm_table_get_immutable_target_type(%struct.dm_table*) #1

declare dso_local i32 @dm_table_set_restrictions(%struct.dm_table*, %struct.request_queue*, %struct.queue_limits*) #1

declare dso_local i32 @dm_sync_table(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
