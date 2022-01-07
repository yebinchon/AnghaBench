; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i64, i32* }
%struct.of_dma = type { %struct.st_fdma_dev* }
%struct.st_fdma_dev = type { %struct.TYPE_7__*, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.st_fdma_chan = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ST_FDMA_TYPE_FREE_RUN = common dso_local global i32 0, align 4
@FDMA_REQ_CTRL_CFG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"xlate req_line:%d type:%d req_ctrl:%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @st_fdma_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @st_fdma_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.st_fdma_dev*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.st_fdma_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %10 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %11 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %10, i32 0, i32 0
  %12 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %11, align 8
  store %struct.st_fdma_dev* %12, %struct.st_fdma_dev** %6, align 8
  %13 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.dma_chan* @ERR_PTR(i32 %19)
  store %struct.dma_chan* %20, %struct.dma_chan** %3, align 8
  br label %170

21:                                               ; preds = %2
  %22 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %6, align 8
  %23 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.dma_chan* @ERR_PTR(i32 %34)
  store %struct.dma_chan* %35, %struct.dma_chan** %3, align 8
  br label %170

36:                                               ; preds = %21
  %37 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %6, align 8
  %38 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rproc_boot(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.dma_chan* @ERR_PTR(i32 %49)
  store %struct.dma_chan* %50, %struct.dma_chan** %3, align 8
  br label %170

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.dma_chan* @ERR_PTR(i32 %55)
  store %struct.dma_chan* %56, %struct.dma_chan** %3, align 8
  br label %170

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %6, align 8
  %60 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %59, i32 0, i32 2
  %61 = call %struct.dma_chan* @dma_get_any_slave_channel(%struct.TYPE_8__* %60)
  store %struct.dma_chan* %61, %struct.dma_chan** %7, align 8
  %62 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %63 = icmp ne %struct.dma_chan* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %162

65:                                               ; preds = %58
  %66 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %67 = call %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan* %66)
  store %struct.st_fdma_chan* %67, %struct.st_fdma_chan** %8, align 8
  %68 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %69 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %72 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %75 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %80 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %83 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @ST_FDMA_TYPE_FREE_RUN, align 4
  %86 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %87 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 8
  %89 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %90 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %104

93:                                               ; preds = %65
  %94 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %95 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FDMA_REQ_CTRL_CFG_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %102 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %93, %65
  %105 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %106 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 2
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %111 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %116 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  store i32 %114, i32* %117, align 8
  br label %118

118:                                              ; preds = %109, %104
  %119 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %120 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ST_FDMA_TYPE_FREE_RUN, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %127 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %144

128:                                              ; preds = %118
  %129 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %130 = call i32 @st_fdma_dreq_get(%struct.st_fdma_chan* %129)
  %131 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %132 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %134 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @IS_ERR_VALUE(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %128
  %139 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %140 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.dma_chan* @ERR_PTR(i32 %141)
  store %struct.dma_chan* %142, %struct.dma_chan** %7, align 8
  br label %162

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %125
  %145 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %6, align 8
  %146 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %149 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %153 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %157 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dev_dbg(i32 %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %151, i32 %155, i32 %159)
  %161 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  store %struct.dma_chan* %161, %struct.dma_chan** %3, align 8
  br label %170

162:                                              ; preds = %138, %64
  %163 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %6, align 8
  %164 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @rproc_shutdown(i32 %167)
  %169 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  store %struct.dma_chan* %169, %struct.dma_chan** %3, align 8
  br label %170

170:                                              ; preds = %162, %144, %54, %47, %32, %17
  %171 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %171
}

declare dso_local %struct.dma_chan* @ERR_PTR(i32) #1

declare dso_local i32 @rproc_boot(i32) #1

declare dso_local %struct.dma_chan* @dma_get_any_slave_channel(%struct.TYPE_8__*) #1

declare dso_local %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @st_fdma_dreq_get(%struct.st_fdma_chan*) #1

declare dso_local i64 @IS_ERR_VALUE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rproc_shutdown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
