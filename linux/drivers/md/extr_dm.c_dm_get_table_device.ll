; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_get_table_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_get_table_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32 }
%struct.dm_dev = type { i32, i32*, i32 }
%struct.table_device = type { %struct.dm_dev, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_get_table_device(%struct.mapped_device* %0, i32 %1, i32 %2, %struct.dm_dev** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_dev**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.table_device*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dm_dev** %3, %struct.dm_dev*** %9, align 8
  %12 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %13 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %16 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %15, i32 0, i32 1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.table_device* @find_table_device(i32* %16, i32 %17, i32 %18)
  store %struct.table_device* %19, %struct.table_device** %11, align 8
  %20 = load %struct.table_device*, %struct.table_device** %11, align 8
  %21 = icmp ne %struct.table_device* %20, null
  br i1 %21, label %71, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %25 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.table_device* @kmalloc_node(i32 32, i32 %23, i32 %26)
  store %struct.table_device* %27, %struct.table_device** %11, align 8
  %28 = load %struct.table_device*, %struct.table_device** %11, align 8
  %29 = icmp ne %struct.table_device* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %32 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %82

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.table_device*, %struct.table_device** %11, align 8
  %39 = getelementptr inbounds %struct.table_device, %struct.table_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.table_device*, %struct.table_device** %11, align 8
  %42 = getelementptr inbounds %struct.table_device, %struct.table_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.table_device*, %struct.table_device** %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %47 = call i32 @open_table_device(%struct.table_device* %44, i32 %45, %struct.mapped_device* %46)
  store i32 %47, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %51 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.table_device*, %struct.table_device** %11, align 8
  %54 = call i32 @kfree(%struct.table_device* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %82

56:                                               ; preds = %36
  %57 = load %struct.table_device*, %struct.table_device** %11, align 8
  %58 = getelementptr inbounds %struct.table_device, %struct.table_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @format_dev_t(i32 %60, i32 %61)
  %63 = load %struct.table_device*, %struct.table_device** %11, align 8
  %64 = getelementptr inbounds %struct.table_device, %struct.table_device* %63, i32 0, i32 1
  %65 = call i32 @refcount_set(i32* %64, i32 1)
  %66 = load %struct.table_device*, %struct.table_device** %11, align 8
  %67 = getelementptr inbounds %struct.table_device, %struct.table_device* %66, i32 0, i32 2
  %68 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %69 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %68, i32 0, i32 1
  %70 = call i32 @list_add(i32* %67, i32* %69)
  br label %75

71:                                               ; preds = %4
  %72 = load %struct.table_device*, %struct.table_device** %11, align 8
  %73 = getelementptr inbounds %struct.table_device, %struct.table_device* %72, i32 0, i32 1
  %74 = call i32 @refcount_inc(i32* %73)
  br label %75

75:                                               ; preds = %71, %56
  %76 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %77 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.table_device*, %struct.table_device** %11, align 8
  %80 = getelementptr inbounds %struct.table_device, %struct.table_device* %79, i32 0, i32 0
  %81 = load %struct.dm_dev**, %struct.dm_dev*** %9, align 8
  store %struct.dm_dev* %80, %struct.dm_dev** %81, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %75, %49, %30
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.table_device* @find_table_device(i32*, i32, i32) #1

declare dso_local %struct.table_device* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @open_table_device(%struct.table_device*, i32, %struct.mapped_device*) #1

declare dso_local i32 @kfree(%struct.table_device*) #1

declare dso_local i32 @format_dev_t(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
