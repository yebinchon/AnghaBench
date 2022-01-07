; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_dump_syn_reg_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_dump_syn_reg_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llcc_edac_reg_data = type { i32, i64, i64, i32, i32, i64, i32, i32, i32 }
%struct.llcc_drv_data = type { i64*, i32 }

@edac_reg_data = common dso_local global %struct.llcc_edac_reg_data* null, align 8
@KERN_CRIT = common dso_local global i32 0, align 4
@EDAC_LLCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: ECC_SYN%d: 0x%8x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Error count: 0x%4x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: Error ways: 0x%4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llcc_drv_data*, i64, i32)* @dump_syn_reg_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_syn_reg_values(%struct.llcc_drv_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.llcc_drv_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.llcc_edac_reg_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.llcc_drv_data* %0, %struct.llcc_drv_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.llcc_edac_reg_data*, %struct.llcc_edac_reg_data** @edac_reg_data, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %14, i64 %16
  %18 = bitcast %struct.llcc_edac_reg_data* %7 to i8*
  %19 = bitcast %struct.llcc_edac_reg_data* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 56, i1 false)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %55, %3
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %27, %30
  store i64 %31, i64* %12, align 8
  %32 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %33 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %36 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = add i64 %40, %41
  %43 = call i32 (i32, i64, ...) @regmap_read(i32 %34, i64 %42, i64* %13)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  br label %121

47:                                               ; preds = %25
  %48 = load i32, i32* @KERN_CRIT, align 4
  %49 = load i32, i32* @EDAC_LLCC, align 4
  %50 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i64, i64* %13, align 8
  %54 = call i32 (i32, i32, i8*, i32, i32, ...) @edac_printk(i32 %48, i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i64 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %20

58:                                               ; preds = %20
  %59 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %60 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %63 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %67, %69
  %71 = call i32 (i32, i64, ...) @regmap_read(i32 %61, i64 %70, i32* %8)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %121

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @KERN_CRIT, align 4
  %85 = load i32, i32* @EDAC_LLCC, align 4
  %86 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i32, i32, i8*, i32, i32, ...) @edac_printk(i32 %84, i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %91 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %94 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %98, %100
  %102 = call i32 (i32, i64, ...) @regmap_read(i32 %92, i64 %101, i32* %9)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %75
  br label %121

106:                                              ; preds = %75
  %107 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = ashr i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @KERN_CRIT, align 4
  %116 = load i32, i32* @EDAC_LLCC, align 4
  %117 = getelementptr inbounds %struct.llcc_edac_reg_data, %struct.llcc_edac_reg_data* %7, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i32, i32, i8*, i32, i32, ...) @edac_printk(i32 %115, i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %106, %105, %74, %46
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %124 = call i32 @qcom_llcc_clear_error_status(i32 %122, %struct.llcc_drv_data* %123)
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @regmap_read(i32, i64, ...) #2

declare dso_local i32 @edac_printk(i32, i32, i8*, i32, i32, ...) #2

declare dso_local i32 @qcom_llcc_clear_error_status(i32, %struct.llcc_drv_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
