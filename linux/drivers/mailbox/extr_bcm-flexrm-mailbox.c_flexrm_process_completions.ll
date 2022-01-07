; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_process_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_process_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexrm_ring = type { i64, i64, i32, %struct.TYPE_4__*, i32, i32, %struct.brcm_message**, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mbox_chan* }
%struct.mbox_chan = type { i32 }
%struct.brcm_message = type { i32 }

@RING_CMPL_WRITE_PTR = common dso_local global i64 0, align 8
@RING_DESC_SIZE = common dso_local global i64 0, align 8
@RING_CMPL_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"ring%d got completion desc=0x%lx with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ring%d null msg pointer for completion desc=0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexrm_ring*)* @flexrm_process_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_process_completions(%struct.flexrm_ring* %0) #0 {
  %2 = alloca %struct.flexrm_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcm_message*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mbox_chan*, align 8
  store %struct.flexrm_ring* %0, %struct.flexrm_ring** %2, align 8
  store i32 0, i32* %5, align 4
  store %struct.brcm_message* null, %struct.brcm_message** %7, align 8
  %12 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %13 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.mbox_chan*, %struct.mbox_chan** %16, align 8
  %18 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %19 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %17, i64 %20
  store %struct.mbox_chan* %21, %struct.mbox_chan** %11, align 8
  %22 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %23 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %22, i32 0, i32 4
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %27 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RING_CMPL_WRITE_PTR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @readl_relaxed(i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* @RING_DESC_SIZE, align 8
  %33 = load i64, i64* %10, align 8
  %34 = mul i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %36 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %40 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %42 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %41, i32 0, i32 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %103, %92, %1
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %140

49:                                               ; preds = %45
  %50 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %51 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %52, %53
  %55 = inttoptr i64 %54 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* @RING_DESC_SIZE, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @RING_CMPL_SIZE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @flexrm_cmpl_desc_to_error(i64 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %71 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %76 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i8*, i64, i64, ...) @dev_warn(i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %77, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %69, %64
  %82 = load i64, i64* %3, align 8
  %83 = call i64 @flexrm_cmpl_desc_to_reqid(i64 %82)
  store i64 %83, i64* %8, align 8
  %84 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %85 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %84, i32 0, i32 6
  %86 = load %struct.brcm_message**, %struct.brcm_message*** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.brcm_message*, %struct.brcm_message** %86, i64 %87
  %89 = load %struct.brcm_message*, %struct.brcm_message** %88, align 8
  store %struct.brcm_message* %89, %struct.brcm_message** %7, align 8
  %90 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %91 = icmp ne %struct.brcm_message* %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %81
  %93 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %94 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %99 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %3, align 8
  %102 = call i32 (i32, i8*, i64, i64, ...) @dev_warn(i32 %97, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %100, i64 %101)
  br label %45

103:                                              ; preds = %81
  %104 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %105 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %104, i32 0, i32 6
  %106 = load %struct.brcm_message**, %struct.brcm_message*** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.brcm_message*, %struct.brcm_message** %106, i64 %107
  store %struct.brcm_message* null, %struct.brcm_message** %108, align 8
  %109 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %110 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %109, i32 0, i32 4
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @spin_lock_irqsave(i32* %110, i64 %111)
  %113 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %114 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @bitmap_release_region(i32 %115, i64 %116, i32 0)
  %118 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %119 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %118, i32 0, i32 4
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %123 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %128 = call i32 @flexrm_dma_unmap(i32 %126, %struct.brcm_message* %127)
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %131 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.mbox_chan*, %struct.mbox_chan** %11, align 8
  %133 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %134 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %132, %struct.brcm_message* %133)
  %135 = load %struct.flexrm_ring*, %struct.flexrm_ring** %2, align 8
  %136 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %135, i32 0, i32 2
  %137 = call i32 @atomic_inc_return(i32* %136)
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %45

140:                                              ; preds = %45
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flexrm_cmpl_desc_to_error(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64, ...) #1

declare dso_local i64 @flexrm_cmpl_desc_to_reqid(i64) #1

declare dso_local i32 @bitmap_release_region(i32, i64, i32) #1

declare dso_local i32 @flexrm_dma_unmap(i32, %struct.brcm_message*) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, %struct.brcm_message*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
