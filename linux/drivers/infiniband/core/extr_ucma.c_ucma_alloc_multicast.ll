; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_alloc_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_alloc_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_multicast = type { i32, i32, %struct.ucma_context* }
%struct.ucma_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@multicast_table = common dso_local global i32 0, align 4
@xa_limit_32b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucma_multicast* (%struct.ucma_context*)* @ucma_alloc_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucma_multicast* @ucma_alloc_multicast(%struct.ucma_context* %0) #0 {
  %2 = alloca %struct.ucma_multicast*, align 8
  %3 = alloca %struct.ucma_context*, align 8
  %4 = alloca %struct.ucma_multicast*, align 8
  store %struct.ucma_context* %0, %struct.ucma_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ucma_multicast* @kzalloc(i32 16, i32 %5)
  store %struct.ucma_multicast* %6, %struct.ucma_multicast** %4, align 8
  %7 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %8 = icmp ne %struct.ucma_multicast* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ucma_multicast* null, %struct.ucma_multicast** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.ucma_context*, %struct.ucma_context** %3, align 8
  %12 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %13 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %12, i32 0, i32 2
  store %struct.ucma_context* %11, %struct.ucma_context** %13, align 8
  %14 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %15 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %14, i32 0, i32 1
  %16 = load i32, i32* @xa_limit_32b, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @xa_alloc(i32* @multicast_table, i32* %15, i32* null, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %28

21:                                               ; preds = %10
  %22 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %23 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %22, i32 0, i32 0
  %24 = load %struct.ucma_context*, %struct.ucma_context** %3, align 8
  %25 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  store %struct.ucma_multicast* %27, %struct.ucma_multicast** %2, align 8
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %30 = call i32 @kfree(%struct.ucma_multicast* %29)
  store %struct.ucma_multicast* null, %struct.ucma_multicast** %2, align 8
  br label %31

31:                                               ; preds = %28, %21, %9
  %32 = load %struct.ucma_multicast*, %struct.ucma_multicast** %2, align 8
  ret %struct.ucma_multicast* %32
}

declare dso_local %struct.ucma_multicast* @kzalloc(i32, i32) #1

declare dso_local i64 @xa_alloc(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ucma_multicast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
