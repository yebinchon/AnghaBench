; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sw_sync.c_sync_timeline_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sw_sync.c_sync_timeline_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_timeline = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sync_timeline* (i8*)* @sync_timeline_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sync_timeline* @sync_timeline_create(i8* %0) #0 {
  %2 = alloca %struct.sync_timeline*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sync_timeline*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sync_timeline* @kzalloc(i32 24, i32 %5)
  store %struct.sync_timeline* %6, %struct.sync_timeline** %4, align 8
  %7 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  %8 = icmp ne %struct.sync_timeline* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.sync_timeline* null, %struct.sync_timeline** %2, align 8
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  %12 = getelementptr inbounds %struct.sync_timeline, %struct.sync_timeline* %11, i32 0, i32 5
  %13 = call i32 @kref_init(i32* %12)
  %14 = call i32 @dma_fence_context_alloc(i32 1)
  %15 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  %16 = getelementptr inbounds %struct.sync_timeline, %struct.sync_timeline* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  %18 = getelementptr inbounds %struct.sync_timeline, %struct.sync_timeline* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strlcpy(i32 %19, i8* %20, i32 4)
  %22 = load i32, i32* @RB_ROOT, align 4
  %23 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  %24 = getelementptr inbounds %struct.sync_timeline, %struct.sync_timeline* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  %26 = getelementptr inbounds %struct.sync_timeline, %struct.sync_timeline* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  %29 = getelementptr inbounds %struct.sync_timeline, %struct.sync_timeline* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  %32 = call i32 @sync_timeline_debug_add(%struct.sync_timeline* %31)
  %33 = load %struct.sync_timeline*, %struct.sync_timeline** %4, align 8
  store %struct.sync_timeline* %33, %struct.sync_timeline** %2, align 8
  br label %34

34:                                               ; preds = %10, %9
  %35 = load %struct.sync_timeline*, %struct.sync_timeline** %2, align 8
  ret %struct.sync_timeline* %35
}

declare dso_local %struct.sync_timeline* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sync_timeline_debug_add(%struct.sync_timeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
