; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__ldst_peripheral.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__ldst_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { i32 }
%struct._xfer_spec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PL330_QUIRK_BROKEN_NO_FLUSHP = common dso_local global i32 0, align 4
@BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*, i32, i32)* @_ldst_peripheral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ldst_peripheral(%struct.pl330_dmac* %0, i32 %1, i32* %2, %struct._xfer_spec* %3, i32 %4, i32 %5) #0 {
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
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %15 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PL330_QUIRK_BROKEN_NO_FLUSHP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @BURST, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %20, %6
  %23 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %24 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PL330_QUIRK_BROKEN_NO_FLUSHP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %36 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @_emit_FLUSHP(i32 %30, i32* %34, i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %29, %22
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %109

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %12, align 4
  %57 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %58 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @_emit_WFP(i32 %51, i32* %55, i32 %56, i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %12, align 4
  %73 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %74 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %79 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @_emit_load(i32 %67, i32* %71, i32 %72, i32 %77, i32 %82)
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %12, align 4
  %94 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %95 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct._xfer_spec*, %struct._xfer_spec** %10, align 8
  %100 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @_emit_store(i32 %88, i32* %92, i32 %93, i32 %98, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %13, align 4
  br label %46

109:                                              ; preds = %46
  %110 = load i32, i32* %13, align 4
  ret i32 %110
}

declare dso_local i64 @_emit_FLUSHP(i32, i32*, i32) #1

declare dso_local i64 @_emit_WFP(i32, i32*, i32, i32) #1

declare dso_local i64 @_emit_load(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @_emit_store(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
