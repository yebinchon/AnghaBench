; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { i64, i32, i32, %struct.TYPE_4__*, %struct.d40_phy_res*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32**, i32** }
%struct.d40_phy_res = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"phy == null\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@D40_ALLOC_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"channel already free\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_MEM_TO_MEM = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Unknown direction\0A\00", align 1
@D40_DMA_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"stop failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*)* @d40_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_free_dma(%struct.d40_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d40_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.d40_phy_res*, align 8
  %7 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %9 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @D40_TYPE_TO_EVENT(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %14 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %13, i32 0, i32 4
  %15 = load %struct.d40_phy_res*, %struct.d40_phy_res** %14, align 8
  store %struct.d40_phy_res* %15, %struct.d40_phy_res** %6, align 8
  %16 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %17 = call i32 @d40_term_all(%struct.d40_chan* %16)
  %18 = load %struct.d40_phy_res*, %struct.d40_phy_res** %6, align 8
  %19 = icmp eq %struct.d40_phy_res* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %22 = call i32 @chan_err(%struct.d40_chan* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %160

25:                                               ; preds = %1
  %26 = load %struct.d40_phy_res*, %struct.d40_phy_res** %6, align 8
  %27 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @D40_ALLOC_FREE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.d40_phy_res*, %struct.d40_phy_res** %6, align 8
  %33 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @D40_ALLOC_FREE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %39 = call i32 @chan_err(%struct.d40_chan* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %160

42:                                               ; preds = %31, %25
  %43 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %44 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %51 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %42
  store i32 0, i32* %7, align 4
  br label %71

57:                                               ; preds = %49
  %58 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %59 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %7, align 4
  br label %70

65:                                               ; preds = %57
  %66 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %67 = call i32 @chan_err(%struct.d40_chan* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %160

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %56
  %72 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %73 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pm_runtime_get_sync(i32 %76)
  %78 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %79 = load i32, i32* @D40_DMA_STOP, align 4
  %80 = call i32 @d40_channel_execute_command(%struct.d40_chan* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %85 = call i32 @chan_err(%struct.d40_chan* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %146

86:                                               ; preds = %71
  %87 = load %struct.d40_phy_res*, %struct.d40_phy_res** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %90 = call i64 @chan_is_logical(%struct.d40_chan* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  br label %95

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %94 ]
  %97 = call i32 @d40_alloc_mask_free(%struct.d40_phy_res* %87, i32 %88, i32 %96)
  %98 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %99 = call i64 @chan_is_logical(%struct.d40_chan* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %103 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32**, i32*** %105, align 8
  %107 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %108 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32*, i32** %106, i64 %109
  store i32* null, i32** %110, align 8
  br label %121

111:                                              ; preds = %95
  %112 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %113 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load %struct.d40_phy_res*, %struct.d40_phy_res** %6, align 8
  %118 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32*, i32** %116, i64 %119
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %111, %101
  %122 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %123 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %128 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @pm_runtime_mark_last_busy(i32 %131)
  %133 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %134 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %133, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @pm_runtime_put_autosuspend(i32 %137)
  br label %139

139:                                              ; preds = %126, %121
  %140 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %141 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %140, i32 0, i32 1
  store i32 0, i32* %141, align 8
  %142 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %143 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %142, i32 0, i32 4
  store %struct.d40_phy_res* null, %struct.d40_phy_res** %143, align 8
  %144 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %145 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %144, i32 0, i32 2
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %83
  %147 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %148 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %147, i32 0, i32 3
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @pm_runtime_mark_last_busy(i32 %151)
  %153 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %154 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %153, i32 0, i32 3
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @pm_runtime_put_autosuspend(i32 %157)
  %159 = load i32, i32* %4, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %146, %65, %37, %20
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @D40_TYPE_TO_EVENT(i32) #1

declare dso_local i32 @d40_term_all(%struct.d40_chan*) #1

declare dso_local i32 @chan_err(%struct.d40_chan*, i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @d40_channel_execute_command(%struct.d40_chan*, i32) #1

declare dso_local i32 @d40_alloc_mask_free(%struct.d40_phy_res*, i32, i32) #1

declare dso_local i64 @chan_is_logical(%struct.d40_chan*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
