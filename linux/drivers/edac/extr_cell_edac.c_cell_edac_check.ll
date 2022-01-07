; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cell_edac.c_cell_edac_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cell_edac.c_cell_edac_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.cell_edac_priv* }
%struct.cell_edac_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CBE_MIC_FIR_ECC_SINGLE_0_ERR = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_SINGLE_0_RESET = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_SINGLE_1_ERR = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_SINGLE_1_RESET = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_MULTI_0_ERR = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_MULTI_0_RESET = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_MULTI_1_ERR = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_MULTI_1_RESET = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_ERR_MASK = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_SET_MASK = common dso_local global i32 0, align 4
@CBE_MIC_FIR_ECC_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @cell_edac_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_edac_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.cell_edac_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 1
  %9 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %8, align 8
  store %struct.cell_edac_priv* %9, %struct.cell_edac_priv** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %11 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @in_be64(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %16 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CBE_MIC_FIR_ECC_SINGLE_0_ERR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %27 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @in_be64(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @CBE_MIC_FIR_ECC_SINGLE_0_RESET, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cell_edac_count_ce(%struct.mem_ctl_info* %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %25, %20, %1
  %38 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %39 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @CBE_MIC_FIR_ECC_SINGLE_1_ERR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %50 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @in_be64(i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @CBE_MIC_FIR_ECC_SINGLE_1_RESET, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @cell_edac_count_ce(%struct.mem_ctl_info* %57, i32 1, i32 %58)
  br label %60

60:                                               ; preds = %48, %43, %37
  %61 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %62 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CBE_MIC_FIR_ECC_MULTI_0_ERR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %73 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = call i32 @in_be64(i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @CBE_MIC_FIR_ECC_MULTI_0_RESET, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @cell_edac_count_ue(%struct.mem_ctl_info* %80, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %71, %66, %60
  %84 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %85 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @CBE_MIC_FIR_ECC_MULTI_1_ERR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %96 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = call i32 @in_be64(i32* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @CBE_MIC_FIR_ECC_MULTI_1_RESET, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @cell_edac_count_ue(%struct.mem_ctl_info* %103, i32 1, i32 %104)
  br label %106

106:                                              ; preds = %94, %89, %83
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  %110 = load i32, i32* @CBE_MIC_FIR_ECC_ERR_MASK, align 4
  %111 = load i32, i32* @CBE_MIC_FIR_ECC_SET_MASK, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %4, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* @CBE_MIC_FIR_ECC_RESET_MASK, align 4
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %6, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %4, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %4, align 4
  %123 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %124 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @out_be64(i32* %126, i32 %127)
  %129 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %3, align 8
  %130 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = call i32 @in_be64(i32* %132)
  %134 = call i32 (...) @mb()
  br label %135

135:                                              ; preds = %109, %106
  ret void
}

declare dso_local i32 @in_be64(i32*) #1

declare dso_local i32 @cell_edac_count_ce(%struct.mem_ctl_info*, i32, i32) #1

declare dso_local i32 @cell_edac_count_ue(%struct.mem_ctl_info*, i32, i32) #1

declare dso_local i32 @out_be64(i32*, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
