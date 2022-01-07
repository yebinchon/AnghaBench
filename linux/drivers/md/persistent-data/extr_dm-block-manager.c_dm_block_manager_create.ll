; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_block_manager_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_block_manager_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32, i32 }
%struct.block_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dm_block_manager_alloc_callback = common dso_local global i32 0, align 4
@dm_block_manager_write_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_block_manager* @dm_block_manager_create(%struct.block_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_block_manager*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_block_manager*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dm_block_manager* @kmalloc(i32 8, i32 %10)
  store %struct.dm_block_manager* %11, %struct.dm_block_manager** %9, align 8
  %12 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  %13 = icmp ne %struct.dm_block_manager* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.block_device*, %struct.block_device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @dm_block_manager_alloc_callback, align 4
  %22 = load i32, i32* @dm_block_manager_write_callback, align 4
  %23 = call i32 @dm_bufio_client_create(%struct.block_device* %18, i32 %19, i32 %20, i32 4, i32 %21, i32 %22)
  %24 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  %25 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  %27 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  %33 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  %37 = call i32 @kfree(%struct.dm_block_manager* %36)
  br label %42

38:                                               ; preds = %17
  %39 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  %40 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  store %struct.dm_block_manager* %41, %struct.dm_block_manager** %4, align 8
  br label %45

42:                                               ; preds = %31, %14
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.dm_block_manager* @ERR_PTR(i32 %43)
  store %struct.dm_block_manager* %44, %struct.dm_block_manager** %4, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.dm_block_manager*, %struct.dm_block_manager** %4, align 8
  ret %struct.dm_block_manager* %46
}

declare dso_local %struct.dm_block_manager* @kmalloc(i32, i32) #1

declare dso_local i32 @dm_bufio_client_create(%struct.block_device*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.dm_block_manager*) #1

declare dso_local %struct.dm_block_manager* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
