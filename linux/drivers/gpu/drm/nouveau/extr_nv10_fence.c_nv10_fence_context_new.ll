; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv10_fence.c_nv10_fence_context_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv10_fence.c_nv10_fence_context_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nv10_fence_chan* }
%struct.nv10_fence_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv10_fence_emit = common dso_local global i32 0, align 4
@nv10_fence_read = common dso_local global i32 0, align 4
@nv10_fence_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*)* @nv10_fence_context_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_fence_context_new(%struct.nouveau_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nv10_fence_chan*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.nv10_fence_chan* @kzalloc(i32 12, i32 %5)
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %7, i32 0, i32 0
  store %struct.nv10_fence_chan* %6, %struct.nv10_fence_chan** %8, align 8
  store %struct.nv10_fence_chan* %6, %struct.nv10_fence_chan** %4, align 8
  %9 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %10 = icmp ne %struct.nv10_fence_chan* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %16 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %17 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %16, i32 0, i32 0
  %18 = call i32 @nouveau_fence_context_new(%struct.nouveau_channel* %15, %struct.TYPE_2__* %17)
  %19 = load i32, i32* @nv10_fence_emit, align 4
  %20 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %21 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @nv10_fence_read, align 4
  %24 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %25 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @nv10_fence_sync, align 4
  %28 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %29 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %14, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.nv10_fence_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_fence_context_new(%struct.nouveau_channel*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
