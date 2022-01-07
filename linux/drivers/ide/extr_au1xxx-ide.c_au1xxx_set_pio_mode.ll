; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_au1xxx_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_au1xxx_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MEM_STCFG2 = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@PIO0 = common dso_local global i32 0, align 4
@TS_MASK = common dso_local global i32 0, align 4
@TCSOE_MASK = common dso_local global i32 0, align 4
@TOECS_MASK = common dso_local global i32 0, align 4
@SBC_IDE_PIO0_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO0_TOECS = common dso_local global i32 0, align 4
@PIO1 = common dso_local global i32 0, align 4
@SBC_IDE_PIO1_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO1_TOECS = common dso_local global i32 0, align 4
@PIO2 = common dso_local global i32 0, align 4
@SBC_IDE_PIO2_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO2_TOECS = common dso_local global i32 0, align 4
@PIO3 = common dso_local global i32 0, align 4
@SBC_IDE_PIO3_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO3_TOECS = common dso_local global i32 0, align 4
@PIO4 = common dso_local global i32 0, align 4
@SBC_IDE_PIO4_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO4_TOECS = common dso_local global i32 0, align 4
@MEM_STTIME2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @au1xxx_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xxx_set_pio_mode(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @MEM_STCFG2, align 4
  %8 = call i32 @au_readl(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @XFER_PIO_0, align 4
  %13 = sub nsw i32 %11, %12
  switch i32 %13, label %112 [
    i32 0, label %14
    i32 1, label %33
    i32 2, label %52
    i32 3, label %72
    i32 4, label %92
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @PIO0, align 4
  %16 = call i32 @SBC_IDE_TIMING(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @TS_MASK, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @TCSOE_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @TOECS_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @SBC_IDE_PIO0_TCSOE, align 4
  %29 = load i32, i32* @SBC_IDE_PIO0_TOECS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %112

33:                                               ; preds = %2
  %34 = load i32, i32* @PIO1, align 4
  %35 = call i32 @SBC_IDE_TIMING(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @TS_MASK, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @TCSOE_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @TOECS_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @SBC_IDE_PIO1_TCSOE, align 4
  %48 = load i32, i32* @SBC_IDE_PIO1_TOECS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %112

52:                                               ; preds = %2
  %53 = load i32, i32* @PIO2, align 4
  %54 = call i32 @SBC_IDE_TIMING(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @TS_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @TCSOE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @TOECS_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @SBC_IDE_PIO2_TCSOE, align 4
  %68 = load i32, i32* @SBC_IDE_PIO2_TOECS, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %112

72:                                               ; preds = %2
  %73 = load i32, i32* @PIO3, align 4
  %74 = call i32 @SBC_IDE_TIMING(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @TS_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @TCSOE_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @TOECS_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @SBC_IDE_PIO3_TCSOE, align 4
  %88 = load i32, i32* @SBC_IDE_PIO3_TOECS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %112

92:                                               ; preds = %2
  %93 = load i32, i32* @PIO4, align 4
  %94 = call i32 @SBC_IDE_TIMING(i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @TS_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @TCSOE_MASK, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @TOECS_MASK, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @SBC_IDE_PIO4_TCSOE, align 4
  %108 = load i32, i32* @SBC_IDE_PIO4_TOECS, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %2, %92, %72, %52, %33, %14
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @MEM_STTIME2, align 4
  %115 = call i32 @au_writel(i32 %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @MEM_STCFG2, align 4
  %118 = call i32 @au_writel(i32 %116, i32 %117)
  ret void
}

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @SBC_IDE_TIMING(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
