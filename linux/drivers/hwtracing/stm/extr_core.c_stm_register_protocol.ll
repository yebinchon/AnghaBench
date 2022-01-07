; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_register_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_register_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_protocol_driver = type { i64, i32 }
%struct.stm_pdrv_entry = type { %struct.stm_protocol_driver*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@stm_pdrv_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@stm_pdrv_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stm_register_protocol(%struct.stm_protocol_driver* %0) #0 {
  %2 = alloca %struct.stm_protocol_driver*, align 8
  %3 = alloca %struct.stm_pdrv_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.stm_protocol_driver* %0, %struct.stm_protocol_driver** %2, align 8
  store %struct.stm_pdrv_entry* null, %struct.stm_pdrv_entry** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call i32 @mutex_lock(i32* @stm_pdrv_mutex)
  %8 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %2, align 8
  %9 = getelementptr inbounds %struct.stm_protocol_driver, %struct.stm_protocol_driver* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @__stm_lookup_protocol(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EEXIST, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.stm_pdrv_entry* @kzalloc(i32 16, i32 %17)
  store %struct.stm_pdrv_entry* %18, %struct.stm_pdrv_entry** %3, align 8
  %19 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %3, align 8
  %20 = icmp ne %struct.stm_pdrv_entry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %47

22:                                               ; preds = %16
  %23 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %2, align 8
  %24 = getelementptr inbounds %struct.stm_protocol_driver, %struct.stm_protocol_driver* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %2, align 8
  %29 = getelementptr inbounds %struct.stm_protocol_driver, %struct.stm_protocol_driver* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @get_policy_node_type(i64 %30)
  %32 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %3, align 8
  %33 = getelementptr inbounds %struct.stm_pdrv_entry, %struct.stm_pdrv_entry* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %3, align 8
  %35 = getelementptr inbounds %struct.stm_pdrv_entry, %struct.stm_pdrv_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %47

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %3, align 8
  %42 = getelementptr inbounds %struct.stm_pdrv_entry, %struct.stm_pdrv_entry* %41, i32 0, i32 1
  %43 = call i32 @list_add_tail(i32* %42, i32* @stm_pdrv_head)
  %44 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %2, align 8
  %45 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %3, align 8
  %46 = getelementptr inbounds %struct.stm_pdrv_entry, %struct.stm_pdrv_entry* %45, i32 0, i32 0
  store %struct.stm_protocol_driver* %44, %struct.stm_protocol_driver** %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %38, %21, %13
  %48 = call i32 @mutex_unlock(i32* @stm_pdrv_mutex)
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %3, align 8
  %53 = call i32 @kfree(%struct.stm_pdrv_entry* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__stm_lookup_protocol(i32) #1

declare dso_local %struct.stm_pdrv_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @get_policy_node_type(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.stm_pdrv_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
