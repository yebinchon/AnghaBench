; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_alloc_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_alloc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_mm_node = type { i32 }
%struct.vmw_cmdbuf_alloc_info = type { i32, i32, %struct.drm_mm_node* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SVGA_IRQFLAG_COMMAND_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_cmdbuf_man*, %struct.drm_mm_node*, i64, i32)* @vmw_cmdbuf_alloc_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmdbuf_alloc_space(%struct.vmw_cmdbuf_man* %0, %struct.drm_mm_node* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_cmdbuf_man*, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_cmdbuf_alloc_info, align 8
  %11 = alloca i32, align 4
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %6, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @PAGE_ALIGN(i64 %12)
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = getelementptr inbounds %struct.vmw_cmdbuf_alloc_info, %struct.vmw_cmdbuf_alloc_info* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %18 = getelementptr inbounds %struct.vmw_cmdbuf_alloc_info, %struct.vmw_cmdbuf_alloc_info* %10, i32 0, i32 2
  store %struct.drm_mm_node* %17, %struct.drm_mm_node** %18, align 8
  %19 = getelementptr inbounds %struct.vmw_cmdbuf_alloc_info, %struct.vmw_cmdbuf_alloc_info* %10, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %24 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %23, i32 0, i32 0
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ERESTARTSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %97

30:                                               ; preds = %22
  br label %35

31:                                               ; preds = %4
  %32 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %33 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  br label %35

35:                                               ; preds = %31, %30
  %36 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %37 = call i64 @vmw_cmdbuf_try_alloc(%struct.vmw_cmdbuf_man* %36, %struct.vmw_cmdbuf_alloc_info* %10)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %93

40:                                               ; preds = %35
  %41 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %42 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* @SVGA_IRQFLAG_COMMAND_BUFFER, align 4
  %45 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %46 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @vmw_generic_waiter_add(%struct.TYPE_3__* %43, i32 %44, i32* %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %40
  %53 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %54 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %57 = call i64 @vmw_cmdbuf_try_alloc(%struct.vmw_cmdbuf_man* %56, %struct.vmw_cmdbuf_alloc_info* %10)
  %58 = call i32 @wait_event_interruptible(i32 %55, i64 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %63 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* @SVGA_IRQFLAG_COMMAND_BUFFER, align 4
  %66 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %67 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @vmw_generic_waiter_remove(%struct.TYPE_3__* %64, i32 %65, i32* %69)
  %71 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %72 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %97

75:                                               ; preds = %52
  br label %83

76:                                               ; preds = %40
  %77 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %78 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %81 = call i64 @vmw_cmdbuf_try_alloc(%struct.vmw_cmdbuf_man* %80, %struct.vmw_cmdbuf_alloc_info* %10)
  %82 = call i32 @wait_event(i32 %79, i64 %81)
  br label %83

83:                                               ; preds = %76, %75
  %84 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %85 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* @SVGA_IRQFLAG_COMMAND_BUFFER, align 4
  %88 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %89 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i32 @vmw_generic_waiter_remove(%struct.TYPE_3__* %86, i32 %87, i32* %91)
  br label %93

93:                                               ; preds = %83, %39
  %94 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %95 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %61, %27
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vmw_cmdbuf_try_alloc(%struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_alloc_info*) #1

declare dso_local i32 @vmw_generic_waiter_add(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @vmw_generic_waiter_remove(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
