; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-timings.c_ide_pio_cycle_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-timings.c_ide_pio_cycle_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.ide_timing = type { i32 }

@XFER_PIO_0 = common dso_local global i64 0, align 8
@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@ATA_ID_EIDE_PIO_IORDY = common dso_local global i64 0, align 8
@ATA_ID_EIDE_PIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_pio_cycle_time(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ide_timing*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i64, i64* @XFER_PIO_0, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = call %struct.ide_timing* @ide_timing_find_mode(i64 %14)
  store %struct.ide_timing* %15, %struct.ide_timing** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @ata_id_has_iordy(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* @ATA_ID_EIDE_PIO_IORDY, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %22
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* @ATA_ID_EIDE_PIO, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %44 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %41, %38
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 4
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @ata_id_is_cfa(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %51, %48
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  br label %66

62:                                               ; preds = %57
  %63 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %64 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ %61, %60 ], [ %65, %62 ]
  ret i32 %67
}

declare dso_local %struct.ide_timing* @ide_timing_find_mode(i64) #1

declare dso_local i64 @ata_id_has_iordy(i32*) #1

declare dso_local i64 @ata_id_is_cfa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
