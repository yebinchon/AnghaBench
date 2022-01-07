; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_bluefield_edac.c_bluefield_edac_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_bluefield_edac.c_bluefield_edac_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64, %struct.bluefield_edac_priv* }
%struct.bluefield_edac_priv = type { i64 }

@EDAC_FLAG_NONE = common dso_local global i64 0, align 8
@MLXBF_ECC_CNT = common dso_local global i64 0, align 8
@MLXBF_ECC_CNT__SERR_CNT = common dso_local global i32 0, align 4
@MLXBF_ECC_CNT__DERR_CNT = common dso_local global i32 0, align 4
@MLXBF_ECC_ERR__SECC = common dso_local global i64 0, align 8
@MLXBF_ECC_ERR__DECC = common dso_local global i64 0, align 8
@MLXBF_ECC_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @bluefield_edac_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bluefield_edac_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.bluefield_edac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 1
  %10 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %9, align 8
  store %struct.bluefield_edac_priv* %10, %struct.bluefield_edac_priv** %3, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EDAC_FLAG_NONE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %3, align 8
  %19 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLXBF_ECC_CNT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i32, i32* @MLXBF_ECC_CNT__SERR_CNT, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @FIELD_GET(i32 %24, i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* @MLXBF_ECC_CNT__DERR_CNT, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @FIELD_GET(i32 %27, i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %17
  %33 = load i64, i64* @MLXBF_ECC_ERR__SECC, align 8
  %34 = load i64, i64* %7, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @bluefield_gather_report_ecc(%struct.mem_ctl_info* %36, i64 %37, i32 1)
  br label %39

39:                                               ; preds = %32, %17
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* @MLXBF_ECC_ERR__DECC, align 8
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @bluefield_gather_report_ecc(%struct.mem_ctl_info* %46, i64 %47, i32 0)
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %3, align 8
  %55 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MLXBF_ECC_ERR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i64 %53, i64 %58)
  br label %60

60:                                               ; preds = %16, %52, %49
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @FIELD_GET(i32, i64) #1

declare dso_local i32 @bluefield_gather_report_ecc(%struct.mem_ctl_info*, i64, i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
