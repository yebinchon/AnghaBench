; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_ctx.c_lima_ctx_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_ctx.c_lima_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { i64 }
%struct.lima_ctx_mgr = type { i32 }
%struct.lima_ctx = type { i64, i32, i32, %struct.lima_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lima_pipe_num = common dso_local global i32 0, align 4
@xa_limit_32b = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_ctx_create(%struct.lima_device* %0, %struct.lima_ctx_mgr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_device*, align 8
  %6 = alloca %struct.lima_ctx_mgr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.lima_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lima_device* %0, %struct.lima_device** %5, align 8
  store %struct.lima_ctx_mgr* %1, %struct.lima_ctx_mgr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lima_ctx* @kzalloc(i32 24, i32 %11)
  store %struct.lima_ctx* %12, %struct.lima_ctx** %8, align 8
  %13 = load %struct.lima_ctx*, %struct.lima_ctx** %8, align 8
  %14 = icmp ne %struct.lima_ctx* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %91

18:                                               ; preds = %3
  %19 = load %struct.lima_device*, %struct.lima_device** %5, align 8
  %20 = load %struct.lima_ctx*, %struct.lima_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.lima_ctx, %struct.lima_ctx* %20, i32 0, i32 3
  store %struct.lima_device* %19, %struct.lima_device** %21, align 8
  %22 = load %struct.lima_ctx*, %struct.lima_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.lima_ctx, %struct.lima_ctx* %22, i32 0, i32 2
  %24 = call i32 @kref_init(i32* %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %49, %18
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @lima_pipe_num, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.lima_device*, %struct.lima_device** %5, align 8
  %31 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.lima_ctx*, %struct.lima_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.lima_ctx, %struct.lima_ctx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.lima_ctx*, %struct.lima_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.lima_ctx, %struct.lima_ctx* %42, i32 0, i32 1
  %44 = call i32 @lima_sched_context_init(i64 %35, i64 %41, i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %64

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.lima_ctx_mgr*, %struct.lima_ctx_mgr** %6, align 8
  %54 = getelementptr inbounds %struct.lima_ctx_mgr, %struct.lima_ctx_mgr* %53, i32 0, i32 0
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.lima_ctx*, %struct.lima_ctx** %8, align 8
  %57 = load i32, i32* @xa_limit_32b, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @xa_alloc(i32* %54, i32* %55, %struct.lima_ctx* %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %64

63:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %91

64:                                               ; preds = %62, %47
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %84, %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.lima_device*, %struct.lima_device** %5, align 8
  %72 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load %struct.lima_ctx*, %struct.lima_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.lima_ctx, %struct.lima_ctx* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = call i32 @lima_sched_context_fini(i64 %76, i64 %82)
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  br label %67

87:                                               ; preds = %67
  %88 = load %struct.lima_ctx*, %struct.lima_ctx** %8, align 8
  %89 = call i32 @kfree(%struct.lima_ctx* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %63, %15
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.lima_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @lima_sched_context_init(i64, i64, i32*) #1

declare dso_local i32 @xa_alloc(i32*, i32*, %struct.lima_ctx*, i32, i32) #1

declare dso_local i32 @lima_sched_context_fini(i64, i64) #1

declare dso_local i32 @kfree(%struct.lima_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
