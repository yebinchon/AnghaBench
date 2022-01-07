; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__setup_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__setup_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { i32 }
%struct._xfer_spec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pl330_xfer }
%struct.pl330_xfer = type { i32, i32 }

@SAR = common dso_local global i32 0, align 4
@DAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*)* @_setup_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_setup_xfer(%struct.pl330_dmac* %0, i32 %1, i32* %2, %struct._xfer_spec* %3) #0 {
  %5 = alloca %struct.pl330_dmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct._xfer_spec*, align 8
  %9 = alloca %struct.pl330_xfer*, align 8
  %10 = alloca i32, align 4
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct._xfer_spec* %3, %struct._xfer_spec** %8, align 8
  %11 = load %struct._xfer_spec*, %struct._xfer_spec** %8, align 8
  %12 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.pl330_xfer* %14, %struct.pl330_xfer** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* @SAR, align 4
  %21 = load %struct.pl330_xfer*, %struct.pl330_xfer** %9, align 8
  %22 = getelementptr inbounds %struct.pl330_xfer, %struct.pl330_xfer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @_emit_MOV(i32 %15, i32* %19, i32 %20, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* @DAR, align 4
  %35 = load %struct.pl330_xfer*, %struct.pl330_xfer** %9, align 8
  %36 = getelementptr inbounds %struct.pl330_xfer, %struct.pl330_xfer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @_emit_MOV(i32 %29, i32* %33, i32 %34, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.pl330_dmac*, %struct.pl330_dmac** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct._xfer_spec*, %struct._xfer_spec** %8, align 8
  %50 = call i64 @_setup_loops(%struct.pl330_dmac* %43, i32 %44, i32* %48, %struct._xfer_spec* %49)
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i64 @_emit_MOV(i32, i32*, i32, i32) #1

declare dso_local i64 @_setup_loops(%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
