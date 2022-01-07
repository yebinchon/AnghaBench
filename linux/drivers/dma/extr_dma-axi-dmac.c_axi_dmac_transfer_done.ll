; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_transfer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_transfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dmac_chan = type { i64 }
%struct.axi_dmac_desc = type { i64, i64, %struct.TYPE_3__, i64, %struct.axi_dmac_sg* }
%struct.TYPE_3__ = type { i32 }
%struct.axi_dmac_sg = type { i64, i32, i64 }

@AXI_DMAC_FLAG_PARTIAL_XFER_DONE = common dso_local global i32 0, align 4
@AXI_DMAC_SG_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axi_dmac_chan*, i32)* @axi_dmac_transfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_dmac_transfer_done(%struct.axi_dmac_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axi_dmac_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.axi_dmac_desc*, align 8
  %7 = alloca %struct.axi_dmac_sg*, align 8
  %8 = alloca i32, align 4
  store %struct.axi_dmac_chan* %0, %struct.axi_dmac_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %10 = call %struct.axi_dmac_desc* @axi_dmac_active_desc(%struct.axi_dmac_chan* %9)
  store %struct.axi_dmac_desc* %10, %struct.axi_dmac_desc** %6, align 8
  %11 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %12 = icmp ne %struct.axi_dmac_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

14:                                               ; preds = %2
  %15 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %16 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AXI_DMAC_FLAG_PARTIAL_XFER_DONE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %26 = call i32 @axi_dmac_dequeue_partial_xfers(%struct.axi_dmac_chan* %25)
  br label %27

27:                                               ; preds = %24, %19, %14
  br label %28

28:                                               ; preds = %117, %27
  %29 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %30 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %29, i32 0, i32 4
  %31 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %30, align 8
  %32 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %33 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %31, i64 %34
  store %struct.axi_dmac_sg* %35, %struct.axi_dmac_sg** %7, align 8
  %36 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %37 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AXI_DMAC_SG_UNUSED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %120

42:                                               ; preds = %28
  %43 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %44 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @BIT(i64 %45)
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %120

51:                                               ; preds = %42
  %52 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %53 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* @AXI_DMAC_SG_UNUSED, align 8
  %57 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %58 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %60 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %65 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %51
  %67 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %68 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %73 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %74 = call i32 @axi_dmac_compute_residue(%struct.axi_dmac_chan* %72, %struct.axi_dmac_desc* %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %77 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %82 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %81, i32 0, i32 2
  %83 = call i32 @vchan_cyclic_callback(%struct.TYPE_3__* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %86 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %89 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %84
  %93 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %94 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %92, %84
  %98 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %99 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %104 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  br label %115

105:                                              ; preds = %97
  %106 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %107 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = call i32 @list_del(i32* %108)
  %110 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %111 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %110, i32 0, i32 2
  %112 = call i32 @vchan_cookie_complete(%struct.TYPE_3__* %111)
  %113 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %114 = call %struct.axi_dmac_desc* @axi_dmac_active_desc(%struct.axi_dmac_chan* %113)
  store %struct.axi_dmac_desc* %114, %struct.axi_dmac_desc** %6, align 8
  br label %115

115:                                              ; preds = %105, %102
  br label %116

116:                                              ; preds = %115, %92
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %6, align 8
  %119 = icmp ne %struct.axi_dmac_desc* %118, null
  br i1 %119, label %28, label %120

120:                                              ; preds = %117, %50, %41
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %13
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.axi_dmac_desc* @axi_dmac_active_desc(%struct.axi_dmac_chan*) #1

declare dso_local i32 @axi_dmac_dequeue_partial_xfers(%struct.axi_dmac_chan*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @axi_dmac_compute_residue(%struct.axi_dmac_chan*, %struct.axi_dmac_desc*) #1

declare dso_local i32 @vchan_cyclic_callback(%struct.TYPE_3__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
