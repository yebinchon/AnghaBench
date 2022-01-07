; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.falcon = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FALCON_DMACTL = common dso_local global i64 0, align 8
@FALCON_DMACTL_IMEM_SCRUBBING = common dso_local global i32 0, align 4
@FALCON_DMACTL_DMEM_SCRUBBING = common dso_local global i32 0, align 4
@FALCON_DMATRFBASE = common dso_local global i64 0, align 8
@FALCON_MEMORY_DATA = common dso_local global i32 0, align 4
@FALCON_MEMORY_IMEM = common dso_local global i32 0, align 4
@FALCON_IRQMSET_SWGEN1 = common dso_local global i32 0, align 4
@FALCON_IRQMSET_SWGEN0 = common dso_local global i32 0, align 4
@FALCON_IRQMSET_EXTERR = common dso_local global i32 0, align 4
@FALCON_IRQMSET_HALT = common dso_local global i32 0, align 4
@FALCON_IRQMSET_WDTMR = common dso_local global i32 0, align 4
@FALCON_IRQMSET = common dso_local global i64 0, align 8
@FALCON_IRQDEST_SWGEN1 = common dso_local global i32 0, align 4
@FALCON_IRQDEST_SWGEN0 = common dso_local global i32 0, align 4
@FALCON_IRQDEST_EXTERR = common dso_local global i32 0, align 4
@FALCON_IRQDEST_HALT = common dso_local global i32 0, align 4
@FALCON_IRQDEST = common dso_local global i64 0, align 8
@FALCON_ITFEN_MTHDEN = common dso_local global i32 0, align 4
@FALCON_ITFEN_CTXEN = common dso_local global i32 0, align 4
@FALCON_ITFEN = common dso_local global i64 0, align 8
@FALCON_BOOTVEC = common dso_local global i64 0, align 8
@FALCON_CPUCTL_STARTCPU = common dso_local global i32 0, align 4
@FALCON_CPUCTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Falcon boot failed due to timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_boot(%struct.falcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.falcon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.falcon* %0, %struct.falcon** %3, align 8
  %7 = load %struct.falcon*, %struct.falcon** %3, align 8
  %8 = getelementptr inbounds %struct.falcon, %struct.falcon* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %134

15:                                               ; preds = %1
  %16 = load %struct.falcon*, %struct.falcon** %3, align 8
  %17 = getelementptr inbounds %struct.falcon, %struct.falcon* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FALCON_DMACTL, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @FALCON_DMACTL_IMEM_SCRUBBING, align 4
  %24 = load i32, i32* @FALCON_DMACTL_DMEM_SCRUBBING, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @readl_poll_timeout(i64 %20, i32 %21, i32 %28, i32 10, i32 10000)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %134

34:                                               ; preds = %15
  %35 = load %struct.falcon*, %struct.falcon** %3, align 8
  %36 = load i64, i64* @FALCON_DMACTL, align 8
  %37 = call i32 @falcon_writel(%struct.falcon* %35, i32 0, i64 %36)
  %38 = load %struct.falcon*, %struct.falcon** %3, align 8
  %39 = load %struct.falcon*, %struct.falcon** %3, align 8
  %40 = getelementptr inbounds %struct.falcon, %struct.falcon* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.falcon*, %struct.falcon** %3, align 8
  %44 = getelementptr inbounds %struct.falcon, %struct.falcon* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %42, %47
  %49 = ashr i32 %48, 8
  %50 = load i64, i64* @FALCON_DMATRFBASE, align 8
  %51 = call i32 @falcon_writel(%struct.falcon* %38, i32 %49, i64 %50)
  store i64 0, i64* %4, align 8
  br label %52

52:                                               ; preds = %72, %34
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.falcon*, %struct.falcon** %3, align 8
  %55 = getelementptr inbounds %struct.falcon, %struct.falcon* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %53, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %52
  %61 = load %struct.falcon*, %struct.falcon** %3, align 8
  %62 = load %struct.falcon*, %struct.falcon** %3, align 8
  %63 = getelementptr inbounds %struct.falcon, %struct.falcon* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* @FALCON_MEMORY_DATA, align 4
  %71 = call i32 @falcon_copy_chunk(%struct.falcon* %61, i64 %68, i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %60
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, 256
  store i64 %74, i64* %4, align 8
  br label %52

75:                                               ; preds = %52
  %76 = load %struct.falcon*, %struct.falcon** %3, align 8
  %77 = load %struct.falcon*, %struct.falcon** %3, align 8
  %78 = getelementptr inbounds %struct.falcon, %struct.falcon* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @FALCON_MEMORY_IMEM, align 4
  %83 = call i32 @falcon_copy_chunk(%struct.falcon* %76, i64 %81, i64 0, i32 %82)
  %84 = load %struct.falcon*, %struct.falcon** %3, align 8
  %85 = call i32 @FALCON_IRQMSET_EXT(i32 255)
  %86 = load i32, i32* @FALCON_IRQMSET_SWGEN1, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @FALCON_IRQMSET_SWGEN0, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @FALCON_IRQMSET_EXTERR, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @FALCON_IRQMSET_HALT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @FALCON_IRQMSET_WDTMR, align 4
  %95 = or i32 %93, %94
  %96 = load i64, i64* @FALCON_IRQMSET, align 8
  %97 = call i32 @falcon_writel(%struct.falcon* %84, i32 %95, i64 %96)
  %98 = load %struct.falcon*, %struct.falcon** %3, align 8
  %99 = call i32 @FALCON_IRQDEST_EXT(i32 255)
  %100 = load i32, i32* @FALCON_IRQDEST_SWGEN1, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @FALCON_IRQDEST_SWGEN0, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @FALCON_IRQDEST_EXTERR, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @FALCON_IRQDEST_HALT, align 4
  %107 = or i32 %105, %106
  %108 = load i64, i64* @FALCON_IRQDEST, align 8
  %109 = call i32 @falcon_writel(%struct.falcon* %98, i32 %107, i64 %108)
  %110 = load %struct.falcon*, %struct.falcon** %3, align 8
  %111 = load i32, i32* @FALCON_ITFEN_MTHDEN, align 4
  %112 = load i32, i32* @FALCON_ITFEN_CTXEN, align 4
  %113 = or i32 %111, %112
  %114 = load i64, i64* @FALCON_ITFEN, align 8
  %115 = call i32 @falcon_writel(%struct.falcon* %110, i32 %113, i64 %114)
  %116 = load %struct.falcon*, %struct.falcon** %3, align 8
  %117 = load i64, i64* @FALCON_BOOTVEC, align 8
  %118 = call i32 @falcon_writel(%struct.falcon* %116, i32 0, i64 %117)
  %119 = load %struct.falcon*, %struct.falcon** %3, align 8
  %120 = load i32, i32* @FALCON_CPUCTL_STARTCPU, align 4
  %121 = load i64, i64* @FALCON_CPUCTL, align 8
  %122 = call i32 @falcon_writel(%struct.falcon* %119, i32 %120, i64 %121)
  %123 = load %struct.falcon*, %struct.falcon** %3, align 8
  %124 = call i32 @falcon_wait_idle(%struct.falcon* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %75
  %128 = load %struct.falcon*, %struct.falcon** %3, align 8
  %129 = getelementptr inbounds %struct.falcon, %struct.falcon* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_err(i32 %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %75
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %127, %32, %12
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @falcon_writel(%struct.falcon*, i32, i64) #1

declare dso_local i32 @falcon_copy_chunk(%struct.falcon*, i64, i64, i32) #1

declare dso_local i32 @FALCON_IRQMSET_EXT(i32) #1

declare dso_local i32 @FALCON_IRQDEST_EXT(i32) #1

declare dso_local i32 @falcon_wait_idle(%struct.falcon*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
