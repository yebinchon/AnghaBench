; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_man_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_man_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed stopping command buffer contexts.\0A\00", align 1
@SVGA_IRQFLAG_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_cmdbuf_man_destroy(%struct.vmw_cmdbuf_man* %0) #0 {
  %2 = alloca %struct.vmw_cmdbuf_man*, align 8
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %2, align 8
  %3 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %4 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @WARN_ON_ONCE(i32 %5)
  %7 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 10, %8
  %10 = call i32 @vmw_cmdbuf_idle(%struct.vmw_cmdbuf_man* %7, i32 0, i32 %9)
  %11 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %12 = call i64 @vmw_cmdbuf_startstop(%struct.vmw_cmdbuf_man* %11, i32 0, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %18 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @SVGA_IRQFLAG_ERROR, align 4
  %21 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %22 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %21, i32 0, i32 6
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @vmw_generic_waiter_remove(%struct.TYPE_2__* %19, i32 %20, i32* %24)
  %26 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %27 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %26, i32 0, i32 5
  %28 = call i32 @cancel_work_sync(i32* %27)
  %29 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %30 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dma_pool_destroy(i32 %31)
  %33 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %34 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_pool_destroy(i32 %35)
  %37 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %38 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %37, i32 0, i32 2
  %39 = call i32 @mutex_destroy(i32* %38)
  %40 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %41 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %40, i32 0, i32 1
  %42 = call i32 @mutex_destroy(i32* %41)
  %43 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %44 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %43, i32 0, i32 0
  %45 = call i32 @mutex_destroy(i32* %44)
  %46 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %47 = call i32 @kfree(%struct.vmw_cmdbuf_man* %46)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @vmw_cmdbuf_idle(%struct.vmw_cmdbuf_man*, i32, i32) #1

declare dso_local i64 @vmw_cmdbuf_startstop(%struct.vmw_cmdbuf_man*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_generic_waiter_remove(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.vmw_cmdbuf_man*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
