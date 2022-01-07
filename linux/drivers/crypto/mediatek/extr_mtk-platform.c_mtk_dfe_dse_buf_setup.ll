; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_dfe_dse_buf_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_dfe_dse_buf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i64 }
%struct.mtk_sys_cap = type { i32, i32 }

@DFE_CFG = common dso_local global i64 0, align 8
@DSE_CFG = common dso_local global i64 0, align 8
@PE_IN_DBUF_THRESH = common dso_local global i64 0, align 8
@PE_IN_TBUF_THRESH = common dso_local global i64 0, align 8
@PE_OUT_DBUF_THRESH = common dso_local global i64 0, align 8
@PE_OUT_TBUF_THRESH = common dso_local global i64 0, align 8
@PE_OUT_BUF_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cryp*, %struct.mtk_sys_cap*)* @mtk_dfe_dse_buf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dfe_dse_buf_setup(%struct.mtk_cryp* %0, %struct.mtk_sys_cap* %1) #0 {
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca %struct.mtk_sys_cap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  store %struct.mtk_sys_cap* %1, %struct.mtk_sys_cap** %4, align 8
  %10 = load %struct.mtk_sys_cap*, %struct.mtk_sys_cap** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @MTK_HIA_DATA_WIDTH(i32 %12)
  %14 = add nsw i64 %13, 2
  store i64 %14, i64* %5, align 8
  %15 = load %struct.mtk_sys_cap*, %struct.mtk_sys_cap** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @MTK_HIA_DMA_LENGTH(i32 %17)
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* %6, align 8
  %20 = load %struct.mtk_sys_cap*, %struct.mtk_sys_cap** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @MTK_IN_DBUF_SIZE(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @min(i64 %25, i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.mtk_sys_cap*, %struct.mtk_sys_cap** %4, align 8
  %29 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @MTK_OUT_DBUF_SIZE(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @min(i64 %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.mtk_sys_cap*, %struct.mtk_sys_cap** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @MTK_IN_TBUF_SIZE(i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @min(i64 %41, i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub nsw i64 %44, 1
  %46 = call i32 @MTK_DFSE_MIN_DATA(i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @MTK_DFSE_MAX_DATA(i64 %47)
  %49 = or i32 %46, %48
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @MTK_DFE_MIN_CTRL(i64 %51)
  %53 = or i32 %49, %52
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @MTK_DFE_MAX_CTRL(i64 %54)
  %56 = or i32 %53, %55
  %57 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %58 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DFE_CFG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i32 @MTK_DFSE_MIN_DATA(i64 %64)
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @MTK_DFSE_MAX_DATA(i64 %66)
  %68 = or i32 %65, %67
  %69 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %70 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DSE_CFG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i64, i64* %7, align 8
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @MTK_IN_BUF_MIN_THRESH(i64 %76)
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @MTK_IN_BUF_MAX_THRESH(i64 %78)
  %80 = or i32 %77, %79
  %81 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %82 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PE_IN_DBUF_THRESH, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load i64, i64* %9, align 8
  %88 = sub nsw i64 %87, 1
  %89 = call i32 @MTK_IN_BUF_MIN_THRESH(i64 %88)
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @MTK_IN_BUF_MAX_THRESH(i64 %90)
  %92 = or i32 %89, %91
  %93 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %94 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PE_IN_TBUF_THRESH, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load i64, i64* %8, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @MTK_OUT_BUF_MIN_THRESH(i64 %100)
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @MTK_OUT_BUF_MAX_THRESH(i64 %102)
  %104 = or i32 %101, %103
  %105 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %106 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PE_OUT_DBUF_THRESH, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  %111 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %112 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PE_OUT_TBUF_THRESH, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 0, i64 %115)
  %117 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %118 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PE_OUT_BUF_CTRL, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 0, i64 %121)
  ret void
}

declare dso_local i64 @MTK_HIA_DATA_WIDTH(i32) #1

declare dso_local i64 @MTK_HIA_DMA_LENGTH(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @MTK_IN_DBUF_SIZE(i32) #1

declare dso_local i64 @MTK_OUT_DBUF_SIZE(i32) #1

declare dso_local i64 @MTK_IN_TBUF_SIZE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @MTK_DFSE_MIN_DATA(i64) #1

declare dso_local i32 @MTK_DFSE_MAX_DATA(i64) #1

declare dso_local i32 @MTK_DFE_MIN_CTRL(i64) #1

declare dso_local i32 @MTK_DFE_MAX_CTRL(i64) #1

declare dso_local i32 @MTK_IN_BUF_MIN_THRESH(i64) #1

declare dso_local i32 @MTK_IN_BUF_MAX_THRESH(i64) #1

declare dso_local i32 @MTK_OUT_BUF_MIN_THRESH(i64) #1

declare dso_local i32 @MTK_OUT_BUF_MAX_THRESH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
