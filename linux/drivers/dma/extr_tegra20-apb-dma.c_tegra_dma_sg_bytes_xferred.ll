; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_sg_bytes_xferred.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_sg_bytes_xferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tegra_dma_sg_req = type { i32, i64, i32 }

@TEGRA_APBDMA_CHAN_WORD_TRANSFER = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_STATUS = common dso_local global i32 0, align 4
@TEGRA_APBDMA_STATUS_ISE_EOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dma_channel*, %struct.tegra_dma_sg_req*)* @tegra_dma_sg_bytes_xferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dma_sg_bytes_xferred(%struct.tegra_dma_channel* %0, %struct.tegra_dma_sg_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_dma_channel*, align 8
  %5 = alloca %struct.tegra_dma_sg_req*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %4, align 8
  store %struct.tegra_dma_sg_req* %1, %struct.tegra_dma_sg_req** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %5, align 8
  %9 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %8, i32 0, i32 2
  %10 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %10, i32 0, i32 1
  %12 = call i32 @list_is_first(i32* %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

15:                                               ; preds = %2
  %16 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %26 = load i32, i32* @TEGRA_APBDMA_CHAN_WORD_TRANSFER, align 4
  %27 = call i64 @tdc_read(%struct.tegra_dma_channel* %25, i32 %26)
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %15
  %29 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %30 = load i32, i32* @TEGRA_APBDMA_CHAN_STATUS, align 4
  %31 = call i64 @tdc_read(%struct.tegra_dma_channel* %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @TEGRA_APBDMA_STATUS_ISE_EOC, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %5, align 8
  %49 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %3, align 4
  br label %91

51:                                               ; preds = %42
  %52 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %53 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @get_current_xferred_count(%struct.tegra_dma_channel* %52, %struct.tegra_dma_sg_req* %53, i64 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %51
  %59 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %5, align 8
  %60 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %5, align 8
  %65 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub i32 %66, 4
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %63, %58
  br label %88

70:                                               ; preds = %51
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %5, align 8
  %73 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = call i32 @WARN_ON_ONCE(i32 1)
  %78 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %5, align 8
  %79 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub i32 %80, 4
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %7, align 8
  br label %87

83:                                               ; preds = %70
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %5, align 8
  %86 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %76
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %47, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @list_is_first(i32*, i32*) #1

declare dso_local i64 @tdc_read(%struct.tegra_dma_channel*, i32) #1

declare dso_local i64 @get_current_xferred_count(%struct.tegra_dma_channel*, %struct.tegra_dma_sg_req*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
