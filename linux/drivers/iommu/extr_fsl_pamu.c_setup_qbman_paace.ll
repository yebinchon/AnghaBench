; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_setup_qbman_paace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_setup_qbman_paace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paace = type { %struct.TYPE_6__, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@PAACE_IA_OTM = common dso_local global i32 0, align 4
@PAACE_OTM_INDEXED = common dso_local global i32 0, align 4
@OMI_QMAN_PRIV = common dso_local global i32 0, align 4
@PAACE_IA_CID = common dso_local global i32 0, align 4
@PAMU_ATTR_CACHE_L3 = common dso_local global i32 0, align 4
@PAACE_DA_HOST_CR = common dso_local global i32 0, align 4
@OMI_QMAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.paace*, i32)* @setup_qbman_paace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_qbman_paace(%struct.paace* %0, i32 %1) #0 {
  %3 = alloca %struct.paace*, align 8
  %4 = alloca i32, align 4
  store %struct.paace* %0, %struct.paace** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %59 [
    i32 129, label %6
    i32 128, label %32
    i32 130, label %51
  ]

6:                                                ; preds = %2
  %7 = load %struct.paace*, %struct.paace** %3, align 8
  %8 = getelementptr inbounds %struct.paace, %struct.paace* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PAACE_IA_OTM, align 4
  %11 = load i32, i32* @PAACE_OTM_INDEXED, align 4
  %12 = call i32 @set_bf(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @OMI_QMAN_PRIV, align 4
  %14 = load %struct.paace*, %struct.paace** %3, align 8
  %15 = getelementptr inbounds %struct.paace, %struct.paace* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.paace*, %struct.paace** %3, align 8
  %19 = getelementptr inbounds %struct.paace, %struct.paace* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAACE_IA_CID, align 4
  %22 = load i32, i32* @PAMU_ATTR_CACHE_L3, align 4
  %23 = call i32 @get_stash_id(i32 %22, i32 0)
  %24 = call i32 @set_bf(i32 %20, i32 %21, i32 %23)
  %25 = load %struct.paace*, %struct.paace** %3, align 8
  %26 = getelementptr inbounds %struct.paace, %struct.paace* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PAACE_DA_HOST_CR, align 4
  %31 = call i32 @set_bf(i32 %29, i32 %30, i32 0)
  br label %59

32:                                               ; preds = %2
  %33 = load %struct.paace*, %struct.paace** %3, align 8
  %34 = getelementptr inbounds %struct.paace, %struct.paace* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PAACE_IA_OTM, align 4
  %37 = load i32, i32* @PAACE_OTM_INDEXED, align 4
  %38 = call i32 @set_bf(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @OMI_QMAN, align 4
  %40 = load %struct.paace*, %struct.paace** %3, align 8
  %41 = getelementptr inbounds %struct.paace, %struct.paace* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.paace*, %struct.paace** %3, align 8
  %45 = getelementptr inbounds %struct.paace, %struct.paace* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PAACE_IA_CID, align 4
  %48 = load i32, i32* @PAMU_ATTR_CACHE_L3, align 4
  %49 = call i32 @get_stash_id(i32 %48, i32 0)
  %50 = call i32 @set_bf(i32 %46, i32 %47, i32 %49)
  br label %59

51:                                               ; preds = %2
  %52 = load %struct.paace*, %struct.paace** %3, align 8
  %53 = getelementptr inbounds %struct.paace, %struct.paace* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PAACE_DA_HOST_CR, align 4
  %58 = call i32 @set_bf(i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %2, %51, %32, %6
  ret void
}

declare dso_local i32 @set_bf(i32, i32, i32) #1

declare dso_local i32 @get_stash_id(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
