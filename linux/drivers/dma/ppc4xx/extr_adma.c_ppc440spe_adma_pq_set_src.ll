; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_pq_set_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_pq_set_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i32, i32, %struct.ppc440spe_adma_desc_slot*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ppc440spe_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PPC440SPE_DESC_RXOR = common dso_local global i32 0, align 4
@PPC440SPE_DESC_RXOR12 = common dso_local global i32 0, align 4
@DMA_RXOR12 = common dso_local global i32 0, align 4
@DMA_CUED_REGION_OFF = common dso_local global i32 0, align 4
@PPC440SPE_DESC_RXOR123 = common dso_local global i32 0, align 4
@DMA_RXOR123 = common dso_local global i32 0, align 4
@PPC440SPE_DESC_RXOR124 = common dso_local global i32 0, align 4
@DMA_RXOR124 = common dso_local global i32 0, align 4
@PPC440SPE_DESC_RXOR125 = common dso_local global i32 0, align 4
@DMA_RXOR125 = common dso_local global i32 0, align 4
@DMA_CUED_XOR_BASE = common dso_local global i32 0, align 4
@DMA_CUED_XOR_HB = common dso_local global i32 0, align 4
@PPC440SPE_ZERO_P = common dso_local global i32 0, align 4
@PPC440SPE_ZERO_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, i32, i32)* @ppc440spe_adma_pq_set_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_pq_set_src(%struct.ppc440spe_adma_desc_slot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppc440spe_adma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store %struct.ppc440spe_adma_desc_slot* null, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %12 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %13 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ppc440spe_adma_chan* @to_ppc440spe_adma_chan(i32 %15)
  store %struct.ppc440spe_adma_chan* %16, %struct.ppc440spe_adma_chan** %7, align 8
  %17 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %7, align 8
  %18 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %188 [
    i32 130, label %22
    i32 129, label %22
    i32 128, label %165
  ]

22:                                               ; preds = %3, %3
  %23 = load i32, i32* @PPC440SPE_DESC_RXOR, align 4
  %24 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %25 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %24, i32 0, i32 3
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %107

28:                                               ; preds = %22
  %29 = load i32, i32* @PPC440SPE_DESC_RXOR12, align 4
  %30 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %31 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %30, i32 0, i32 3
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 2, i32 3
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %89

38:                                               ; preds = %28
  %39 = load i32, i32* @PPC440SPE_DESC_RXOR12, align 4
  %40 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %41 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %40, i32 0, i32 3
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @DMA_RXOR12, align 4
  %46 = load i32, i32* @DMA_CUED_REGION_OFF, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %8, align 4
  br label %83

48:                                               ; preds = %38
  %49 = load i32, i32* @PPC440SPE_DESC_RXOR123, align 4
  %50 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %51 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %50, i32 0, i32 3
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @DMA_RXOR123, align 4
  %56 = load i32, i32* @DMA_CUED_REGION_OFF, align 4
  %57 = shl i32 %55, %56
  store i32 %57, i32* %8, align 4
  br label %82

58:                                               ; preds = %48
  %59 = load i32, i32* @PPC440SPE_DESC_RXOR124, align 4
  %60 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %61 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %60, i32 0, i32 3
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @DMA_RXOR124, align 4
  %66 = load i32, i32* @DMA_CUED_REGION_OFF, align 4
  %67 = shl i32 %65, %66
  store i32 %67, i32* %8, align 4
  br label %81

68:                                               ; preds = %58
  %69 = load i32, i32* @PPC440SPE_DESC_RXOR125, align 4
  %70 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %71 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %70, i32 0, i32 3
  %72 = call i32 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @DMA_RXOR125, align 4
  %76 = load i32, i32* @DMA_CUED_REGION_OFF, align 4
  %77 = shl i32 %75, %76
  store i32 %77, i32* %8, align 4
  br label %80

78:                                               ; preds = %68
  %79 = call i32 (...) @BUG()
  br label %80

80:                                               ; preds = %78, %74
  br label %81

81:                                               ; preds = %80, %64
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %44
  %84 = load i32, i32* @DMA_CUED_XOR_BASE, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %88 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %87, i32 0)
  store %struct.ppc440spe_adma_desc_slot* %88, %struct.ppc440spe_adma_desc_slot** %9, align 8
  br label %106

89:                                               ; preds = %28
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store %struct.ppc440spe_adma_desc_slot* null, %struct.ppc440spe_adma_desc_slot** %9, align 8
  br label %105

94:                                               ; preds = %89
  %95 = load i32, i32* @DMA_CUED_XOR_HB, align 4
  store i32 %95, i32* %8, align 4
  %96 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %101 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %99, %102
  %104 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %96, i32 %103)
  store %struct.ppc440spe_adma_desc_slot* %104, %struct.ppc440spe_adma_desc_slot** %9, align 8
  br label %105

105:                                              ; preds = %94, %93
  br label %106

106:                                              ; preds = %105, %83
  br label %132

107:                                              ; preds = %22
  store i32 0, i32* %11, align 4
  %108 = load i32, i32* @PPC440SPE_ZERO_P, align 4
  %109 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %110 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %109, i32 0, i32 3
  %111 = call i32 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %113, %107
  %117 = load i32, i32* @PPC440SPE_ZERO_Q, align 4
  %118 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %119 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %118, i32 0, i32 3
  %120 = call i32 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = load i32, i32* @DMA_CUED_XOR_HB, align 4
  store i32 %126, i32* %8, align 4
  %127 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %128, %129
  %131 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %127, i32 %130)
  store %struct.ppc440spe_adma_desc_slot* %131, %struct.ppc440spe_adma_desc_slot** %9, align 8
  br label %132

132:                                              ; preds = %125, %106
  %133 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %134 = call i32 @likely(%struct.ppc440spe_adma_desc_slot* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %132
  %137 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %138 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @ppc440spe_desc_set_src_addr(%struct.ppc440spe_adma_desc_slot* %137, %struct.ppc440spe_adma_chan* %138, i32 0, i32 %139, i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %163, label %144

144:                                              ; preds = %136
  %145 = load i32, i32* @PPC440SPE_DESC_RXOR, align 4
  %146 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %147 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %146, i32 0, i32 3
  %148 = call i32 @test_bit(i32 %145, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %152 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %157 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %156, i32 1)
  store %struct.ppc440spe_adma_desc_slot* %157, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %158 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %159 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @ppc440spe_desc_set_src_addr(%struct.ppc440spe_adma_desc_slot* %158, %struct.ppc440spe_adma_chan* %159, i32 0, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %155, %150, %144, %136
  br label %164

164:                                              ; preds = %163, %132
  br label %188

165:                                              ; preds = %3
  %166 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %167 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %166, i32 0, i32 2
  %168 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %167, align 8
  store %struct.ppc440spe_adma_desc_slot* %168, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %169 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %170 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %183

173:                                              ; preds = %165
  %174 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @ppc440spe_adma_dma2rxor_set_src(%struct.ppc440spe_adma_desc_slot* %174, i32 %175, i32 %176)
  %178 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %179 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %180 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %178, i32 %181)
  store %struct.ppc440spe_adma_desc_slot* %182, %struct.ppc440spe_adma_desc_slot** %9, align 8
  br label %183

183:                                              ; preds = %173, %165
  %184 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %9, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @ppc440spe_adma_dma2rxor_set_src(%struct.ppc440spe_adma_desc_slot* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %3, %183, %164
  ret void
}

declare dso_local %struct.ppc440spe_adma_chan* @to_ppc440spe_adma_chan(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot*, i32) #1

declare dso_local i32 @likely(%struct.ppc440spe_adma_desc_slot*) #1

declare dso_local i32 @ppc440spe_desc_set_src_addr(%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*, i32, i32, i32) #1

declare dso_local i32 @ppc440spe_adma_dma2rxor_set_src(%struct.ppc440spe_adma_desc_slot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
