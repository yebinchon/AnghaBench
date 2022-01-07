; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_get_ctrl_attribs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_get_ctrl_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.ocrdma_dma_mem = type { i32, i32, i64 }
%struct.ocrdma_mqe = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ocrdma_get_ctrl_attribs_rsp = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.mgmt_hba_attribs }
%struct.mgmt_hba_attribs = type { i32, i32 }
%struct.ocrdma_mbx_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@OCRDMA_MQE_HDR_SGE_CNT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MQE_HDR_SGE_CNT_MASK = common dso_local global i32 0, align 4
@OCRDMA_CMD_GET_CTRL_ATTRIBUTES = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_HBA_ATTRB_PTNUM_MASK = common dso_local global i32 0, align 4
@OCRDMA_HBA_ATTRB_PTNUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_mbx_get_ctrl_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_get_ctrl_attribs(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_dma_mem, align 8
  %6 = alloca %struct.ocrdma_mqe*, align 8
  %7 = alloca %struct.ocrdma_get_ctrl_attribs_rsp*, align 8
  %8 = alloca %struct.mgmt_hba_attribs*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ocrdma_mqe* @kzalloc(i32 16, i32 %11)
  store %struct.ocrdma_mqe* %12, %struct.ocrdma_mqe** %6, align 8
  %13 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %14 = icmp ne %struct.ocrdma_mqe* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %135

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 0
  store i32 8, i32* %18, align 8
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @dma_alloc_coherent(i32* %23, i32 %25, i32* %26, i32 %27)
  %29 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %17
  br label %131

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %38 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @OCRDMA_MQE_HDR_SGE_CNT_SHIFT, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* @OCRDMA_MQE_HDR_SGE_CNT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %45 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %54 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store i8* %52, i8** %59, align 8
  %60 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @upper_32_bits(i32 %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %65 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i8* %63, i8** %70, align 8
  %71 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %74 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  %80 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.ocrdma_mbx_hdr*
  %83 = load i32, i32* @OCRDMA_CMD_GET_CTRL_ATTRIBUTES, align 4
  %84 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %85 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr* %82, i32 %83, i32 %84, i32 %86)
  %88 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %89 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %90 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ocrdma_nonemb_mbx_cmd(%struct.ocrdma_dev* %88, %struct.ocrdma_mqe* %89, i64 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %118, label %95

95:                                               ; preds = %34
  %96 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.ocrdma_get_ctrl_attribs_rsp*
  store %struct.ocrdma_get_ctrl_attribs_rsp* %98, %struct.ocrdma_get_ctrl_attribs_rsp** %7, align 8
  %99 = load %struct.ocrdma_get_ctrl_attribs_rsp*, %struct.ocrdma_get_ctrl_attribs_rsp** %7, align 8
  %100 = getelementptr inbounds %struct.ocrdma_get_ctrl_attribs_rsp, %struct.ocrdma_get_ctrl_attribs_rsp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store %struct.mgmt_hba_attribs* %101, %struct.mgmt_hba_attribs** %8, align 8
  %102 = load %struct.mgmt_hba_attribs*, %struct.mgmt_hba_attribs** %8, align 8
  %103 = getelementptr inbounds %struct.mgmt_hba_attribs, %struct.mgmt_hba_attribs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @OCRDMA_HBA_ATTRB_PTNUM_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @OCRDMA_HBA_ATTRB_PTNUM_SHIFT, align 4
  %108 = ashr i32 %106, %107
  %109 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %110 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %112 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.mgmt_hba_attribs*, %struct.mgmt_hba_attribs** %8, align 8
  %115 = getelementptr inbounds %struct.mgmt_hba_attribs, %struct.mgmt_hba_attribs* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @strlcpy(i32 %113, i32 %116, i32 4)
  br label %118

118:                                              ; preds = %95, %34
  %119 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %120 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.ocrdma_dma_mem, %struct.ocrdma_dma_mem* %5, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dma_free_coherent(i32* %123, i32 %125, i64 %127, i32 %129)
  br label %131

131:                                              ; preds = %118, %33
  %132 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %6, align 8
  %133 = call i32 @kfree(%struct.ocrdma_mqe* %132)
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %15
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.ocrdma_mqe* @kzalloc(i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_nonemb_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*, i64) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_mqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
