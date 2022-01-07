; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_mc_is_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_mc_is_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_edac_mc_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@CSW_CSWCR = common dso_local global i32 0, align 4
@CSW_CSWCR_DUALMCB_MASK = common dso_local global i32 0, align 4
@MCBADDRMR = common dso_local global i32 0, align 4
@MCBADDRMR_DUALMCU_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_edac_mc_ctx*, i32)* @xgene_edac_mc_is_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_edac_mc_is_active(%struct.xgene_edac_mc_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_edac_mc_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgene_edac_mc_ctx* %0, %struct.xgene_edac_mc_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CSW_CSWCR, align 4
  %14 = call i64 @regmap_read(i32 %12, i32 %13, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CSW_CSWCR_DUALMCB_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MCBADDRMR, align 4
  %29 = call i64 @regmap_read(i32 %27, i32 %28, i32* %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %77

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MCBADDRMR_DUALMCU_MODE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 15, i32 5
  store i32 %38, i32* %7, align 4
  br label %56

39:                                               ; preds = %17
  %40 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MCBADDRMR, align 4
  %46 = call i64 @regmap_read(i32 %44, i32 %45, i32* %6)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %77

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MCBADDRMR_DUALMCU_MODE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 3, i32 1
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %32
  %57 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %48, %31, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
