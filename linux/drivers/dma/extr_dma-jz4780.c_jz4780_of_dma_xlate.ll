; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_of_dma_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_of_dma_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.of_dma = type { i32, %struct.jz4780_dma_dev* }
%struct.jz4780_dma_dev = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.jz4780_dma_filter_data = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"device requested non-existent channel %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"device requested unreserved channel %u\0A\00", align 1
@jz4780_dma_filter_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @jz4780_of_dma_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @jz4780_of_dma_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.jz4780_dma_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jz4780_dma_filter_data, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %10 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %9, i32 0, i32 1
  %11 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %10, align 8
  store %struct.jz4780_dma_dev* %11, %struct.jz4780_dma_dev** %6, align 8
  %12 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %6, align 8
  %13 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %98

21:                                               ; preds = %2
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %92

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %6, align 8
  %41 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %39, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %6, align 8
  %48 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %52)
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %98

54:                                               ; preds = %37
  %55 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %6, align 8
  %56 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %6, align 8
  %65 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %98

71:                                               ; preds = %54
  %72 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %6, align 8
  %75 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 %73, i32* %81, align 4
  %82 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %6, align 8
  %83 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %8, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call %struct.dma_chan* @dma_get_slave_channel(i32* %90)
  store %struct.dma_chan* %91, %struct.dma_chan** %3, align 8
  br label %98

92:                                               ; preds = %21
  %93 = load i32, i32* @jz4780_dma_filter_fn, align 4
  %94 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %95 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.dma_chan* @__dma_request_channel(i32* %7, i32 %93, %struct.jz4780_dma_filter_data* %8, i32 %96)
  store %struct.dma_chan* %97, %struct.dma_chan** %3, align 8
  br label %98

98:                                               ; preds = %92, %71, %63, %46, %20
  %99 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %99
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.dma_chan* @dma_get_slave_channel(i32*) #1

declare dso_local %struct.dma_chan* @__dma_request_channel(i32*, i32, %struct.jz4780_dma_filter_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
