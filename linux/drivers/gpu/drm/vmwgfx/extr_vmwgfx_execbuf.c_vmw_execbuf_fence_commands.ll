; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_fence_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_fence_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_fence_obj = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Fence submission error. Syncing.\0A\00", align 1
@VMW_FENCE_WAIT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_execbuf_fence_commands(%struct.drm_file* %0, %struct.vmw_private* %1, %struct.vmw_fence_obj** %2, i32* %3) #0 {
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_fence_obj**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.vmw_private* %1, %struct.vmw_private** %6, align 8
  store %struct.vmw_fence_obj** %2, %struct.vmw_fence_obj*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %16 = icmp eq %struct.drm_file* %15, null
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ false, %4 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %22 = call i32 @vmw_fifo_send_fence(%struct.vmw_private* %21, i32* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %35 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %36 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vmw_fence_obj**, %struct.vmw_fence_obj*** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @vmw_user_fence_create(%struct.drm_file* %34, i32 %37, i32 %38, %struct.vmw_fence_obj** %39, i32* %40)
  store i32 %41, i32* %10, align 4
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %44 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.vmw_fence_obj**, %struct.vmw_fence_obj*** %7, align 8
  %48 = call i32 @vmw_fence_create(i32 %45, i32 %46, %struct.vmw_fence_obj** %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ false, %49 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @VMW_FENCE_WAIT_TIMEOUT, align 4
  %65 = call i32 @vmw_fallback_wait(%struct.vmw_private* %62, i32 0, i32 0, i32 %63, i32 0, i32 %64)
  %66 = load %struct.vmw_fence_obj**, %struct.vmw_fence_obj*** %7, align 8
  store %struct.vmw_fence_obj* null, %struct.vmw_fence_obj** %66, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_fifo_send_fence(%struct.vmw_private*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @vmw_user_fence_create(%struct.drm_file*, i32, i32, %struct.vmw_fence_obj**, i32*) #1

declare dso_local i32 @vmw_fence_create(i32, i32, %struct.vmw_fence_obj**) #1

declare dso_local i32 @vmw_fallback_wait(%struct.vmw_private*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
