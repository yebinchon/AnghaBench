; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rcar_dmac_desc_page = type { i32, %struct.rcar_dmac_desc* }
%struct.rcar_dmac_desc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@list = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RCAR_DMAC_DESCS_PER_PAGE = common dso_local global i32 0, align 4
@rcar_dmac_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_dmac_chan*, i32)* @rcar_dmac_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_desc_alloc(%struct.rcar_dmac_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_dmac_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcar_dmac_desc_page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rcar_dmac_desc*, align 8
  store %struct.rcar_dmac_chan* %0, %struct.rcar_dmac_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @list, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @get_zeroed_page(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.rcar_dmac_desc_page*
  store %struct.rcar_dmac_desc_page* %15, %struct.rcar_dmac_desc_page** %6, align 8
  %16 = load %struct.rcar_dmac_desc_page*, %struct.rcar_dmac_desc_page** %6, align 8
  %17 = icmp ne %struct.rcar_dmac_desc_page* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @RCAR_DMAC_DESCS_PER_PAGE, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load %struct.rcar_dmac_desc_page*, %struct.rcar_dmac_desc_page** %6, align 8
  %28 = getelementptr inbounds %struct.rcar_dmac_desc_page, %struct.rcar_dmac_desc_page* %27, i32 0, i32 1
  %29 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %29, i64 %31
  store %struct.rcar_dmac_desc* %32, %struct.rcar_dmac_desc** %9, align 8
  %33 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %9, align 8
  %34 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %33, i32 0, i32 2
  %35 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %36 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %35, i32 0, i32 2
  %37 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__* %34, i32* %36)
  %38 = load i32, i32* @rcar_dmac_tx_submit, align 4
  %39 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %9, align 8
  %40 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %9, align 8
  %43 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %42, i32 0, i32 1
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %9, align 8
  %46 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %46, i32* @list)
  br label %48

48:                                               ; preds = %26
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %53 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %52, i32 0, i32 0
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %57 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = call i32 @list_splice_tail(i32* @list, i32* %58)
  %60 = load %struct.rcar_dmac_desc_page*, %struct.rcar_dmac_desc_page** %6, align 8
  %61 = getelementptr inbounds %struct.rcar_dmac_desc_page, %struct.rcar_dmac_desc_page* %60, i32 0, i32 0
  %62 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %63 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %61, i32* %64)
  %66 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %67 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %66, i32 0, i32 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %51, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
