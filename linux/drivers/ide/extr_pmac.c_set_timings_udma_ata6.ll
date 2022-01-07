; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pmac.c_set_timings_udma_ata6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pmac.c_set_timings_udma_ata6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_timing = type { i64 }

@XFER_UDMA_5 = common dso_local global i64 0, align 8
@kauai_udma_timings = common dso_local global i32 0, align 4
@TR_100_UDMAREG_UDMA_MASK = common dso_local global i32 0, align 4
@TR_100_UDMAREG_UDMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @set_timings_udma_ata6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_timings_udma_ata6(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ide_timing*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call %struct.ide_timing* @ide_timing_find_mode(i64 %10)
  store %struct.ide_timing* %11, %struct.ide_timing** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @XFER_UDMA_5, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %17 = icmp eq %struct.ide_timing* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  store i32 1, i32* %4, align 4
  br label %39

19:                                               ; preds = %15
  %20 = load i32, i32* @kauai_udma_timings, align 4
  %21 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %22 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @kauai_lookup_timing(i32 %20, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TR_100_UDMAREG_UDMA_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TR_100_UDMAREG_UDMA_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %19, %18
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.ide_timing* @ide_timing_find_mode(i64) #1

declare dso_local i32 @kauai_lookup_timing(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
