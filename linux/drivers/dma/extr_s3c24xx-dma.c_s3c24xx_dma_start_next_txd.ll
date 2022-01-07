; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_start_next_txd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_start_next_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_dma_chan = type { %struct.s3c24xx_txd*, i32, %struct.s3c24xx_dma_phy* }
%struct.s3c24xx_txd = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.s3c24xx_dma_phy = type { i32 }
%struct.virt_dma_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_dma_chan*)* @s3c24xx_dma_start_next_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_dma_start_next_txd(%struct.s3c24xx_dma_chan* %0) #0 {
  %2 = alloca %struct.s3c24xx_dma_chan*, align 8
  %3 = alloca %struct.s3c24xx_dma_phy*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca %struct.s3c24xx_txd*, align 8
  store %struct.s3c24xx_dma_chan* %0, %struct.s3c24xx_dma_chan** %2, align 8
  %6 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %6, i32 0, i32 2
  %8 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %7, align 8
  store %struct.s3c24xx_dma_phy* %8, %struct.s3c24xx_dma_phy** %3, align 8
  %9 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %9, i32 0, i32 1
  %11 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %10)
  store %struct.virt_dma_desc* %11, %struct.virt_dma_desc** %4, align 8
  %12 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %13 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %12, i32 0, i32 0
  %14 = call %struct.s3c24xx_txd* @to_s3c24xx_txd(i32* %13)
  store %struct.s3c24xx_txd* %14, %struct.s3c24xx_txd** %5, align 8
  %15 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %5, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %5, align 8
  %20 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %20, i32 0, i32 0
  store %struct.s3c24xx_txd* %19, %struct.s3c24xx_txd** %21, align 8
  br label %22

22:                                               ; preds = %26, %1
  %23 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %3, align 8
  %24 = call i64 @s3c24xx_dma_phy_busy(%struct.s3c24xx_dma_phy* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @cpu_relax()
  br label %22

28:                                               ; preds = %22
  %29 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %5, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %5, align 8
  %34 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %36 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %5, align 8
  %37 = call i32 @s3c24xx_dma_start_next_sg(%struct.s3c24xx_dma_chan* %35, %struct.s3c24xx_txd* %36)
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local %struct.s3c24xx_txd* @to_s3c24xx_txd(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @s3c24xx_dma_phy_busy(%struct.s3c24xx_dma_phy*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @s3c24xx_dma_start_next_sg(%struct.s3c24xx_dma_chan*, %struct.s3c24xx_txd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
