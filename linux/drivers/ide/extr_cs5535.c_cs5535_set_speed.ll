; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_cs5535.c_cs5535_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_cs5535.c_cs5535_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@XFER_SW_DMA_0 = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@cs5535_pio_cmd_timings = common dso_local global i32* null, align 8
@cs5535_pio_dta_timings = common dso_local global i32* null, align 8
@ATAC_CH0D1_PIO = common dso_local global i32 0, align 4
@ATAC_CH0D0_PIO = common dso_local global i32 0, align 4
@ATAC_CH0D1_DMA = common dso_local global i32 0, align 4
@ATAC_CH0D0_DMA = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_4 = common dso_local global i64 0, align 8
@cs5535_udma_timings = common dso_local global i32* null, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_2 = common dso_local global i64 0, align 8
@cs5535_mwdma_timings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @cs5535_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5535_set_speed(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @XFER_SW_DMA_0, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %129

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call %struct.TYPE_5__* @ide_get_pair_dev(%struct.TYPE_5__* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %8, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @XFER_PIO_0, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %10, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XFER_PIO_0, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %37, %28
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32*, i32** @cs5535_pio_cmd_timings, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = load i32*, i32** @cs5535_pio_dta_timings, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %45, %49
  store i32 %50, i32* %5, align 4
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @ATAC_CH0D1_PIO, align 4
  br label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @ATAC_CH0D0_PIO, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @wrmsr(i32 %58, i32 %59, i32 0)
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @ATAC_CH0D0_PIO, align 4
  br label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @ATAC_CH0D1_PIO, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @rdmsr(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 16
  %74 = load i32*, i32** @cs5535_pio_cmd_timings, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %73, %77
  %79 = load i32*, i32** @cs5535_pio_cmd_timings, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %78, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %67
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, 65535
  store i32 %86, i32* %5, align 4
  %87 = load i32*, i32** @cs5535_pio_cmd_timings, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @ATAC_CH0D0_PIO, align 4
  br label %100

98:                                               ; preds = %84
  %99 = load i32, i32* @ATAC_CH0D1_PIO, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @wrmsr(i32 %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %100, %67
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @ATAC_CH0D1_DMA, align 4
  br label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @ATAC_CH0D0_DMA, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @rdmsr(i32 %112, i32 %113, i32 %114)
  %116 = load i64, i64* %7, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @ATAC_CH0D1_DMA, align 4
  br label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @ATAC_CH0D0_DMA, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = or i64 %125, 2147483648
  %127 = trunc i64 %126 to i32
  %128 = call i32 @wrmsr(i32 %123, i32 %127, i32 0)
  br label %191

129:                                              ; preds = %2
  %130 = load i64, i64* %7, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @ATAC_CH0D1_DMA, align 4
  br label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @ATAC_CH0D0_DMA, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @rdmsr(i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = and i64 %142, 2147483648
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %5, align 4
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* @XFER_UDMA_0, align 8
  %147 = icmp sge i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %136
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* @XFER_UDMA_4, align 8
  %151 = icmp sle i64 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load i32*, i32** @cs5535_udma_timings, align 8
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @XFER_UDMA_0, align 8
  %156 = sub nsw i64 %154, %155
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %5, align 4
  br label %180

161:                                              ; preds = %148, %136
  %162 = load i64, i64* %4, align 8
  %163 = load i64, i64* @XFER_MW_DMA_0, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load i64, i64* %4, align 8
  %167 = load i64, i64* @XFER_MW_DMA_2, align 8
  %168 = icmp sle i64 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load i32*, i32** @cs5535_mwdma_timings, align 8
  %171 = load i64, i64* %4, align 8
  %172 = load i64, i64* @XFER_MW_DMA_0, align 8
  %173 = sub nsw i64 %171, %172
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %5, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %5, align 4
  br label %179

178:                                              ; preds = %165, %161
  br label %191

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179, %152
  %181 = load i64, i64* %7, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32, i32* @ATAC_CH0D1_DMA, align 4
  br label %187

185:                                              ; preds = %180
  %186 = load i32, i32* @ATAC_CH0D0_DMA, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @wrmsr(i32 %188, i32 %189, i32 0)
  br label %191

191:                                              ; preds = %178, %187, %122
  ret void
}

declare dso_local %struct.TYPE_5__* @ide_get_pair_dev(%struct.TYPE_5__*) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
