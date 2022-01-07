; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__dregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__dregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { i32 }
%struct._xfer_spec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SINGLE = common dso_local global i32 0, align 4
@CC_SRCBRSTLEN_SHFT = common dso_local global i32 0, align 4
@CC_DSTBRSTLEN_SHFT = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*, i32)* @_dregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dregs(%struct.pl330_dmac* %0, i32 %1, i32* %2, %struct._xfer_spec* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pl330_dmac*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct._xfer_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct._xfer_spec* %3, %struct._xfer_spec** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* %12, align 4
  store i32 %17, i32* %6, align 4
  br label %86

18:                                               ; preds = %5
  %19 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %20 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %82 [
    i32 129, label %24
    i32 130, label %24
    i32 128, label %37
  ]

24:                                               ; preds = %18, %18
  %25 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @SINGLE, align 4
  %34 = call i32 @_ldst_peripheral(%struct.pl330_dmac* %25, i32 %26, i32* %30, %struct._xfer_spec* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %12, align 4
  br label %84

37:                                               ; preds = %18
  %38 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %39 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @CC_SRCBRSTLEN_SHFT, align 4
  %42 = shl i32 15, %41
  %43 = load i32, i32* @CC_DSTBRSTLEN_SHFT, align 4
  %44 = shl i32 15, %43
  %45 = or i32 %42, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %50, 15
  %52 = load i32, i32* @CC_SRCBRSTLEN_SHFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %57, 15
  %59 = load i32, i32* @CC_DSTBRSTLEN_SHFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* @CCR, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @_emit_MOV(i32 %63, i32* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %79 = call i32 @_ldst_memtomem(i32 %73, i32* %77, %struct._xfer_spec* %78, i32 1)
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %84

82:                                               ; preds = %18
  %83 = call i32 @WARN_ON(i32 1)
  br label %84

84:                                               ; preds = %82, %37, %24
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %16
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @_ldst_peripheral(%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*, i32, i32) #1

declare dso_local i32 @_emit_MOV(i32, i32*, i32, i32) #1

declare dso_local i32 @_ldst_memtomem(i32, i32*, %struct._xfer_spec*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
