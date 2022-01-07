; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_dsgl_walk_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_dsgl_walk_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsgl_walk = type { i32, %struct.cpl_rx_phys_dsgl* }
%struct.cpl_rx_phys_dsgl = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@CPL_RX_PHYS_DSGL = common dso_local global i32 0, align 4
@CPL_RX_PHYS_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsgl_walk*, i16, i32)* @dsgl_walk_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsgl_walk_end(%struct.dsgl_walk* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.dsgl_walk*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpl_rx_phys_dsgl*, align 8
  store %struct.dsgl_walk* %0, %struct.dsgl_walk** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dsgl_walk*, %struct.dsgl_walk** %4, align 8
  %9 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %8, i32 0, i32 1
  %10 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %9, align 8
  store %struct.cpl_rx_phys_dsgl* %10, %struct.cpl_rx_phys_dsgl** %7, align 8
  %11 = load i32, i32* @CPL_RX_PHYS_DSGL, align 4
  %12 = call i32 @CPL_RX_PHYS_DSGL_OPCODE_V(i32 %11)
  %13 = call i32 @CPL_RX_PHYS_DSGL_ISRDMA_V(i32 0)
  %14 = or i32 %12, %13
  %15 = call i8* @htonl(i32 %14)
  %16 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %7, align 8
  %17 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = call i32 @CPL_RX_PHYS_DSGL_PCIRLXORDER_V(i32 0)
  %19 = call i32 @CPL_RX_PHYS_DSGL_PCINOSNOOP_V(i32 0)
  %20 = or i32 %18, %19
  %21 = call i32 @CPL_RX_PHYS_DSGL_PCITPHNTENB_V(i32 0)
  %22 = or i32 %20, %21
  %23 = call i32 @CPL_RX_PHYS_DSGL_PCITPHNT_V(i32 0)
  %24 = or i32 %22, %23
  %25 = call i32 @CPL_RX_PHYS_DSGL_DCAID_V(i32 0)
  %26 = or i32 %24, %25
  %27 = load %struct.dsgl_walk*, %struct.dsgl_walk** %4, align 8
  %28 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CPL_RX_PHYS_DSGL_NOOFSGENTR_V(i32 %29)
  %31 = or i32 %26, %30
  %32 = call i8* @htonl(i32 %31)
  %33 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %7, align 8
  %34 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @CPL_RX_PHYS_ADDR, align 4
  %36 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %7, align 8
  %37 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load i16, i16* %5, align 2
  %40 = call i32 @htons(i16 zeroext %39)
  %41 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %7, align 8
  %42 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %7, align 8
  %45 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %7, align 8
  %49 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @CPL_RX_PHYS_DSGL_OPCODE_V(i32) #1

declare dso_local i32 @CPL_RX_PHYS_DSGL_ISRDMA_V(i32) #1

declare dso_local i32 @CPL_RX_PHYS_DSGL_PCIRLXORDER_V(i32) #1

declare dso_local i32 @CPL_RX_PHYS_DSGL_PCINOSNOOP_V(i32) #1

declare dso_local i32 @CPL_RX_PHYS_DSGL_PCITPHNTENB_V(i32) #1

declare dso_local i32 @CPL_RX_PHYS_DSGL_PCITPHNT_V(i32) #1

declare dso_local i32 @CPL_RX_PHYS_DSGL_DCAID_V(i32) #1

declare dso_local i32 @CPL_RX_PHYS_DSGL_NOOFSGENTR_V(i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
