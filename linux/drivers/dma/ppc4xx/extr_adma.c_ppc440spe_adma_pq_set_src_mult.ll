; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_pq_set_src_mult.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_pq_set_src_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i32, i32, %struct.ppc440spe_adma_desc_slot*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ppc440spe_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PPC440SPE_DESC_RXOR = common dso_local global i32 0, align 4
@PPC440SPE_DESC_RXOR12 = common dso_local global i32 0, align 4
@DMA_CUED_MULT1_OFF = common dso_local global i32 0, align 4
@DMA_CDB_SG_SRC = common dso_local global i32 0, align 4
@DMA_CDB_SG_DST2 = common dso_local global i32 0, align 4
@DMA_CDB_SG_DST1 = common dso_local global i32 0, align 4
@PPC440SPE_ZERO_P = common dso_local global i32 0, align 4
@PPC440SPE_ZERO_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, i8, i32, i32)* @ppc440spe_adma_pq_set_src_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_pq_set_src_mult(%struct.ppc440spe_adma_desc_slot* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ppc440spe_adma_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %13 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.ppc440spe_adma_desc_slot* null, %struct.ppc440spe_adma_desc_slot** %12, align 8
  store %struct.ppc440spe_adma_desc_slot* null, %struct.ppc440spe_adma_desc_slot** %13, align 8
  %16 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %17 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ppc440spe_adma_chan* @to_ppc440spe_adma_chan(i32 %19)
  store %struct.ppc440spe_adma_chan* %20, %struct.ppc440spe_adma_chan** %9, align 8
  %21 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %9, align 8
  %22 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %161 [
    i32 130, label %26
    i32 129, label %26
    i32 128, label %139
  ]

26:                                               ; preds = %4, %4
  %27 = load i32, i32* @PPC440SPE_DESC_RXOR, align 4
  %28 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %29 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %28, i32 0, i32 3
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %26
  %33 = load i32, i32* @PPC440SPE_DESC_RXOR12, align 4
  %34 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %35 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %34, i32 0, i32 3
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 2, i32 3
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %32
  %44 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %45 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %46 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %44, i32 %48)
  store %struct.ppc440spe_adma_desc_slot* %49, %struct.ppc440spe_adma_desc_slot** %12, align 8
  %50 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %51 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %56 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %55, i32 0)
  store %struct.ppc440spe_adma_desc_slot* %56, %struct.ppc440spe_adma_desc_slot** %13, align 8
  br label %57

57:                                               ; preds = %54, %43
  %58 = load i32, i32* @DMA_CUED_MULT1_OFF, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 3
  %61 = add nsw i32 %58, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @DMA_CDB_SG_SRC, align 4
  store i32 %62, i32* %11, align 4
  br label %82

63:                                               ; preds = %32
  %64 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %69 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %64, i32 %71)
  store %struct.ppc440spe_adma_desc_slot* %72, %struct.ppc440spe_adma_desc_slot** %12, align 8
  %73 = load i32, i32* @DMA_CUED_MULT1_OFF, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* @DMA_CDB_SG_DST2, align 4
  br label %80

78:                                               ; preds = %63
  %79 = load i32, i32* @DMA_CDB_SG_DST1, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %57
  br label %116

83:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  %84 = load i32, i32* @PPC440SPE_ZERO_P, align 4
  %85 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %86 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %85, i32 0, i32 3
  %87 = call i32 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %89, %83
  %93 = load i32, i32* @PPC440SPE_ZERO_Q, align 4
  %94 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %95 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %94, i32 0, i32 3
  %96 = call i32 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %103, %104
  %106 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %102, i32 %105)
  store %struct.ppc440spe_adma_desc_slot* %106, %struct.ppc440spe_adma_desc_slot** %12, align 8
  %107 = load i32, i32* @DMA_CUED_MULT1_OFF, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* @DMA_CDB_SG_DST2, align 4
  br label %114

112:                                              ; preds = %101
  %113 = load i32, i32* @DMA_CDB_SG_DST1, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %114, %82
  %117 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %12, align 8
  %118 = call i32 @likely(%struct.ppc440spe_adma_desc_slot* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %116
  %121 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %12, align 8
  %122 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i8, i8* %6, align 1
  %126 = zext i8 %125 to i32
  %127 = call i32 @ppc440spe_desc_set_src_mult(%struct.ppc440spe_adma_desc_slot* %121, %struct.ppc440spe_adma_chan* %122, i32 %123, i32 %124, i32 %126)
  %128 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %13, align 8
  %129 = call i32 @unlikely(%struct.ppc440spe_adma_desc_slot* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %13, align 8
  %133 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %9, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @ppc440spe_desc_set_src_mult(%struct.ppc440spe_adma_desc_slot* %132, %struct.ppc440spe_adma_chan* %133, i32 %134, i32 %135, i32 1)
  br label %137

137:                                              ; preds = %131, %120
  br label %138

138:                                              ; preds = %137, %116
  br label %161

139:                                              ; preds = %4
  %140 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %141 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %140, i32 0, i32 2
  %142 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %141, align 8
  store %struct.ppc440spe_adma_desc_slot* %142, %struct.ppc440spe_adma_desc_slot** %12, align 8
  %143 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %144 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %12, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @ppc440spe_adma_dma2rxor_set_mult(%struct.ppc440spe_adma_desc_slot* %148, i32 %149, i8 zeroext 1)
  %151 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %152 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %153 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot* %151, i32 %154)
  store %struct.ppc440spe_adma_desc_slot* %155, %struct.ppc440spe_adma_desc_slot** %12, align 8
  br label %156

156:                                              ; preds = %147, %139
  %157 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %12, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i8, i8* %6, align 1
  %160 = call i32 @ppc440spe_adma_dma2rxor_set_mult(%struct.ppc440spe_adma_desc_slot* %157, i32 %158, i8 zeroext %159)
  br label %161

161:                                              ; preds = %4, %156, %138
  ret void
}

declare dso_local %struct.ppc440spe_adma_chan* @to_ppc440spe_adma_chan(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.ppc440spe_adma_desc_slot* @ppc440spe_get_group_entry(%struct.ppc440spe_adma_desc_slot*, i32) #1

declare dso_local i32 @likely(%struct.ppc440spe_adma_desc_slot*) #1

declare dso_local i32 @ppc440spe_desc_set_src_mult(%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*, i32, i32, i32) #1

declare dso_local i32 @unlikely(%struct.ppc440spe_adma_desc_slot*) #1

declare dso_local i32 @ppc440spe_adma_dma2rxor_set_mult(%struct.ppc440spe_adma_desc_slot*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
