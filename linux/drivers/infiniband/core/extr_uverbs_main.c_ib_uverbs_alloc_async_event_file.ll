; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_alloc_async_event_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_alloc_async_event_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ib_uverbs_file = type { i32, i32, %struct.ib_uverbs_async_event_file*, %struct.TYPE_2__* }
%struct.ib_uverbs_async_event_file = type { i32, %struct.ib_uverbs_file*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"[infinibandevent]\00", align 1
@uverbs_async_event_fops = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@ib_uverbs_event_handler = common dso_local global i32 0, align 4
@ib_uverbs_release_file = common dso_local global i32 0, align 4
@ib_uverbs_release_async_event_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @ib_uverbs_alloc_async_event_file(%struct.ib_uverbs_file* %0, %struct.ib_device* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.ib_uverbs_file*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_uverbs_async_event_file*, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ib_uverbs_async_event_file* @kzalloc(i32 24, i32 %8)
  store %struct.ib_uverbs_async_event_file* %9, %struct.ib_uverbs_async_event_file** %6, align 8
  %10 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %11 = icmp ne %struct.ib_uverbs_async_event_file* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.file* @ERR_PTR(i32 %14)
  store %struct.file* %15, %struct.file** %3, align 8
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %18 = getelementptr inbounds %struct.ib_uverbs_async_event_file, %struct.ib_uverbs_async_event_file* %17, i32 0, i32 3
  %19 = call i32 @ib_uverbs_init_event_queue(i32* %18)
  %20 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %21 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %22 = getelementptr inbounds %struct.ib_uverbs_async_event_file, %struct.ib_uverbs_async_event_file* %21, i32 0, i32 1
  store %struct.ib_uverbs_file* %20, %struct.ib_uverbs_file** %22, align 8
  %23 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_async_event_file, %struct.ib_uverbs_async_event_file* %23, i32 0, i32 1
  %25 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %24, align 8
  %26 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %25, i32 0, i32 0
  %27 = call i32 @kref_get(i32* %26)
  %28 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %29 = getelementptr inbounds %struct.ib_uverbs_async_event_file, %struct.ib_uverbs_async_event_file* %28, i32 0, i32 0
  %30 = call i32 @kref_init(i32* %29)
  %31 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* @uverbs_async_event_fops, %struct.ib_uverbs_async_event_file* %31, i32 %32)
  store %struct.file* %33, %struct.file** %7, align 8
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = call i64 @IS_ERR(%struct.file* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  br label %77

38:                                               ; preds = %16
  %39 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %40 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %45 = getelementptr inbounds %struct.ib_uverbs_async_event_file, %struct.ib_uverbs_async_event_file* %44, i32 0, i32 2
  %46 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %47 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %45, i32* %49)
  %51 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %52 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %57 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %56, i32 0, i32 2
  %58 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %57, align 8
  %59 = call i32 @WARN_ON(%struct.ib_uverbs_async_event_file* %58)
  %60 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %61 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %62 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %61, i32 0, i32 2
  store %struct.ib_uverbs_async_event_file* %60, %struct.ib_uverbs_async_event_file** %62, align 8
  %63 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %64 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %63, i32 0, i32 2
  %65 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %64, align 8
  %66 = getelementptr inbounds %struct.ib_uverbs_async_event_file, %struct.ib_uverbs_async_event_file* %65, i32 0, i32 0
  %67 = call i32 @kref_get(i32* %66)
  %68 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %69 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %68, i32 0, i32 1
  %70 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %71 = load i32, i32* @ib_uverbs_event_handler, align 4
  %72 = call i32 @INIT_IB_EVENT_HANDLER(i32* %69, %struct.ib_device* %70, i32 %71)
  %73 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %74 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %73, i32 0, i32 1
  %75 = call i32 @ib_register_event_handler(i32* %74)
  %76 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %76, %struct.file** %3, align 8
  br label %89

77:                                               ; preds = %37
  %78 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %79 = getelementptr inbounds %struct.ib_uverbs_async_event_file, %struct.ib_uverbs_async_event_file* %78, i32 0, i32 1
  %80 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %79, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %80, i32 0, i32 0
  %82 = load i32, i32* @ib_uverbs_release_file, align 4
  %83 = call i32 @kref_put(i32* %81, i32 %82)
  %84 = load %struct.ib_uverbs_async_event_file*, %struct.ib_uverbs_async_event_file** %6, align 8
  %85 = getelementptr inbounds %struct.ib_uverbs_async_event_file, %struct.ib_uverbs_async_event_file* %84, i32 0, i32 0
  %86 = load i32, i32* @ib_uverbs_release_async_event_file, align 4
  %87 = call i32 @kref_put(i32* %85, i32 %86)
  %88 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %88, %struct.file** %3, align 8
  br label %89

89:                                               ; preds = %77, %38, %12
  %90 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %90
}

declare dso_local %struct.ib_uverbs_async_event_file* @kzalloc(i32, i32) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @ib_uverbs_init_event_queue(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, %struct.ib_uverbs_async_event_file*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(%struct.ib_uverbs_async_event_file*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_event_handler(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
