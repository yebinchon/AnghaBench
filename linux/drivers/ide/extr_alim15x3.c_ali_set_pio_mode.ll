; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_alim15x3.c_ali_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_alim15x3.c_ali_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.ide_timing = type { i32 }

@ide_pci_clk = common dso_local global i32 0, align 4
@IDE_TIMING_SETUP = common dso_local global i32 0, align 4
@IDE_TIMING_8BIT = common dso_local global i32 0, align 4
@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @ali_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_set_pio_mode(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ide_timing, align 4
  %9 = alloca %struct.ide_timing, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load i32, i32* @ide_pci_clk, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ide_pci_clk, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 33, %16 ]
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 1000000, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @ide_timing_compute(%struct.TYPE_8__* %22, i64 %25, %struct.ide_timing* %8, i64 %26, i32 1)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %57

30:                                               ; preds = %17
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ide_timing_compute(%struct.TYPE_8__* %31, i64 %34, %struct.ide_timing* %9, i64 %35, i32 1)
  %37 = load i32, i32* @IDE_TIMING_SETUP, align 4
  %38 = load i32, i32* @IDE_TIMING_8BIT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @ide_timing_merge(%struct.ide_timing* %9, %struct.ide_timing* %8, %struct.ide_timing* %8, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %30
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @ide_timing_compute(%struct.TYPE_8__* %46, i64 %49, %struct.ide_timing* %9, i64 %50, i32 1)
  %52 = load i32, i32* @IDE_TIMING_SETUP, align 4
  %53 = load i32, i32* @IDE_TIMING_8BIT, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ide_timing_merge(%struct.ide_timing* %9, %struct.ide_timing* %8, %struct.ide_timing* %8, i32 %54)
  br label %56

56:                                               ; preds = %45, %30
  br label %57

57:                                               ; preds = %56, %17
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ide_disk, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 5, i32 0
  %67 = call i32 @ali_fifo_control(i32* %58, %struct.TYPE_8__* %59, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = call i32 @ali_program_timings(i32* %68, %struct.TYPE_8__* %69, %struct.ide_timing* %8, i32 0)
  ret void
}

declare dso_local %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @ide_timing_compute(%struct.TYPE_8__*, i64, %struct.ide_timing*, i64, i32) #1

declare dso_local i32 @ide_timing_merge(%struct.ide_timing*, %struct.ide_timing*, %struct.ide_timing*, i32) #1

declare dso_local i32 @ali_fifo_control(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ali_program_timings(i32*, %struct.TYPE_8__*, %struct.ide_timing*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
