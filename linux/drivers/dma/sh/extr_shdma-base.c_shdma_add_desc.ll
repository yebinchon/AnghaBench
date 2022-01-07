; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_add_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_add_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shdma_desc = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.shdma_chan = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.shdma_dev = type { %struct.shdma_ops* }
%struct.shdma_ops = type { i32 (%struct.shdma_chan.0*, %struct.shdma_desc.1*, i64, i64, i64*)* }
%struct.shdma_chan.0 = type opaque
%struct.shdma_desc.1 = type opaque

@.str = private unnamed_addr constant [35 x i8] c"No free link descriptor available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"chaining (%zu/%zu)@%pad -> %pad with %p, cookie %d\0A\00", align 1
@DESC_PREPARED = common dso_local global i32 0, align 4
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.shdma_desc* (%struct.shdma_chan*, i64, i64*, i64*, i64*, %struct.shdma_desc**, i32)* @shdma_add_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.shdma_desc* @shdma_add_desc(%struct.shdma_chan* %0, i64 %1, i64* %2, i64* %3, i64* %4, %struct.shdma_desc** %5, i32 %6) #0 {
  %8 = alloca %struct.shdma_desc*, align 8
  %9 = alloca %struct.shdma_chan*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.shdma_desc**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.shdma_dev*, align 8
  %17 = alloca %struct.shdma_ops*, align 8
  %18 = alloca %struct.shdma_desc*, align 8
  %19 = alloca i64, align 8
  store %struct.shdma_chan* %0, %struct.shdma_chan** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store %struct.shdma_desc** %5, %struct.shdma_desc*** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.shdma_chan*, %struct.shdma_chan** %9, align 8
  %21 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.shdma_dev* @to_shdma_dev(i32 %23)
  store %struct.shdma_dev* %24, %struct.shdma_dev** %16, align 8
  %25 = load %struct.shdma_dev*, %struct.shdma_dev** %16, align 8
  %26 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %25, i32 0, i32 0
  %27 = load %struct.shdma_ops*, %struct.shdma_ops** %26, align 8
  store %struct.shdma_ops* %27, %struct.shdma_ops** %17, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %19, align 8
  %30 = load i64, i64* %19, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  store %struct.shdma_desc* null, %struct.shdma_desc** %8, align 8
  br label %132

33:                                               ; preds = %7
  %34 = load %struct.shdma_chan*, %struct.shdma_chan** %9, align 8
  %35 = call %struct.shdma_desc* @shdma_get_desc(%struct.shdma_chan* %34)
  store %struct.shdma_desc* %35, %struct.shdma_desc** %18, align 8
  %36 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %37 = icmp ne %struct.shdma_desc* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.shdma_chan*, %struct.shdma_chan** %9, align 8
  %40 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.shdma_desc* null, %struct.shdma_desc** %8, align 8
  br label %132

43:                                               ; preds = %33
  %44 = load %struct.shdma_ops*, %struct.shdma_ops** %17, align 8
  %45 = getelementptr inbounds %struct.shdma_ops, %struct.shdma_ops* %44, i32 0, i32 0
  %46 = load i32 (%struct.shdma_chan.0*, %struct.shdma_desc.1*, i64, i64, i64*)*, i32 (%struct.shdma_chan.0*, %struct.shdma_desc.1*, i64, i64, i64*)** %45, align 8
  %47 = load %struct.shdma_chan*, %struct.shdma_chan** %9, align 8
  %48 = bitcast %struct.shdma_chan* %47 to %struct.shdma_chan.0*
  %49 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %50 = bitcast %struct.shdma_desc* %49 to %struct.shdma_desc.1*
  %51 = load i64*, i64** %12, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i32 %46(%struct.shdma_chan.0* %48, %struct.shdma_desc.1* %50, i64 %52, i64 %54, i64* %19)
  %56 = load %struct.shdma_desc**, %struct.shdma_desc*** %14, align 8
  %57 = load %struct.shdma_desc*, %struct.shdma_desc** %56, align 8
  %58 = icmp ne %struct.shdma_desc* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  %62 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %63 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %66 = load %struct.shdma_desc**, %struct.shdma_desc*** %14, align 8
  store %struct.shdma_desc* %65, %struct.shdma_desc** %66, align 8
  br label %73

67:                                               ; preds = %43
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %71 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.shdma_chan*, %struct.shdma_chan** %9, align 8
  %75 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %19, align 8
  %78 = load i64*, i64** %13, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %12, align 8
  %81 = load i64*, i64** %11, align 8
  %82 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %83 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %82, i32 0, i32 2
  %84 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %85 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %77, i64 %79, i64* %80, i64* %81, %struct.TYPE_4__* %83, i32 %87)
  %89 = load i32, i32* @DESC_PREPARED, align 4
  %90 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %91 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %94 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %98 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  %100 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load i64*, i64** %13, align 8
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %103, %101
  store i64 %104, i64* %102, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %73
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108, %73
  %113 = load i64, i64* %19, align 8
  %114 = load i64*, i64** %12, align 8
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, %113
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %112, %108
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121, %117
  %126 = load i64, i64* %19, align 8
  %127 = load i64*, i64** %11, align 8
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, %126
  store i64 %129, i64* %127, align 8
  br label %130

130:                                              ; preds = %125, %121
  %131 = load %struct.shdma_desc*, %struct.shdma_desc** %18, align 8
  store %struct.shdma_desc* %131, %struct.shdma_desc** %8, align 8
  br label %132

132:                                              ; preds = %130, %38, %32
  %133 = load %struct.shdma_desc*, %struct.shdma_desc** %8, align 8
  ret %struct.shdma_desc* %133
}

declare dso_local %struct.shdma_dev* @to_shdma_dev(i32) #1

declare dso_local %struct.shdma_desc* @shdma_get_desc(%struct.shdma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64*, i64*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
