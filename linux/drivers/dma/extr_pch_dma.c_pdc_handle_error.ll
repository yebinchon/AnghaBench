; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_dma_chan = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pch_dma_desc = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Bad descriptor submitted\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"descriptor cookie: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_dma_chan*)* @pdc_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_handle_error(%struct.pch_dma_chan* %0) #0 {
  %2 = alloca %struct.pch_dma_chan*, align 8
  %3 = alloca %struct.pch_dma_desc*, align 8
  store %struct.pch_dma_chan* %0, %struct.pch_dma_chan** %2, align 8
  %4 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %5 = call %struct.pch_dma_desc* @pdc_first_active(%struct.pch_dma_chan* %4)
  store %struct.pch_dma_desc* %5, %struct.pch_dma_desc** %3, align 8
  %6 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %3, align 8
  %7 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %9, i32 0, i32 2
  %11 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @list_splice_init(i32* %10, i32 %14)
  %16 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %16, i32 0, i32 1
  %18 = call i32 @list_empty(%struct.TYPE_4__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %22 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %23 = call %struct.pch_dma_desc* @pdc_first_active(%struct.pch_dma_chan* %22)
  %24 = call i32 @pdc_dostart(%struct.pch_dma_chan* %21, %struct.pch_dma_desc* %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %26, i32 0, i32 0
  %28 = call i32 @chan2dev(i32* %27)
  %29 = call i32 (i32, i8*, ...) @dev_crit(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %30, i32 0, i32 0
  %32 = call i32 @chan2dev(i32* %31)
  %33 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %3, align 8
  %34 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_crit(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %2, align 8
  %39 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %3, align 8
  %40 = call i32 @pdc_chain_complete(%struct.pch_dma_chan* %38, %struct.pch_dma_desc* %39)
  ret void
}

declare dso_local %struct.pch_dma_desc* @pdc_first_active(%struct.pch_dma_chan*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @pdc_dostart(%struct.pch_dma_chan*, %struct.pch_dma_desc*) #1

declare dso_local i32 @dev_crit(i32, i8*, ...) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @pdc_chain_complete(%struct.pch_dma_chan*, %struct.pch_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
