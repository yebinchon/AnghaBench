; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_dm_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_dm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_dm_workarea = type { i64, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@CCP_DMAPOOL_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_dm_workarea*)* @ccp_dm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_dm_free(%struct.ccp_dm_workarea* %0) #0 {
  %2 = alloca %struct.ccp_dm_workarea*, align 8
  store %struct.ccp_dm_workarea* %0, %struct.ccp_dm_workarea** %2, align 8
  %3 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %4 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CCP_DMAPOOL_MAX_SIZE, align 8
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %10 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %15 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %18 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %21 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_pool_free(i32 %16, i32* %19, i64 %23)
  br label %25

25:                                               ; preds = %13, %8
  br label %53

26:                                               ; preds = %1
  %27 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %28 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %34 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %37 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %41 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %44 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dma_unmap_single(i32 %35, i64 %39, i64 %42, i32 %46)
  br label %48

48:                                               ; preds = %32, %26
  %49 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %50 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  br label %53

53:                                               ; preds = %48, %25
  %54 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %55 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %2, align 8
  %57 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i32*, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
