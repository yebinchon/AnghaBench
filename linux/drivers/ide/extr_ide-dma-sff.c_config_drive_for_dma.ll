; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-dma-sff.c_config_drive_for_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-dma-sff.c_config_drive_for_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ide_disk = common dso_local global i64 0, align 8
@IDE_HFLAG_NO_ATAPI_DMA = common dso_local global i32 0, align 4
@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@ATA_ID_UDMA_MODES = common dso_local global i64 0, align 8
@ATA_ID_MWDMA_MODES = common dso_local global i64 0, align 8
@ATA_ID_SWDMA_MODES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_drive_for_dma(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ide_disk, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IDE_HFLAG_NO_ATAPI_DMA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %63

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* @ATA_ID_UDMA_MODES, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 127
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %63

42:                                               ; preds = %33, %26
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @ATA_ID_MWDMA_MODES, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1028
  %48 = icmp eq i32 %47, 1028
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* @ATA_ID_SWDMA_MODES, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1028
  %55 = icmp eq i32 %54, 1028
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %42
  store i32 1, i32* %2, align 4
  br label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = call i64 @ide_dma_good_drive(%struct.TYPE_6__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %63

62:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %61, %56, %41, %24
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @ide_dma_good_drive(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
