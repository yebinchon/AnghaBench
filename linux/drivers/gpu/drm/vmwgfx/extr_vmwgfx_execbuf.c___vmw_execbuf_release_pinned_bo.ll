; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c___vmw_execbuf_release_pinned_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c___vmw_execbuf_release_pinned_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32*, i32*, i32 }
%struct.vmw_fence_obj = type { i32 }

@val_ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__vmw_execbuf_release_pinned_bo(%struct.vmw_private* %0, %struct.vmw_fence_obj* %1) #0 {
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_fence_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_fence_obj*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  store %struct.vmw_fence_obj* %1, %struct.vmw_fence_obj** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.vmw_fence_obj* null, %struct.vmw_fence_obj** %6, align 8
  %7 = load i32, i32* @val_ctx, align 4
  %8 = call i32 @DECLARE_VAL_CONTEXT(i32 %7, i32* null, i32 0)
  %9 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %10 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %91

14:                                               ; preds = %2
  %15 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %16 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @vmw_validation_add_bo(i32* @val_ctx, i32* %17, i32 0, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %94

22:                                               ; preds = %14
  %23 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @vmw_validation_add_bo(i32* @val_ctx, i32* %25, i32 0, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %94

30:                                               ; preds = %22
  %31 = call i32 @vmw_validation_bo_reserve(i32* @val_ctx, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %94

35:                                               ; preds = %30
  %36 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %37 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %4, align 8
  %42 = icmp ne %struct.vmw_fence_obj* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %46 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %47 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @vmw_fifo_emit_dummy_query(%struct.vmw_private* %45, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %92

53:                                               ; preds = %40
  %54 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %55 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %35
  %57 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %58 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @vmw_bo_pin_reserved(i32* %59, i32 0)
  %61 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %62 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %67 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @vmw_bo_pin_reserved(i32* %68, i32 0)
  %70 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %71 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %56
  %73 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %4, align 8
  %74 = icmp eq %struct.vmw_fence_obj* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %77 = call i32 @vmw_execbuf_fence_commands(i32* null, %struct.vmw_private* %76, %struct.vmw_fence_obj** %6, i32* null)
  %78 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %6, align 8
  store %struct.vmw_fence_obj* %78, %struct.vmw_fence_obj** %4, align 8
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %4, align 8
  %81 = call i32 @vmw_validation_bo_fence(i32* @val_ctx, %struct.vmw_fence_obj* %80)
  %82 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %6, align 8
  %83 = icmp ne %struct.vmw_fence_obj* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %6)
  br label %86

86:                                               ; preds = %84, %79
  %87 = call i32 @vmw_validation_unref_lists(i32* @val_ctx)
  %88 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %89 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %88, i32 0, i32 2
  %90 = call i32 @vmw_bo_unreference(i32** %89)
  br label %91

91:                                               ; preds = %86, %13
  br label %101

92:                                               ; preds = %52
  %93 = call i32 @vmw_validation_bo_backoff(i32* @val_ctx)
  br label %94

94:                                               ; preds = %92, %34, %29, %21
  %95 = call i32 @vmw_validation_unref_lists(i32* @val_ctx)
  %96 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %97 = call i32 @vmw_execbuf_unpin_panic(%struct.vmw_private* %96)
  %98 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %99 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %98, i32 0, i32 2
  %100 = call i32 @vmw_bo_unreference(i32** %99)
  br label %101

101:                                              ; preds = %94, %91
  ret void
}

declare dso_local i32 @DECLARE_VAL_CONTEXT(i32, i32*, i32) #1

declare dso_local i32 @vmw_validation_add_bo(i32*, i32*, i32, i32) #1

declare dso_local i32 @vmw_validation_bo_reserve(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_fifo_emit_dummy_query(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_bo_pin_reserved(i32*, i32) #1

declare dso_local i32 @vmw_execbuf_fence_commands(i32*, %struct.vmw_private*, %struct.vmw_fence_obj**, i32*) #1

declare dso_local i32 @vmw_validation_bo_fence(i32*, %struct.vmw_fence_obj*) #1

declare dso_local i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj**) #1

declare dso_local i32 @vmw_validation_unref_lists(i32*) #1

declare dso_local i32 @vmw_bo_unreference(i32**) #1

declare dso_local i32 @vmw_validation_bo_backoff(i32*) #1

declare dso_local i32 @vmw_execbuf_unpin_panic(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
