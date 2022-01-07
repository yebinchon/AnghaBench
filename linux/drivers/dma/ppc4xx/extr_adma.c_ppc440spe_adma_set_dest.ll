; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_set_dest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_set_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i32, %struct.ppc440spe_adma_desc_slot*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ppc440spe_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, i32, i32)* @ppc440spe_adma_set_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_set_dest(%struct.ppc440spe_adma_desc_slot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppc440spe_adma_chan*, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %10 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %16 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ppc440spe_adma_chan* @to_ppc440spe_adma_chan(i32 %18)
  store %struct.ppc440spe_adma_chan* %19, %struct.ppc440spe_adma_chan** %7, align 8
  %20 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %7, align 8
  %21 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %42 [
    i32 130, label %25
    i32 129, label %25
    i32 128, label %33
  ]

25:                                               ; preds = %3, %3
  %26 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %27 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %26, i32 0, i32 1
  %28 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %27, align 8
  %29 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ppc440spe_desc_set_dest_addr(%struct.ppc440spe_adma_desc_slot* %28, %struct.ppc440spe_adma_chan* %29, i32 0, i32 %30, i32 %31)
  br label %42

33:                                               ; preds = %3
  %34 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %34, i32 %35)
  store %struct.ppc440spe_adma_desc_slot* %36, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %37 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %38 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ppc440spe_desc_set_dest_addr(%struct.ppc440spe_adma_desc_slot* %37, %struct.ppc440spe_adma_chan* %38, i32 0, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %3, %33, %25
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ppc440spe_adma_chan* @to_ppc440spe_adma_chan(i32) #1

declare dso_local i32 @ppc440spe_desc_set_dest_addr(%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*, i32, i32, i32) #1

declare dso_local %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
