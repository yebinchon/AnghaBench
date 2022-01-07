; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_des_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_des_dev*)* @omap_des_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_des_dma_stop(%struct.omap_des_dev* %0) #0 {
  %2 = alloca %struct.omap_des_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_des_dev* %0, %struct.omap_des_dev** %2, align 8
  %4 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %5 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %10 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %8, %13
  %15 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %16 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %14, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %22 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %23 = call i32 @DES_REG_MASK(%struct.omap_des_dev* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @omap_des_write_mask(%struct.omap_des_dev* %21, i32 %23, i32 0, i32 %24)
  ret void
}

declare dso_local i32 @omap_des_write_mask(%struct.omap_des_dev*, i32, i32, i32) #1

declare dso_local i32 @DES_REG_MASK(%struct.omap_des_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
