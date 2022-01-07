; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-dma.c_ide_get_mode_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-dma.c_ide_get_mode_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.ide_port_ops* }
%struct.ide_port_ops = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }

@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@ATA_ID_UDMA_MODES = common dso_local global i64 0, align 8
@XFER_UDMA_2 = common dso_local global i32 0, align 4
@ATA_ID_MWDMA_MODES = common dso_local global i64 0, align 8
@ATA_ID_CFA_MODES = common dso_local global i64 0, align 8
@ATA_ID_SWDMA_MODES = common dso_local global i64 0, align 8
@ATA_SWDMA2 = common dso_local global i32 0, align 4
@ATA_ID_OLD_DMA_MODES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @ide_get_mode_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_get_mode_mask(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.ide_port_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load %struct.ide_port_ops*, %struct.ide_port_ops** %20, align 8
  store %struct.ide_port_ops* %21, %struct.ide_port_ops** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %161 [
    i32 128, label %23
    i32 130, label %74
    i32 129, label %126
  ]

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %163

31:                                               ; preds = %23
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* @ATA_ID_UDMA_MODES, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ide_port_ops*, %struct.ide_port_ops** %9, align 8
  %37 = icmp ne %struct.ide_port_ops* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.ide_port_ops*, %struct.ide_port_ops** %9, align 8
  %40 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_8__*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.ide_port_ops*, %struct.ide_port_ops** %9, align 8
  %45 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = call i32 %46(%struct.TYPE_8__* %47)
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %57

51:                                               ; preds = %38, %31
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %51, %43
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @XFER_UDMA_2, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 120
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = call i32 @eighty_ninty_three(%struct.TYPE_8__* %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 7
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %65, %61
  br label %73

73:                                               ; preds = %72, %57
  br label %163

74:                                               ; preds = %3
  %75 = load i32*, i32** %7, align 8
  %76 = load i64, i64* @ATA_ID_MWDMA_MODES, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @ata_id_is_cfa(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %74
  %83 = load i32*, i32** %7, align 8
  %84 = load i64, i64* @ATA_ID_CFA_MODES, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 56
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* @ATA_ID_CFA_MODES, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 56
  %95 = ashr i32 %94, 3
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 2, %97
  %99 = sub nsw i32 %98, 1
  %100 = shl i32 %99, 3
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %89, %82, %74
  %104 = load %struct.ide_port_ops*, %struct.ide_port_ops** %9, align 8
  %105 = icmp ne %struct.ide_port_ops* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.ide_port_ops*, %struct.ide_port_ops** %9, align 8
  %108 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %107, i32 0, i32 1
  %109 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %108, align 8
  %110 = icmp ne i32 (%struct.TYPE_8__*)* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.ide_port_ops*, %struct.ide_port_ops** %9, align 8
  %113 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %112, i32 0, i32 1
  %114 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = call i32 %114(%struct.TYPE_8__* %115)
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %125

119:                                              ; preds = %106, %103
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %119, %111
  br label %163

126:                                              ; preds = %3
  %127 = load i32*, i32** %7, align 8
  %128 = load i64, i64* @ATA_ID_SWDMA_MODES, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @ATA_SWDMA2, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %155, label %135

135:                                              ; preds = %126
  %136 = load i32*, i32** %7, align 8
  %137 = load i64, i64* @ATA_ID_OLD_DMA_MODES, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load i32*, i32** %7, align 8
  %144 = load i64, i64* @ATA_ID_OLD_DMA_MODES, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 8
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp sle i32 %148, 2
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load i32, i32* %12, align 4
  %152 = shl i32 2, %151
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %150, %142
  br label %155

155:                                              ; preds = %154, %135, %126
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %163

161:                                              ; preds = %3
  %162 = call i32 (...) @BUG()
  br label %163

163:                                              ; preds = %161, %155, %125, %73, %30
  %164 = load i32, i32* %10, align 4
  ret i32 %164
}

declare dso_local i32 @eighty_ninty_three(%struct.TYPE_8__*) #1

declare dso_local i32 @ata_id_is_cfa(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
