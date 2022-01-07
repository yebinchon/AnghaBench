; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_hfi1_user_sdma_free_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_hfi1_user_sdma_free_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q*, i32 }
%struct.hfi1_user_sdma_pkt_q = type { i32, i32, %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q*, i32, i32, i32, i64 }
%struct.hfi1_ctxtdata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_user_sdma_free_queues(%struct.hfi1_filedata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca %struct.hfi1_filedata*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca %struct.hfi1_user_sdma_pkt_q*, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %3, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %4, align 8
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %7 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %10 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @trace_hfi1_sdma_user_free_queues(i32 %8, i32 %11, i32 %14)
  %16 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %16, i32 0, i32 1
  %18 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %17, align 8
  store %struct.hfi1_user_sdma_pkt_q* %18, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %19 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %20 = icmp ne %struct.hfi1_user_sdma_pkt_q* %19, null
  br i1 %20, label %21, label %61

21:                                               ; preds = %2
  %22 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %23 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %28 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @hfi1_mmu_rb_unregister(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %33 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %32, i32 0, i32 6
  %34 = call i32 @iowait_sdma_drain(i32* %33)
  %35 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %36 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %39 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %38, i32 0, i32 4
  %40 = call i32 @atomic_read(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @wait_event_interruptible(i32 %37, i32 %43)
  %45 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %46 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %45, i32 0, i32 3
  %47 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %46, align 8
  %48 = call i32 @kfree(%struct.hfi1_user_sdma_pkt_q* %47)
  %49 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %50 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %49, i32 0, i32 2
  %51 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %50, align 8
  %52 = call i32 @kfree(%struct.hfi1_user_sdma_pkt_q* %51)
  %53 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %54 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kmem_cache_destroy(i32 %55)
  %57 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %5, align 8
  %58 = call i32 @kfree(%struct.hfi1_user_sdma_pkt_q* %57)
  %59 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %60 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %59, i32 0, i32 1
  store %struct.hfi1_user_sdma_pkt_q* null, %struct.hfi1_user_sdma_pkt_q** %60, align 8
  br label %61

61:                                               ; preds = %31, %2
  %62 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %63 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %62, i32 0, i32 0
  %64 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %63, align 8
  %65 = icmp ne %struct.hfi1_user_sdma_pkt_q* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %68 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %67, i32 0, i32 0
  %69 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %68, align 8
  %70 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @vfree(i32 %71)
  %73 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %74 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %73, i32 0, i32 0
  %75 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %74, align 8
  %76 = call i32 @kfree(%struct.hfi1_user_sdma_pkt_q* %75)
  %77 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %78 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %77, i32 0, i32 0
  store %struct.hfi1_user_sdma_pkt_q* null, %struct.hfi1_user_sdma_pkt_q** %78, align 8
  br label %79

79:                                               ; preds = %66, %61
  ret i32 0
}

declare dso_local i32 @trace_hfi1_sdma_user_free_queues(i32, i32, i32) #1

declare dso_local i32 @hfi1_mmu_rb_unregister(i64) #1

declare dso_local i32 @iowait_sdma_drain(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kfree(%struct.hfi1_user_sdma_pkt_q*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
