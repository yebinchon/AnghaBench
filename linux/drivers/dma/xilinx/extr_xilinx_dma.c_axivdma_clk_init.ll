; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_axivdma_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_axivdma_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"s_axi_lite_aclk\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get axi_aclk (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"m_axi_mm2s_aclk\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"m_axis_mm2s_aclk\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"m_axi_s2mm_aclk\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"s_axis_s2mm_aclk\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to enable axi_clk (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to enable tx_clk (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to enable txs_clk (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to enable rx_clk (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"failed to enable rxs_clk (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.clk**, %struct.clk**, %struct.clk**, %struct.clk**, %struct.clk**)* @axivdma_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axivdma_clk_init(%struct.platform_device* %0, %struct.clk** %1, %struct.clk** %2, %struct.clk** %3, %struct.clk** %4, %struct.clk** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.clk**, align 8
  %10 = alloca %struct.clk**, align 8
  %11 = alloca %struct.clk**, align 8
  %12 = alloca %struct.clk**, align 8
  %13 = alloca %struct.clk**, align 8
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %8, align 8
  store %struct.clk** %1, %struct.clk*** %9, align 8
  store %struct.clk** %2, %struct.clk*** %10, align 8
  store %struct.clk** %3, %struct.clk*** %11, align 8
  store %struct.clk** %4, %struct.clk*** %12, align 8
  store %struct.clk** %5, %struct.clk*** %13, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.clk* @devm_clk_get(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.clk**, %struct.clk*** %9, align 8
  store %struct.clk* %17, %struct.clk** %18, align 8
  %19 = load %struct.clk**, %struct.clk*** %9, align 8
  %20 = load %struct.clk*, %struct.clk** %19, align 8
  %21 = call i64 @IS_ERR(%struct.clk* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %6
  %24 = load %struct.clk**, %struct.clk*** %9, align 8
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  %26 = call i32 @PTR_ERR(%struct.clk* %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %150

32:                                               ; preds = %6
  %33 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call %struct.clk* @devm_clk_get(i32* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.clk**, %struct.clk*** %10, align 8
  store %struct.clk* %35, %struct.clk** %36, align 8
  %37 = load %struct.clk**, %struct.clk*** %10, align 8
  %38 = load %struct.clk*, %struct.clk** %37, align 8
  %39 = call i64 @IS_ERR(%struct.clk* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load %struct.clk**, %struct.clk*** %10, align 8
  store %struct.clk* null, %struct.clk** %42, align 8
  br label %43

43:                                               ; preds = %41, %32
  %44 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call %struct.clk* @devm_clk_get(i32* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.clk**, %struct.clk*** %11, align 8
  store %struct.clk* %46, %struct.clk** %47, align 8
  %48 = load %struct.clk**, %struct.clk*** %11, align 8
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  %50 = call i64 @IS_ERR(%struct.clk* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load %struct.clk**, %struct.clk*** %11, align 8
  store %struct.clk* null, %struct.clk** %53, align 8
  br label %54

54:                                               ; preds = %52, %43
  %55 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call %struct.clk* @devm_clk_get(i32* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.clk**, %struct.clk*** %12, align 8
  store %struct.clk* %57, %struct.clk** %58, align 8
  %59 = load %struct.clk**, %struct.clk*** %12, align 8
  %60 = load %struct.clk*, %struct.clk** %59, align 8
  %61 = call i64 @IS_ERR(%struct.clk* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load %struct.clk**, %struct.clk*** %12, align 8
  store %struct.clk* null, %struct.clk** %64, align 8
  br label %65

65:                                               ; preds = %63, %54
  %66 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call %struct.clk* @devm_clk_get(i32* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.clk**, %struct.clk*** %13, align 8
  store %struct.clk* %68, %struct.clk** %69, align 8
  %70 = load %struct.clk**, %struct.clk*** %13, align 8
  %71 = load %struct.clk*, %struct.clk** %70, align 8
  %72 = call i64 @IS_ERR(%struct.clk* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load %struct.clk**, %struct.clk*** %13, align 8
  store %struct.clk* null, %struct.clk** %75, align 8
  br label %76

76:                                               ; preds = %74, %65
  %77 = load %struct.clk**, %struct.clk*** %9, align 8
  %78 = load %struct.clk*, %struct.clk** %77, align 8
  %79 = call i32 @clk_prepare_enable(%struct.clk* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %7, align 4
  br label %150

88:                                               ; preds = %76
  %89 = load %struct.clk**, %struct.clk*** %10, align 8
  %90 = load %struct.clk*, %struct.clk** %89, align 8
  %91 = call i32 @clk_prepare_enable(%struct.clk* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  br label %145

99:                                               ; preds = %88
  %100 = load %struct.clk**, %struct.clk*** %11, align 8
  %101 = load %struct.clk*, %struct.clk** %100, align 8
  %102 = call i32 @clk_prepare_enable(%struct.clk* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  br label %141

110:                                              ; preds = %99
  %111 = load %struct.clk**, %struct.clk*** %12, align 8
  %112 = load %struct.clk*, %struct.clk** %111, align 8
  %113 = call i32 @clk_prepare_enable(%struct.clk* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  br label %137

121:                                              ; preds = %110
  %122 = load %struct.clk**, %struct.clk*** %13, align 8
  %123 = load %struct.clk*, %struct.clk** %122, align 8
  %124 = call i32 @clk_prepare_enable(%struct.clk* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %130)
  br label %133

132:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %150

133:                                              ; preds = %127
  %134 = load %struct.clk**, %struct.clk*** %12, align 8
  %135 = load %struct.clk*, %struct.clk** %134, align 8
  %136 = call i32 @clk_disable_unprepare(%struct.clk* %135)
  br label %137

137:                                              ; preds = %133, %116
  %138 = load %struct.clk**, %struct.clk*** %11, align 8
  %139 = load %struct.clk*, %struct.clk** %138, align 8
  %140 = call i32 @clk_disable_unprepare(%struct.clk* %139)
  br label %141

141:                                              ; preds = %137, %105
  %142 = load %struct.clk**, %struct.clk*** %10, align 8
  %143 = load %struct.clk*, %struct.clk** %142, align 8
  %144 = call i32 @clk_disable_unprepare(%struct.clk* %143)
  br label %145

145:                                              ; preds = %141, %94
  %146 = load %struct.clk**, %struct.clk*** %9, align 8
  %147 = load %struct.clk*, %struct.clk** %146, align 8
  %148 = call i32 @clk_disable_unprepare(%struct.clk* %147)
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %145, %132, %82, %23
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
