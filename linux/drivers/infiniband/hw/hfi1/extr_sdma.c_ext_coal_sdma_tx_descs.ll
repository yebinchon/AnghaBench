; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_ext_coal_sdma_tx_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_ext_coal_sdma_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdma_txreq = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32 }

@SDMA_MAP_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDMA_MAP_PAGE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MAX_DESC = common dso_local global i32 0, align 4
@SDMA_MAP_SINGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext_coal_sdma_tx_descs(%struct.hfi1_devdata* %0, %struct.sdma_txreq* %1, i32 %2, i8* %3, %struct.page* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca %struct.sdma_txreq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %9, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store %struct.page* %4, %struct.page** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %20 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %21 = call i32 @_extend_sdma_tx_descs(%struct.hfi1_devdata* %19, %struct.sdma_txreq* %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %26 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %27 = call i32 @__sdma_txclean(%struct.hfi1_devdata* %25, %struct.sdma_txreq* %26)
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %8, align 4
  br label %173

29:                                               ; preds = %7
  %30 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %31 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %172

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @SDMA_MAP_NONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %40 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %41 = call i32 @__sdma_txclean(%struct.hfi1_devdata* %39, %struct.sdma_txreq* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %173

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @SDMA_MAP_PAGE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %13, align 8
  %50 = call i8* @kmap(%struct.page* %49)
  store i8* %50, i8** %12, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr i8, i8* %52, i64 %51
  store i8* %53, i8** %12, align 8
  br label %68

54:                                               ; preds = %44
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @WARN_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %63 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %64 = call i32 @__sdma_txclean(%struct.hfi1_devdata* %62, %struct.sdma_txreq* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %173

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %70 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %73 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @memcpy(i32 %75, i8* %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %81 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @SDMA_MAP_PAGE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load %struct.page*, %struct.page** %13, align 8
  %89 = call i32 @kunmap(%struct.page* %88)
  br label %90

90:                                               ; preds = %87, %68
  %91 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %92 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %95 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %173

100:                                              ; preds = %90
  %101 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %102 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = and i64 %104, 3
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %100
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 4, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %16, align 4
  %114 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %115 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %118 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %116, %119
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @memset(i32 %120, i32 0, i32 %121)
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %125 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %130 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %109, %100
  %134 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %135 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %139 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %142 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DMA_TO_DEVICE, align 4
  %145 = call i32 @dma_map_single(i32* %137, i32 %140, i32 %143, i32 %144)
  store i32 %145, i32* %18, align 4
  %146 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %147 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @dma_mapping_error(i32* %149, i32 %150)
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %133
  %155 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %156 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %157 = call i32 @__sdma_txclean(%struct.hfi1_devdata* %155, %struct.sdma_txreq* %156)
  %158 = load i32, i32* @ENOSPC, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %8, align 4
  br label %173

160:                                              ; preds = %133
  %161 = load i32, i32* @MAX_DESC, align 4
  %162 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %163 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  %164 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %165 = load i32, i32* @SDMA_MAP_SINGLE, align 4
  %166 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %167 = load i32, i32* %18, align 4
  %168 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %169 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @_sdma_txadd_daddr(%struct.hfi1_devdata* %164, i32 %165, %struct.sdma_txreq* %166, i32 %167, i32 %170)
  store i32 %171, i32* %8, align 4
  br label %173

172:                                              ; preds = %29
  store i32 1, i32* %8, align 4
  br label %173

173:                                              ; preds = %172, %160, %154, %99, %61, %38, %24
  %174 = load i32, i32* %8, align 4
  ret i32 %174
}

declare dso_local i32 @_extend_sdma_tx_descs(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

declare dso_local i32 @__sdma_txclean(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @_sdma_txadd_daddr(%struct.hfi1_devdata*, i32, %struct.sdma_txreq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
