; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_pin_sdma_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_pin_sdma_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_sdma_request = type { %struct.hfi1_user_sdma_pkt_q* }
%struct.hfi1_user_sdma_pkt_q = type { i32, i32, i32 }
%struct.user_sdma_iovec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sdma_mmu_node = type { i32, %struct.page**, %struct.TYPE_3__ }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_sdma_request*, %struct.user_sdma_iovec*, %struct.sdma_mmu_node*, i32)* @pin_sdma_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_sdma_pages(%struct.user_sdma_request* %0, %struct.user_sdma_iovec* %1, %struct.sdma_mmu_node* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_sdma_request*, align 8
  %7 = alloca %struct.user_sdma_iovec*, align 8
  %8 = alloca %struct.sdma_mmu_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page**, align 8
  %13 = alloca %struct.hfi1_user_sdma_pkt_q*, align 8
  store %struct.user_sdma_request* %0, %struct.user_sdma_request** %6, align 8
  store %struct.user_sdma_iovec* %1, %struct.user_sdma_iovec** %7, align 8
  store %struct.sdma_mmu_node* %2, %struct.sdma_mmu_node** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.user_sdma_request*, %struct.user_sdma_request** %6, align 8
  %15 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %14, i32 0, i32 0
  %16 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %15, align 8
  store %struct.hfi1_user_sdma_pkt_q* %16, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.page** @kcalloc(i32 %17, i32 8, i32 %18)
  store %struct.page** %19, %struct.page*** %12, align 8
  %20 = load %struct.page**, %struct.page*** %12, align 8
  %21 = icmp ne %struct.page** %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %129

25:                                               ; preds = %4
  %26 = load %struct.page**, %struct.page*** %12, align 8
  %27 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %28 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %27, i32 0, i32 1
  %29 = load %struct.page**, %struct.page*** %28, align 8
  %30 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %31 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(%struct.page** %26, %struct.page** %29, i32 %35)
  %37 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %38 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %62, %25
  %43 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %44 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %47 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %50 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %49, i32 0, i32 0
  %51 = call i32 @atomic_read(i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @hfi1_can_pin_pages(i32 %45, i32 %48, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %42
  %56 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @sdma_cache_evict(%struct.hfi1_user_sdma_pkt_q* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %42

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %66 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %7, align 8
  %69 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %73 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = mul i64 %75, %76
  %78 = add i64 %71, %77
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.page**, %struct.page*** %12, align 8
  %81 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %82 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %84
  %86 = call i32 @hfi1_acquire_user_pages(i32 %67, i64 %78, i32 %79, i32 0, %struct.page** %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %64
  %90 = load %struct.page**, %struct.page*** %12, align 8
  %91 = call i32 @kfree(%struct.page** %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %129

93:                                               ; preds = %64
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %99 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.page**, %struct.page*** %12, align 8
  %102 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %103 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @unpin_vector_pages(i32 %100, %struct.page** %101, i32 %104, i32 %105)
  %107 = load i32, i32* @EFAULT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %129

109:                                              ; preds = %93
  %110 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %111 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %110, i32 0, i32 1
  %112 = load %struct.page**, %struct.page*** %111, align 8
  %113 = call i32 @kfree(%struct.page** %112)
  %114 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %7, align 8
  %115 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %119 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.page**, %struct.page*** %12, align 8
  %122 = load %struct.sdma_mmu_node*, %struct.sdma_mmu_node** %8, align 8
  %123 = getelementptr inbounds %struct.sdma_mmu_node, %struct.sdma_mmu_node* %122, i32 0, i32 1
  store %struct.page** %121, %struct.page*** %123, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %126 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %125, i32 0, i32 0
  %127 = call i32 @atomic_add(i32 %124, i32* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %109, %97, %89, %22
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.page** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.page**, %struct.page**, i32) #1

declare dso_local i32 @hfi1_can_pin_pages(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @sdma_cache_evict(%struct.hfi1_user_sdma_pkt_q*, i32) #1

declare dso_local i32 @hfi1_acquire_user_pages(i32, i64, i32, i32, %struct.page**) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @unpin_vector_pages(i32, %struct.page**, i32, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
