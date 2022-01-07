; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_isr_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_isr_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rcar_dmac = type { i32 }

@RCAR_DMACHCR_DSE = common dso_local global i32 0, align 4
@RCAR_DMACHCR_TE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@RCAR_DMACHCR = common dso_local global i32 0, align 4
@RCAR_DMACHCR_CAE = common dso_local global i32 0, align 4
@RCAR_DMACHCLR = common dso_local global i32 0, align 4
@RCAR_DMACHCR_DE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Channel Address Error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rcar_dmac_isr_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_isr_channel(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcar_dmac_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rcar_dmac*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @RCAR_DMACHCR_DSE, align 4
  %12 = load i32, i32* @RCAR_DMACHCR_TE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.rcar_dmac_chan*
  store %struct.rcar_dmac_chan* %15, %struct.rcar_dmac_chan** %6, align 8
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %18 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %21 = load i32, i32* @RCAR_DMACHCR, align 4
  %22 = call i32 @rcar_dmac_chan_read(%struct.rcar_dmac_chan* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RCAR_DMACHCR_CAE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %29 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call %struct.rcar_dmac* @to_rcar_dmac(%struct.TYPE_4__* %31)
  store %struct.rcar_dmac* %32, %struct.rcar_dmac** %10, align 8
  %33 = load %struct.rcar_dmac*, %struct.rcar_dmac** %10, align 8
  %34 = load i32, i32* @RCAR_DMACHCLR, align 4
  %35 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %36 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = call i32 @rcar_dmac_write(%struct.rcar_dmac* %33, i32 %34, i32 %38)
  %40 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %41 = call i32 @rcar_dmac_chcr_de_barrier(%struct.rcar_dmac_chan* %40)
  store i32 1, i32* %8, align 4
  br label %87

42:                                               ; preds = %2
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @RCAR_DMACHCR_TE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @RCAR_DMACHCR_DE, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %53 = load i32, i32* @RCAR_DMACHCR, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @rcar_dmac_chan_write(%struct.rcar_dmac_chan* %52, i32 %53, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @RCAR_DMACHCR_DE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %65 = call i32 @rcar_dmac_chcr_de_barrier(%struct.rcar_dmac_chan* %64)
  br label %66

66:                                               ; preds = %63, %51
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @RCAR_DMACHCR_DSE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %73 = call i32 @rcar_dmac_isr_desc_stage_end(%struct.rcar_dmac_chan* %72)
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @RCAR_DMACHCR_TE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %83 = call i32 @rcar_dmac_isr_transfer_end(%struct.rcar_dmac_chan* %82)
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %81, %76
  br label %87

87:                                               ; preds = %86, %27
  %88 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %89 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %88, i32 0, i32 2
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %95 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %102 = call i32 @rcar_dmac_chan_reinit(%struct.rcar_dmac_chan* %101)
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %93, %87
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rcar_dmac_chan_read(%struct.rcar_dmac_chan*, i32) #1

declare dso_local %struct.rcar_dmac* @to_rcar_dmac(%struct.TYPE_4__*) #1

declare dso_local i32 @rcar_dmac_write(%struct.rcar_dmac*, i32, i32) #1

declare dso_local i32 @rcar_dmac_chcr_de_barrier(%struct.rcar_dmac_chan*) #1

declare dso_local i32 @rcar_dmac_chan_write(%struct.rcar_dmac_chan*, i32, i32) #1

declare dso_local i32 @rcar_dmac_isr_desc_stage_end(%struct.rcar_dmac_chan*) #1

declare dso_local i32 @rcar_dmac_isr_transfer_end(%struct.rcar_dmac_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rcar_dmac_chan_reinit(%struct.rcar_dmac_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
