; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c__ucma_find_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c__ucma_find_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { i32, %struct.ucma_file* }
%struct.ucma_file = type { i32 }

@ctx_table = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucma_context* (i32, %struct.ucma_file*)* @_ucma_find_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucma_context* @_ucma_find_context(i32 %0, %struct.ucma_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucma_file*, align 8
  %5 = alloca %struct.ucma_context*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ucma_file* %1, %struct.ucma_file** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ucma_context* @xa_load(i32* @ctx_table, i32 %6)
  store %struct.ucma_context* %7, %struct.ucma_context** %5, align 8
  %8 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %9 = icmp ne %struct.ucma_context* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.ucma_context* @ERR_PTR(i32 %12)
  store %struct.ucma_context* %13, %struct.ucma_context** %5, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %16 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %15, i32 0, i32 1
  %17 = load %struct.ucma_file*, %struct.ucma_file** %16, align 8
  %18 = load %struct.ucma_file*, %struct.ucma_file** %4, align 8
  %19 = icmp ne %struct.ucma_file* %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %22 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.ucma_context* @ERR_PTR(i32 %27)
  store %struct.ucma_context* %28, %struct.ucma_context** %5, align 8
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %10
  %31 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  ret %struct.ucma_context* %31
}

declare dso_local %struct.ucma_context* @xa_load(i32*, i32) #1

declare dso_local %struct.ucma_context* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
