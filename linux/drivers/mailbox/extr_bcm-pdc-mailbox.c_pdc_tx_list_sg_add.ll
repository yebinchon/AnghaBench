; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_tx_list_sg_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_tx_list_sg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i64, i64, i64, i64*, i32, %struct.scatterlist**, i32, i32 }
%struct.scatterlist = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@D64_CTRL1_SOF = common dso_local global i64 0, align 8
@D64_CTRL1_EOT = common dso_local global i64 0, align 8
@PDC_DMA_BUF_MAX = common dso_local global i64 0, align 8
@D64_CTRL1_EOF = common dso_local global i64 0, align 8
@D64_CTRL1_IOC = common dso_local global i64 0, align 8
@PDC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*, %struct.scatterlist*)* @pdc_tx_list_sg_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_tx_list_sg_add(%struct.pdc_state* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pdc_state*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pdc_state* %0, %struct.pdc_state** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %14 = call i64 @sg_nents(%struct.scatterlist* %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %16 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %19 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %22 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %25 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @NTXDACTIVE(i32 %20, i64 %23, i64 %26)
  %28 = sub nsw i64 %17, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %37 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %167

42:                                               ; preds = %2
  %43 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %44 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %47 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %52 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %55 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %59 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %60 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %59, i32 0, i32 5
  %61 = load %struct.scatterlist**, %struct.scatterlist*** %60, align 8
  %62 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %63 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %61, i64 %64
  store %struct.scatterlist* %58, %struct.scatterlist** %65, align 8
  %66 = load i64, i64* @D64_CTRL1_SOF, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %50, %42
  br label %68

68:                                               ; preds = %141, %67
  %69 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %70 = icmp ne %struct.scatterlist* %69, null
  br i1 %70, label %71, label %155

71:                                               ; preds = %68
  %72 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %73 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %76 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %74, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i64, i64* @D64_CTRL1_EOT, align 8
  store i64 %85, i64* %7, align 8
  br label %87

86:                                               ; preds = %71
  store i64 0, i64* %7, align 8
  br label %87

87:                                               ; preds = %86, %84
  %88 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %89 = call i64 @sg_dma_len(%struct.scatterlist* %88)
  store i64 %89, i64* %11, align 8
  %90 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %91 = call i32 @sg_dma_address(%struct.scatterlist* %90)
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %129, %87
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @PDC_DMA_BUF_MAX, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %130

96:                                               ; preds = %92
  %97 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i64, i64* @PDC_DMA_BUF_MAX, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = or i64 %100, %101
  %103 = call i32 @pdc_build_txd(%struct.pdc_state* %97, i32 %98, i64 %99, i64 %102)
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* @PDC_DMA_BUF_MAX, align 8
  %107 = load i64, i64* %11, align 8
  %108 = sub nsw i64 %107, %106
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* @PDC_DMA_BUF_MAX, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  %114 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %115 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %118 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %116, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %96
  %127 = load i64, i64* @D64_CTRL1_EOT, align 8
  store i64 %127, i64* %7, align 8
  br label %129

128:                                              ; preds = %96
  store i64 0, i64* %7, align 8
  br label %129

129:                                              ; preds = %128, %126
  br label %92

130:                                              ; preds = %92
  %131 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %132 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %131)
  store %struct.scatterlist* %132, %struct.scatterlist** %5, align 8
  %133 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %134 = icmp ne %struct.scatterlist* %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = load i64, i64* @D64_CTRL1_EOF, align 8
  %137 = load i64, i64* @D64_CTRL1_IOC, align 8
  %138 = or i64 %136, %137
  %139 = load i64, i64* %6, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %6, align 8
  br label %141

141:                                              ; preds = %135, %130
  %142 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = or i64 %145, %146
  %148 = call i32 @pdc_build_txd(%struct.pdc_state* %142, i32 %143, i64 %144, i64 %147)
  %149 = load i64, i64* %10, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %10, align 8
  %151 = load i64, i64* @D64_CTRL1_SOF, align 8
  %152 = xor i64 %151, -1
  %153 = load i64, i64* %6, align 8
  %154 = and i64 %153, %152
  store i64 %154, i64* %6, align 8
  br label %68

155:                                              ; preds = %68
  %156 = load i64, i64* %10, align 8
  %157 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %158 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %161 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i64, i64* %159, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %156
  store i64 %165, i64* %163, align 8
  %166 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %155, %35
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @sg_nents(%struct.scatterlist*) #1

declare dso_local i64 @NTXDACTIVE(i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @pdc_build_txd(%struct.pdc_state*, i32, i64, i64) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
