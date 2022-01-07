; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64, i32, i64 }
%struct.dma_chan = type { i32 }
%struct.mmp_pdma_chan = type { i64, i32, i64, %struct.mmp_pdma_desc_sw*, i32, i32 }
%struct.mmp_pdma_desc_sw = type { i32, %struct.dma_async_tx_descriptor, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@PDMA_MAX_DESC_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unsupported direction for cyclic DMA\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no memory for desc\0A\00", align 1
@DCMD_ENDIRQEN = common dso_local global i64 0, align 8
@DCMD_LENGTH = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @mmp_pdma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mmp_pdma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.mmp_pdma_chan*, align 8
  %15 = alloca %struct.mmp_pdma_desc_sw*, align 8
  %16 = alloca %struct.mmp_pdma_desc_sw*, align 8
  %17 = alloca %struct.mmp_pdma_desc_sw*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.mmp_pdma_desc_sw* null, %struct.mmp_pdma_desc_sw** %15, align 8
  store %struct.mmp_pdma_desc_sw* null, %struct.mmp_pdma_desc_sw** %16, align 8
  %20 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %21 = icmp ne %struct.dma_chan* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22, %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %174

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = urem i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %174

35:                                               ; preds = %29
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @PDMA_MAX_DESC_BYTES, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %174

40:                                               ; preds = %35
  %41 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %42 = call %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan* %41)
  store %struct.mmp_pdma_chan* %42, %struct.mmp_pdma_chan** %14, align 8
  %43 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %44 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %45 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %44, i32 0, i32 5
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @mmp_pdma_config_write(%struct.dma_chan* %43, i32* %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  switch i32 %48, label %59 [
    i32 128, label %49
    i32 129, label %54
  ]

49:                                               ; preds = %40
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %18, align 8
  %51 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %52 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %19, align 8
  br label %64

54:                                               ; preds = %40
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %19, align 8
  %56 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %57 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %18, align 8
  br label %64

59:                                               ; preds = %40
  %60 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %61 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %174

64:                                               ; preds = %54, %49
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %67 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %140, %64
  %69 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %70 = call %struct.mmp_pdma_desc_sw* @mmp_pdma_alloc_descriptor(%struct.mmp_pdma_chan* %69)
  store %struct.mmp_pdma_desc_sw* %70, %struct.mmp_pdma_desc_sw** %17, align 8
  %71 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %72 = icmp ne %struct.mmp_pdma_desc_sw* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %75 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %165

78:                                               ; preds = %68
  %79 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %80 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DCMD_ENDIRQEN, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* @DCMD_LENGTH, align 8
  %85 = load i64, i64* %11, align 8
  %86 = and i64 %84, %85
  %87 = or i64 %83, %86
  %88 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %89 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %93 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load i64, i64* %19, align 8
  %96 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %97 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store i64 %95, i64* %98, align 8
  %99 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %100 = icmp ne %struct.mmp_pdma_desc_sw* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %78
  %102 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  store %struct.mmp_pdma_desc_sw* %102, %struct.mmp_pdma_desc_sw** %15, align 8
  br label %111

103:                                              ; preds = %78
  %104 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %105 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %16, align 8
  %109 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %103, %101
  %112 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %113 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %116 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %115, i32 0, i32 1
  %117 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %116)
  %118 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  store %struct.mmp_pdma_desc_sw* %118, %struct.mmp_pdma_desc_sw** %16, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %10, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %10, align 8
  %122 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %123 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %130

126:                                              ; preds = %111
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %18, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %18, align 8
  br label %134

130:                                              ; preds = %111
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %19, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %19, align 8
  br label %134

134:                                              ; preds = %130, %126
  %135 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %136 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %135, i32 0, i32 3
  %137 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %138 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %137, i32 0, i32 0
  %139 = call i32 @list_add_tail(i32* %136, i32* %138)
  br label %140

140:                                              ; preds = %134
  %141 = load i64, i64* %10, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %68, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* %13, align 8
  %145 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %146 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  %148 = load i64, i64* @EBUSY, align 8
  %149 = sub nsw i64 0, %148
  %150 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %151 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %151, i32 0, i32 2
  store i64 %149, i64* %152, align 8
  %153 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %154 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %17, align 8
  %158 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  store i32 %156, i32* %159, align 8
  %160 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %161 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %162 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %161, i32 0, i32 3
  store %struct.mmp_pdma_desc_sw* %160, %struct.mmp_pdma_desc_sw** %162, align 8
  %163 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %164 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %163, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %164, %struct.dma_async_tx_descriptor** %7, align 8
  br label %174

165:                                              ; preds = %73
  %166 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %167 = icmp ne %struct.mmp_pdma_desc_sw* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %14, align 8
  %170 = load %struct.mmp_pdma_desc_sw*, %struct.mmp_pdma_desc_sw** %15, align 8
  %171 = getelementptr inbounds %struct.mmp_pdma_desc_sw, %struct.mmp_pdma_desc_sw* %170, i32 0, i32 0
  %172 = call i32 @mmp_pdma_free_desc_list(%struct.mmp_pdma_chan* %169, i32* %171)
  br label %173

173:                                              ; preds = %168, %165
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %174

174:                                              ; preds = %173, %143, %59, %39, %34, %28
  %175 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %175
}

declare dso_local %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @mmp_pdma_config_write(%struct.dma_chan*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.mmp_pdma_desc_sw* @mmp_pdma_alloc_descriptor(%struct.mmp_pdma_chan*) #1

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mmp_pdma_free_desc_list(%struct.mmp_pdma_chan*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
