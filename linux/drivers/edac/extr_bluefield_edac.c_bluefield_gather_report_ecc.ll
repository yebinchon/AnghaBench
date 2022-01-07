; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_bluefield_edac.c_bluefield_gather_report_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_bluefield_edac.c_bluefield_gather_report_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.bluefield_edac_priv* }
%struct.bluefield_edac_priv = type { i32*, i64 }

@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@MLXBF_ECC_LATCH_SEL__START = common dso_local global i32 0, align 4
@MLXBF_ECC_LATCH_SEL = common dso_local global i64 0, align 8
@MLXBF_SYNDROM = common dso_local global i64 0, align 8
@MLXBF_SYNDROM__SERR = common dso_local global i32 0, align 4
@MLXBF_SYNDROM__DERR = common dso_local global i32 0, align 4
@MLXBF_SYNDROM__SYN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MLXBF_ADD_INFO = common dso_local global i64 0, align 8
@MLXBF_ADD_INFO__ERR_PRANK = common dso_local global i32 0, align 4
@MLXBF_ERR_ADDR_0 = common dso_local global i64 0, align 8
@MLXBF_ERR_ADDR_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32)* @bluefield_gather_report_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bluefield_gather_report_ecc(%struct.mem_ctl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bluefield_edac_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %21 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %20, i32 0, i32 1
  %22 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %21, align 8
  store %struct.bluefield_edac_priv* %22, %struct.bluefield_edac_priv** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* @MLXBF_ECC_LATCH_SEL__START, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %7, align 8
  %34 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLXBF_ECC_LATCH_SEL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %7, align 8
  %40 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MLXBF_SYNDROM, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @MLXBF_SYNDROM__SERR, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @FIELD_GET(i32 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @MLXBF_SYNDROM__DERR, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @FIELD_GET(i32 %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @MLXBF_SYNDROM__SYN, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @FIELD_GET(i32 %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %29
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56, %29
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %70 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @edac_mc_handle_error(i32 %66, %struct.mem_ctl_info* %67, i32 %68, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %125

73:                                               ; preds = %62, %59
  %74 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %7, align 8
  %75 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MLXBF_ADD_INFO, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @MLXBF_ADD_INFO__ERR_PRANK, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @FIELD_GET(i32 %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %7, align 8
  %87 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %90, 2
  br label %92

92:                                               ; preds = %85, %73
  %93 = phi i1 [ false, %73 ], [ %91, %85 ]
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  store i32 %95, i32* %19, align 4
  %96 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %7, align 8
  %97 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MLXBF_ERR_ADDR_0, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @readl(i64 %100)
  store i32 %101, i32* %10, align 4
  %102 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %7, align 8
  %103 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MLXBF_ERR_ADDR_1, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @readl(i64 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, 32
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @PFN_DOWN(i32 %115)
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @offset_in_page(i32 %117)
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %122 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @edac_mc_handle_error(i32 %112, %struct.mem_ctl_info* %113, i32 %114, i32 %116, i32 %118, i32 %119, i32 %120, i32 0, i32 0, i32 %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %92, %65
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @PFN_DOWN(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
