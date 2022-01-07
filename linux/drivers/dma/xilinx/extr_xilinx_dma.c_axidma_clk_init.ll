; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_axidma_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_axidma_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"s_axi_lite_aclk\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get axi_aclk (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"m_axi_mm2s_aclk\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"m_axi_s2mm_aclk\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"m_axi_sg_aclk\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to enable axi_clk (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to enable tx_clk (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to enable rx_clk (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to enable sg_clk (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.clk**, %struct.clk**, %struct.clk**, %struct.clk**, %struct.clk**)* @axidma_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axidma_clk_init(%struct.platform_device* %0, %struct.clk** %1, %struct.clk** %2, %struct.clk** %3, %struct.clk** %4, %struct.clk** %5) #0 {
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
  %15 = load %struct.clk**, %struct.clk*** %13, align 8
  store %struct.clk* null, %struct.clk** %15, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.clk* @devm_clk_get(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.clk**, %struct.clk*** %9, align 8
  store %struct.clk* %18, %struct.clk** %19, align 8
  %20 = load %struct.clk**, %struct.clk*** %9, align 8
  %21 = load %struct.clk*, %struct.clk** %20, align 8
  %22 = call i64 @IS_ERR(%struct.clk* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = load %struct.clk**, %struct.clk*** %9, align 8
  %26 = load %struct.clk*, %struct.clk** %25, align 8
  %27 = call i32 @PTR_ERR(%struct.clk* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %7, align 4
  br label %125

33:                                               ; preds = %6
  %34 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call %struct.clk* @devm_clk_get(i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.clk**, %struct.clk*** %10, align 8
  store %struct.clk* %36, %struct.clk** %37, align 8
  %38 = load %struct.clk**, %struct.clk*** %10, align 8
  %39 = load %struct.clk*, %struct.clk** %38, align 8
  %40 = call i64 @IS_ERR(%struct.clk* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load %struct.clk**, %struct.clk*** %10, align 8
  store %struct.clk* null, %struct.clk** %43, align 8
  br label %44

44:                                               ; preds = %42, %33
  %45 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call %struct.clk* @devm_clk_get(i32* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.clk**, %struct.clk*** %11, align 8
  store %struct.clk* %47, %struct.clk** %48, align 8
  %49 = load %struct.clk**, %struct.clk*** %11, align 8
  %50 = load %struct.clk*, %struct.clk** %49, align 8
  %51 = call i64 @IS_ERR(%struct.clk* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load %struct.clk**, %struct.clk*** %11, align 8
  store %struct.clk* null, %struct.clk** %54, align 8
  br label %55

55:                                               ; preds = %53, %44
  %56 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call %struct.clk* @devm_clk_get(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.clk**, %struct.clk*** %12, align 8
  store %struct.clk* %58, %struct.clk** %59, align 8
  %60 = load %struct.clk**, %struct.clk*** %12, align 8
  %61 = load %struct.clk*, %struct.clk** %60, align 8
  %62 = call i64 @IS_ERR(%struct.clk* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load %struct.clk**, %struct.clk*** %12, align 8
  store %struct.clk* null, %struct.clk** %65, align 8
  br label %66

66:                                               ; preds = %64, %55
  %67 = load %struct.clk**, %struct.clk*** %9, align 8
  %68 = load %struct.clk*, %struct.clk** %67, align 8
  %69 = call i32 @clk_prepare_enable(%struct.clk* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %125

78:                                               ; preds = %66
  %79 = load %struct.clk**, %struct.clk*** %10, align 8
  %80 = load %struct.clk*, %struct.clk** %79, align 8
  %81 = call i32 @clk_prepare_enable(%struct.clk* %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  br label %120

89:                                               ; preds = %78
  %90 = load %struct.clk**, %struct.clk*** %11, align 8
  %91 = load %struct.clk*, %struct.clk** %90, align 8
  %92 = call i32 @clk_prepare_enable(%struct.clk* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  br label %116

100:                                              ; preds = %89
  %101 = load %struct.clk**, %struct.clk*** %12, align 8
  %102 = load %struct.clk*, %struct.clk** %101, align 8
  %103 = call i32 @clk_prepare_enable(%struct.clk* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  br label %112

111:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %125

112:                                              ; preds = %106
  %113 = load %struct.clk**, %struct.clk*** %11, align 8
  %114 = load %struct.clk*, %struct.clk** %113, align 8
  %115 = call i32 @clk_disable_unprepare(%struct.clk* %114)
  br label %116

116:                                              ; preds = %112, %95
  %117 = load %struct.clk**, %struct.clk*** %10, align 8
  %118 = load %struct.clk*, %struct.clk** %117, align 8
  %119 = call i32 @clk_disable_unprepare(%struct.clk* %118)
  br label %120

120:                                              ; preds = %116, %84
  %121 = load %struct.clk**, %struct.clk*** %9, align 8
  %122 = load %struct.clk*, %struct.clk** %121, align 8
  %123 = call i32 @clk_disable_unprepare(%struct.clk* %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %120, %111, %72, %24
  %126 = load i32, i32* %7, align 4
  ret i32 %126
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
