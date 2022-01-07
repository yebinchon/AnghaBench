; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_print_cb_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_print_cb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_chan = type { i32 }
%struct.ppc440spe_adma_desc_slot = type { i32, %struct.ppc440spe_adma_desc_slot* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_desc_slot*)* @print_cb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cb_list(%struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_desc_slot* %1) #0 {
  %3 = alloca %struct.ppc440spe_adma_chan*, align 8
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  store %struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_chan** %3, align 8
  store %struct.ppc440spe_adma_desc_slot* %1, %struct.ppc440spe_adma_desc_slot** %4, align 8
  br label %5

5:                                                ; preds = %14, %2
  %6 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %7 = icmp ne %struct.ppc440spe_adma_desc_slot* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %10 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %11 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @print_cb(%struct.ppc440spe_adma_chan* %9, i32 %12)
  br label %14

14:                                               ; preds = %8
  %15 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %16 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %15, i32 0, i32 1
  %17 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %16, align 8
  store %struct.ppc440spe_adma_desc_slot* %17, %struct.ppc440spe_adma_desc_slot** %4, align 8
  br label %5

18:                                               ; preds = %5
  ret void
}

declare dso_local i32 @print_cb(%struct.ppc440spe_adma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
