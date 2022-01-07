; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_axicdma_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_axicdma_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"s_axi_lite_aclk\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get axi_clk (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"m_axi_aclk\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get dev_clk (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to enable axi_clk (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to enable dev_clk (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.clk**, %struct.clk**, %struct.clk**, %struct.clk**, %struct.clk**)* @axicdma_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axicdma_clk_init(%struct.platform_device* %0, %struct.clk** %1, %struct.clk** %2, %struct.clk** %3, %struct.clk** %4, %struct.clk** %5) #0 {
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
  %15 = load %struct.clk**, %struct.clk*** %11, align 8
  store %struct.clk* null, %struct.clk** %15, align 8
  %16 = load %struct.clk**, %struct.clk*** %12, align 8
  store %struct.clk* null, %struct.clk** %16, align 8
  %17 = load %struct.clk**, %struct.clk*** %13, align 8
  store %struct.clk* null, %struct.clk** %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.clk* @devm_clk_get(i32* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.clk**, %struct.clk*** %9, align 8
  store %struct.clk* %20, %struct.clk** %21, align 8
  %22 = load %struct.clk**, %struct.clk*** %9, align 8
  %23 = load %struct.clk*, %struct.clk** %22, align 8
  %24 = call i64 @IS_ERR(%struct.clk* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %6
  %27 = load %struct.clk**, %struct.clk*** %9, align 8
  %28 = load %struct.clk*, %struct.clk** %27, align 8
  %29 = call i32 @PTR_ERR(%struct.clk* %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %82

35:                                               ; preds = %6
  %36 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call %struct.clk* @devm_clk_get(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.clk**, %struct.clk*** %10, align 8
  store %struct.clk* %38, %struct.clk** %39, align 8
  %40 = load %struct.clk**, %struct.clk*** %10, align 8
  %41 = load %struct.clk*, %struct.clk** %40, align 8
  %42 = call i64 @IS_ERR(%struct.clk* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.clk**, %struct.clk*** %10, align 8
  %46 = load %struct.clk*, %struct.clk** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.clk* %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %7, align 4
  br label %82

53:                                               ; preds = %35
  %54 = load %struct.clk**, %struct.clk*** %9, align 8
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = call i32 @clk_prepare_enable(%struct.clk* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  br label %82

65:                                               ; preds = %53
  %66 = load %struct.clk**, %struct.clk*** %10, align 8
  %67 = load %struct.clk*, %struct.clk** %66, align 8
  %68 = call i32 @clk_prepare_enable(%struct.clk* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %77

76:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %82

77:                                               ; preds = %71
  %78 = load %struct.clk**, %struct.clk*** %9, align 8
  %79 = load %struct.clk*, %struct.clk** %78, align 8
  %80 = call i32 @clk_disable_unprepare(%struct.clk* %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %77, %76, %59, %44, %26
  %83 = load i32, i32* %7, align 4
  ret i32 %83
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
