; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__setup_loops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__setup_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { i32 }
%struct._xfer_spec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pl330_xfer }
%struct.pl330_xfer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*)* @_setup_loops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_setup_loops(%struct.pl330_dmac* %0, i32 %1, i32* %2, %struct._xfer_spec* %3) #0 {
  %5 = alloca %struct.pl330_dmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct._xfer_spec*, align 8
  %9 = alloca %struct.pl330_xfer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct._xfer_spec* %3, %struct._xfer_spec** %8, align 8
  %15 = load %struct._xfer_spec*, %struct._xfer_spec** %8, align 8
  %16 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.pl330_xfer* %18, %struct.pl330_xfer** %9, align 8
  %19 = load %struct._xfer_spec*, %struct._xfer_spec** %8, align 8
  %20 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.pl330_xfer*, %struct.pl330_xfer** %9, align 8
  %23 = getelementptr inbounds %struct.pl330_xfer, %struct.pl330_xfer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @BYTE_TO_BURST(i32 %24, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.pl330_xfer*, %struct.pl330_xfer** %9, align 8
  %28 = getelementptr inbounds %struct.pl330_xfer, %struct.pl330_xfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @BURST_TO_BYTE(i64 %30, i32 %31)
  %33 = sub nsw i32 %29, %32
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @BRST_SIZE(i32 %34)
  %36 = sdiv i32 %33, %35
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %40, %4
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %11, align 8
  %42 = load %struct.pl330_dmac*, %struct.pl330_dmac** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct._xfer_spec*, %struct._xfer_spec** %8, align 8
  %49 = call i64 @_loop(%struct.pl330_dmac* %42, i32 %43, i32* %47, i64* %11, %struct._xfer_spec* %48)
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %12, align 8
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.pl330_dmac*, %struct.pl330_dmac** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct._xfer_spec*, %struct._xfer_spec** %8, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @_dregs(%struct.pl330_dmac* %58, i32 %59, i32* %63, %struct._xfer_spec* %64, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  ret i32 %71
}

declare dso_local i64 @BYTE_TO_BURST(i32, i32) #1

declare dso_local i32 @BURST_TO_BYTE(i64, i32) #1

declare dso_local i32 @BRST_SIZE(i32) #1

declare dso_local i64 @_loop(%struct.pl330_dmac*, i32, i32*, i64*, %struct._xfer_spec*) #1

declare dso_local i64 @_dregs(%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
