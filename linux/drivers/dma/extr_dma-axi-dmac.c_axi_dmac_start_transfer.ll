; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dmac_chan = type { i64, i64, %struct.axi_dmac_desc*, i32, i32 }
%struct.axi_dmac_desc = type { i64, i32, %struct.TYPE_4__, i64, i64, %struct.axi_dmac_sg* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.axi_dmac_sg = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.axi_dmac = type { i32 }
%struct.virt_dma_desc = type { i32 }

@AXI_DMAC_REG_START_TRANSFER = common dso_local global i32 0, align 4
@AXI_DMAC_SG_UNUSED = common dso_local global i8* null, align 8
@AXI_DMAC_FLAG_LAST = common dso_local global i32 0, align 4
@AXI_DMAC_REG_TRANSFER_ID = common dso_local global i32 0, align 4
@AXI_DMAC_REG_DEST_ADDRESS = common dso_local global i32 0, align 4
@AXI_DMAC_REG_DEST_STRIDE = common dso_local global i32 0, align 4
@AXI_DMAC_REG_SRC_ADDRESS = common dso_local global i32 0, align 4
@AXI_DMAC_REG_SRC_STRIDE = common dso_local global i32 0, align 4
@AXI_DMAC_FLAG_CYCLIC = common dso_local global i32 0, align 4
@AXI_DMAC_FLAG_PARTIAL_REPORT = common dso_local global i32 0, align 4
@AXI_DMAC_REG_X_LENGTH = common dso_local global i32 0, align 4
@AXI_DMAC_REG_Y_LENGTH = common dso_local global i32 0, align 4
@AXI_DMAC_REG_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axi_dmac_chan*)* @axi_dmac_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axi_dmac_start_transfer(%struct.axi_dmac_chan* %0) #0 {
  %2 = alloca %struct.axi_dmac_chan*, align 8
  %3 = alloca %struct.axi_dmac*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca %struct.axi_dmac_desc*, align 8
  %6 = alloca %struct.axi_dmac_sg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.axi_dmac_chan* %0, %struct.axi_dmac_chan** %2, align 8
  %9 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %10 = call %struct.axi_dmac* @chan_to_axi_dmac(%struct.axi_dmac_chan* %9)
  store %struct.axi_dmac* %10, %struct.axi_dmac** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %12 = load i32, i32* @AXI_DMAC_REG_START_TRANSFER, align 4
  %13 = call i8* @axi_dmac_read(%struct.axi_dmac* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %188

18:                                               ; preds = %1
  %19 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %20 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %19, i32 0, i32 2
  %21 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %20, align 8
  store %struct.axi_dmac_desc* %21, %struct.axi_dmac_desc** %5, align 8
  %22 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %23 = icmp ne %struct.axi_dmac_desc* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %18
  %25 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %26 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %25, i32 0, i32 4
  %27 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %26)
  store %struct.virt_dma_desc* %27, %struct.virt_dma_desc** %4, align 8
  %28 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %29 = icmp ne %struct.virt_dma_desc* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %188

31:                                               ; preds = %24
  %32 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %33 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %32, i32 0, i32 0
  %34 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %35 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %34, i32 0, i32 3
  %36 = call i32 @list_move_tail(i32* %33, i32* %35)
  %37 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %38 = call %struct.axi_dmac_desc* @to_axi_dmac_desc(%struct.virt_dma_desc* %37)
  store %struct.axi_dmac_desc* %38, %struct.axi_dmac_desc** %5, align 8
  br label %39

39:                                               ; preds = %31, %18
  %40 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %41 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %40, i32 0, i32 5
  %42 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %41, align 8
  %43 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %44 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %42, i64 %45
  store %struct.axi_dmac_sg* %46, %struct.axi_dmac_sg** %6, align 8
  %47 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %48 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %47, i32 0, i32 7
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** @AXI_DMAC_SG_UNUSED, align 8
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %54 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %188

55:                                               ; preds = %39
  %56 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %57 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %61 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %64 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %55
  %69 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %70 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68, %55
  %74 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %75 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %80 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %84

81:                                               ; preds = %73
  %82 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %83 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %82, i32 0, i32 2
  store %struct.axi_dmac_desc* null, %struct.axi_dmac_desc** %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* @AXI_DMAC_FLAG_LAST, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %92

88:                                               ; preds = %68
  %89 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %90 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %91 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %90, i32 0, i32 2
  store %struct.axi_dmac_desc* %89, %struct.axi_dmac_desc** %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %94 = load i32, i32* @AXI_DMAC_REG_TRANSFER_ID, align 4
  %95 = call i8* @axi_dmac_read(%struct.axi_dmac* %93, i32 %94)
  %96 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %97 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  %98 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %99 = call i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %92
  %102 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %103 = load i32, i32* @AXI_DMAC_REG_DEST_ADDRESS, align 4
  %104 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %105 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @axi_dmac_write(%struct.axi_dmac* %102, i32 %103, i32 %106)
  %108 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %109 = load i32, i32* @AXI_DMAC_REG_DEST_STRIDE, align 4
  %110 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %111 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @axi_dmac_write(%struct.axi_dmac* %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %101, %92
  %115 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %116 = call i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %120 = load i32, i32* @AXI_DMAC_REG_SRC_ADDRESS, align 4
  %121 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %122 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @axi_dmac_write(%struct.axi_dmac* %119, i32 %120, i32 %123)
  %125 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %126 = load i32, i32* @AXI_DMAC_REG_SRC_STRIDE, align 4
  %127 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %128 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @axi_dmac_write(%struct.axi_dmac* %125, i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %118, %114
  %132 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %133 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %131
  %137 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %138 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  %142 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %143 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %141
  %149 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %5, align 8
  %150 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @AXI_DMAC_FLAG_CYCLIC, align 4
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %153, %148, %141, %136, %131
  %158 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %2, align 8
  %159 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @AXI_DMAC_FLAG_PARTIAL_REPORT, align 4
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %162, %157
  %167 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %168 = load i32, i32* @AXI_DMAC_REG_X_LENGTH, align 4
  %169 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %170 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 1
  %173 = call i32 @axi_dmac_write(%struct.axi_dmac* %167, i32 %168, i32 %172)
  %174 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %175 = load i32, i32* @AXI_DMAC_REG_Y_LENGTH, align 4
  %176 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %6, align 8
  %177 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  %180 = call i32 @axi_dmac_write(%struct.axi_dmac* %174, i32 %175, i32 %179)
  %181 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %182 = load i32, i32* @AXI_DMAC_REG_FLAGS, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @axi_dmac_write(%struct.axi_dmac* %181, i32 %182, i32 %183)
  %185 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %186 = load i32, i32* @AXI_DMAC_REG_START_TRANSFER, align 4
  %187 = call i32 @axi_dmac_write(%struct.axi_dmac* %185, i32 %186, i32 1)
  br label %188

188:                                              ; preds = %166, %52, %30, %17
  ret void
}

declare dso_local %struct.axi_dmac* @chan_to_axi_dmac(%struct.axi_dmac_chan*) #1

declare dso_local i8* @axi_dmac_read(%struct.axi_dmac*, i32) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local %struct.axi_dmac_desc* @to_axi_dmac_desc(%struct.virt_dma_desc*) #1

declare dso_local i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan*) #1

declare dso_local i32 @axi_dmac_write(%struct.axi_dmac*, i32, i32) #1

declare dso_local i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
