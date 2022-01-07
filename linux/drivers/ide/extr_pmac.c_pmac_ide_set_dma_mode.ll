; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pmac.c_pmac_ide_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pmac.c_pmac_ide_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64, i32* }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@controller_kl_ata4 = common dso_local global i64 0, align 8
@controller_un_ata6 = common dso_local global i64 0, align 8
@controller_k2_ata6 = common dso_local global i64 0, align 8
@controller_sh_ata6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @pmac_ide_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmac_ide_set_dma_mode(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_11__* @dev_get_drvdata(i32 %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @XFER_UDMA_0, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %87

45:                                               ; preds = %2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @controller_kl_ata4, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @set_timings_udma_ata4(i32* %52, i64 %53)
  store i32 %54, i32* %6, align 4
  br label %86

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @controller_un_ata6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @controller_k2_ata6, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %55
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @set_timings_udma_ata6(i32* %68, i32* %69, i64 %70)
  store i32 %71, i32* %6, align 4
  br label %85

72:                                               ; preds = %61
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @controller_sh_ata6, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @set_timings_udma_shasta(i32* %79, i32* %80, i64 %81)
  store i32 %82, i32* %6, align 4
  br label %84

83:                                               ; preds = %72
  store i32 -1, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %78
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %51
  br label %96

87:                                               ; preds = %2
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @set_timings_mdma(%struct.TYPE_13__* %88, i64 %91, i32* %92, i32* %93, i64 %94)
  br label %96

96:                                               ; preds = %87, %86
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %109

100:                                              ; preds = %96
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = call i32 @pmac_ide_do_update_timings(%struct.TYPE_13__* %107)
  br label %109

109:                                              ; preds = %100, %99
  ret void
}

declare dso_local %struct.TYPE_11__* @dev_get_drvdata(i32) #1

declare dso_local i32 @set_timings_udma_ata4(i32*, i64) #1

declare dso_local i32 @set_timings_udma_ata6(i32*, i32*, i64) #1

declare dso_local i32 @set_timings_udma_shasta(i32*, i32*, i64) #1

declare dso_local i32 @set_timings_mdma(%struct.TYPE_13__*, i64, i32*, i32*, i64) #1

declare dso_local i32 @pmac_ide_do_update_timings(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
