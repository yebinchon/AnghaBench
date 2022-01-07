; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_ctx.c_lima_ctx_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_ctx.c_lima_ctx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ctx = type { i32 }
%struct.lima_ctx_mgr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lima_ctx* @lima_ctx_get(%struct.lima_ctx_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.lima_ctx_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_ctx*, align 8
  store %struct.lima_ctx_mgr* %0, %struct.lima_ctx_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lima_ctx_mgr*, %struct.lima_ctx_mgr** %3, align 8
  %7 = getelementptr inbounds %struct.lima_ctx_mgr, %struct.lima_ctx_mgr* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.lima_ctx_mgr*, %struct.lima_ctx_mgr** %3, align 8
  %10 = getelementptr inbounds %struct.lima_ctx_mgr, %struct.lima_ctx_mgr* %9, i32 0, i32 1
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.lima_ctx* @xa_load(i32* %10, i32 %11)
  store %struct.lima_ctx* %12, %struct.lima_ctx** %5, align 8
  %13 = load %struct.lima_ctx*, %struct.lima_ctx** %5, align 8
  %14 = icmp ne %struct.lima_ctx* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.lima_ctx*, %struct.lima_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.lima_ctx, %struct.lima_ctx* %16, i32 0, i32 0
  %18 = call i32 @kref_get(i32* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.lima_ctx_mgr*, %struct.lima_ctx_mgr** %3, align 8
  %21 = getelementptr inbounds %struct.lima_ctx_mgr, %struct.lima_ctx_mgr* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.lima_ctx*, %struct.lima_ctx** %5, align 8
  ret %struct.lima_ctx* %23
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.lima_ctx* @xa_load(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
