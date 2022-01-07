; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac = type { i32, i32 }

@RCAR_DMACHCLR = common dso_local global i32 0, align 4
@RCAR_DMAOR = common dso_local global i32 0, align 4
@RCAR_DMAOR_PRI_FIXED = common dso_local global i32 0, align 4
@RCAR_DMAOR_DME = common dso_local global i32 0, align 4
@RCAR_DMAOR_AE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DMAOR initialization failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_dmac*)* @rcar_dmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_init(%struct.rcar_dmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_dmac*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_dmac* %0, %struct.rcar_dmac** %3, align 8
  %5 = load %struct.rcar_dmac*, %struct.rcar_dmac** %3, align 8
  %6 = load i32, i32* @RCAR_DMACHCLR, align 4
  %7 = load %struct.rcar_dmac*, %struct.rcar_dmac** %3, align 8
  %8 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rcar_dmac_write(%struct.rcar_dmac* %5, i32 %6, i32 %9)
  %11 = load %struct.rcar_dmac*, %struct.rcar_dmac** %3, align 8
  %12 = load i32, i32* @RCAR_DMAOR, align 4
  %13 = load i32, i32* @RCAR_DMAOR_PRI_FIXED, align 4
  %14 = load i32, i32* @RCAR_DMAOR_DME, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rcar_dmac_write(%struct.rcar_dmac* %11, i32 %12, i32 %15)
  %17 = load %struct.rcar_dmac*, %struct.rcar_dmac** %3, align 8
  %18 = load i32, i32* @RCAR_DMAOR, align 4
  %19 = call i32 @rcar_dmac_read(%struct.rcar_dmac* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @RCAR_DMAOR_AE, align 4
  %22 = load i32, i32* @RCAR_DMAOR_DME, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @RCAR_DMAOR_DME, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.rcar_dmac*, %struct.rcar_dmac** %3, align 8
  %29 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @rcar_dmac_write(%struct.rcar_dmac*, i32, i32) #1

declare dso_local i32 @rcar_dmac_read(%struct.rcar_dmac*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
