; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__bursts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__bursts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { i32 }
%struct._xfer_spec = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BURST = common dso_local global i32 0, align 4
@SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*, i32)* @_bursts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bursts(%struct.pl330_dmac* %0, i32 %1, i32* %2, %struct._xfer_spec* %3, i32 %4) #0 {
  %6 = alloca %struct.pl330_dmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct._xfer_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct._xfer_spec* %3, %struct._xfer_spec** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct._xfer_spec*, %struct._xfer_spec** %9, align 8
  %14 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BRST_LEN(i32 %15)
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @BURST, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @SINGLE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %12, align 4
  %24 = load %struct._xfer_spec*, %struct._xfer_spec** %9, align 8
  %25 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %53 [
    i32 129, label %29
    i32 130, label %29
    i32 128, label %42
  ]

29:                                               ; preds = %22, %22
  %30 = load %struct.pl330_dmac*, %struct.pl330_dmac** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct._xfer_spec*, %struct._xfer_spec** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @_ldst_peripheral(%struct.pl330_dmac* %30, i32 %31, i32* %35, %struct._xfer_spec* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %55

42:                                               ; preds = %22
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct._xfer_spec*, %struct._xfer_spec** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @_ldst_memtomem(i32 %43, i32* %47, %struct._xfer_spec* %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %55

53:                                               ; preds = %22
  %54 = call i32 @WARN_ON(i32 1)
  br label %55

55:                                               ; preds = %53, %42, %29
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i32 @BRST_LEN(i32) #1

declare dso_local i32 @_ldst_peripheral(%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*, i32, i32) #1

declare dso_local i32 @_ldst_memtomem(i32, i32*, %struct._xfer_spec*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
