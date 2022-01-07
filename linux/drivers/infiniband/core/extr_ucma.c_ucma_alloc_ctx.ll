; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_alloc_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_alloc_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { i32, i32, %struct.ucma_file*, i32, i32, i32, i32 }
%struct.ucma_file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ucma_close_id = common dso_local global i32 0, align 4
@ctx_table = common dso_local global i32 0, align 4
@xa_limit_32b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucma_context* (%struct.ucma_file*)* @ucma_alloc_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucma_context* @ucma_alloc_ctx(%struct.ucma_file* %0) #0 {
  %2 = alloca %struct.ucma_context*, align 8
  %3 = alloca %struct.ucma_file*, align 8
  %4 = alloca %struct.ucma_context*, align 8
  store %struct.ucma_file* %0, %struct.ucma_file** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ucma_context* @kzalloc(i32 32, i32 %5)
  store %struct.ucma_context* %6, %struct.ucma_context** %4, align 8
  %7 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %8 = icmp ne %struct.ucma_context* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ucma_context* null, %struct.ucma_context** %2, align 8
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %12 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %11, i32 0, i32 6
  %13 = load i32, i32* @ucma_close_id, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  %15 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %16 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %15, i32 0, i32 5
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  %18 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %19 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %18, i32 0, i32 4
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %22 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %21, i32 0, i32 3
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.ucma_file*, %struct.ucma_file** %3, align 8
  %25 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %26 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %25, i32 0, i32 2
  store %struct.ucma_file* %24, %struct.ucma_file** %26, align 8
  %27 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %28 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %27, i32 0, i32 1
  %29 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %30 = load i32, i32* @xa_limit_32b, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @xa_alloc(i32* @ctx_table, i32* %28, %struct.ucma_context* %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %10
  br label %42

35:                                               ; preds = %10
  %36 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %37 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %36, i32 0, i32 0
  %38 = load %struct.ucma_file*, %struct.ucma_file** %3, align 8
  %39 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %38, i32 0, i32 0
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  store %struct.ucma_context* %41, %struct.ucma_context** %2, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %44 = call i32 @kfree(%struct.ucma_context* %43)
  store %struct.ucma_context* null, %struct.ucma_context** %2, align 8
  br label %45

45:                                               ; preds = %42, %35, %9
  %46 = load %struct.ucma_context*, %struct.ucma_context** %2, align 8
  ret %struct.ucma_context* %46
}

declare dso_local %struct.ucma_context* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @xa_alloc(i32*, i32*, %struct.ucma_context*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ucma_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
