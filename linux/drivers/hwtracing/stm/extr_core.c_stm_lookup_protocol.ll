; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_lookup_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_lookup_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_protocol_driver = type { i32 }
%struct.config_item_type = type { i32 }
%struct.stm_pdrv_entry = type { %struct.config_item_type*, %struct.stm_protocol_driver* }

@stm_pdrv_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stm_lookup_protocol(i8* %0, %struct.stm_protocol_driver** %1, %struct.config_item_type** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm_protocol_driver**, align 8
  %6 = alloca %struct.config_item_type**, align 8
  %7 = alloca %struct.stm_pdrv_entry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.stm_protocol_driver** %1, %struct.stm_protocol_driver*** %5, align 8
  store %struct.config_item_type** %2, %struct.config_item_type*** %6, align 8
  %8 = call i32 @mutex_lock(i32* @stm_pdrv_mutex)
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.stm_pdrv_entry* @__stm_lookup_protocol(i8* %9)
  store %struct.stm_pdrv_entry* %10, %struct.stm_pdrv_entry** %7, align 8
  %11 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %7, align 8
  %12 = icmp ne %struct.stm_pdrv_entry* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %7, align 8
  %15 = getelementptr inbounds %struct.stm_pdrv_entry, %struct.stm_pdrv_entry* %14, i32 0, i32 1
  %16 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %15, align 8
  %17 = icmp ne %struct.stm_protocol_driver* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %7, align 8
  %20 = getelementptr inbounds %struct.stm_pdrv_entry, %struct.stm_pdrv_entry* %19, i32 0, i32 1
  %21 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %20, align 8
  %22 = call i64 @stm_get_protocol(%struct.stm_protocol_driver* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %7, align 8
  %26 = getelementptr inbounds %struct.stm_pdrv_entry, %struct.stm_pdrv_entry* %25, i32 0, i32 1
  %27 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %26, align 8
  %28 = load %struct.stm_protocol_driver**, %struct.stm_protocol_driver*** %5, align 8
  store %struct.stm_protocol_driver* %27, %struct.stm_protocol_driver** %28, align 8
  %29 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %7, align 8
  %30 = getelementptr inbounds %struct.stm_pdrv_entry, %struct.stm_pdrv_entry* %29, i32 0, i32 0
  %31 = load %struct.config_item_type*, %struct.config_item_type** %30, align 8
  %32 = load %struct.config_item_type**, %struct.config_item_type*** %6, align 8
  store %struct.config_item_type* %31, %struct.config_item_type** %32, align 8
  br label %33

33:                                               ; preds = %24, %18, %13, %3
  %34 = call i32 @mutex_unlock(i32* @stm_pdrv_mutex)
  %35 = load %struct.stm_pdrv_entry*, %struct.stm_pdrv_entry** %7, align 8
  %36 = icmp ne %struct.stm_pdrv_entry* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.stm_pdrv_entry* @__stm_lookup_protocol(i8*) #1

declare dso_local i64 @stm_get_protocol(%struct.stm_protocol_driver*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
