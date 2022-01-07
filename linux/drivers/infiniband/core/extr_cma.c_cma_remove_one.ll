; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.cma_device = type { %struct.cma_device*, %struct.cma_device*, i32 }

@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @cma_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_remove_one(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cma_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.cma_device*
  store %struct.cma_device* %7, %struct.cma_device** %5, align 8
  %8 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %9 = icmp ne %struct.cma_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2
  %12 = call i32 @mutex_lock(i32* @lock)
  %13 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %14 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %13, i32 0, i32 2
  %15 = call i32 @list_del(i32* %14)
  %16 = call i32 @mutex_unlock(i32* @lock)
  %17 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %18 = call i32 @cma_process_remove(%struct.cma_device* %17)
  %19 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %20 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %19, i32 0, i32 1
  %21 = load %struct.cma_device*, %struct.cma_device** %20, align 8
  %22 = call i32 @kfree(%struct.cma_device* %21)
  %23 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %24 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %23, i32 0, i32 0
  %25 = load %struct.cma_device*, %struct.cma_device** %24, align 8
  %26 = call i32 @kfree(%struct.cma_device* %25)
  %27 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %28 = call i32 @kfree(%struct.cma_device* %27)
  br label %29

29:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cma_process_remove(%struct.cma_device*) #1

declare dso_local i32 @kfree(%struct.cma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
