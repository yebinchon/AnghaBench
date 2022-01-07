; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_setup_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_setup_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmmu_vmsa_domain = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }

@IMTTLBR0 = common dso_local global i32 0, align 4
@IMTTUBR0 = common dso_local global i32 0, align 4
@IMTTBCR_SL0_TWOBIT_LVL_1 = common dso_local global i32 0, align 4
@IMTTBCR_SL0_LVL_1 = common dso_local global i32 0, align 4
@IMTTBCR_SH0_INNER_SHAREABLE = common dso_local global i32 0, align 4
@IMTTBCR_ORGN0_WB_WA = common dso_local global i32 0, align 4
@IMTTBCR_IRGN0_WB_WA = common dso_local global i32 0, align 4
@IMTTBCR = common dso_local global i32 0, align 4
@IMTTBCR_EAE = common dso_local global i32 0, align 4
@IMMAIR0 = common dso_local global i32 0, align 4
@IMBUSCR = common dso_local global i32 0, align 4
@IMBUSCR_DVM = common dso_local global i32 0, align 4
@IMBUSCR_BUSSEL_MASK = common dso_local global i32 0, align 4
@IMSTR = common dso_local global i32 0, align 4
@IMCTR = common dso_local global i32 0, align 4
@IMCTR_INTEN = common dso_local global i32 0, align 4
@IMCTR_FLUSH = common dso_local global i32 0, align 4
@IMCTR_MMUEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmmu_vmsa_domain*)* @ipmmu_domain_setup_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmmu_domain_setup_context(%struct.ipmmu_vmsa_domain* %0) #0 {
  %2 = alloca %struct.ipmmu_vmsa_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ipmmu_vmsa_domain* %0, %struct.ipmmu_vmsa_domain** %2, align 8
  %5 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %6 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %13 = load i32, i32* @IMTTLBR0, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ipmmu_ctx_write_root(%struct.ipmmu_vmsa_domain* %12, i32 %13, i32 %14)
  %16 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %17 = load i32, i32* @IMTTUBR0, align 4
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 32
  %20 = call i32 @ipmmu_ctx_write_root(%struct.ipmmu_vmsa_domain* %16, i32 %17, i32 %19)
  %21 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %22 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @IMTTBCR_SL0_TWOBIT_LVL_1, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @IMTTBCR_SL0_LVL_1, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %35 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i32, i32* @IMTTBCR_SH0_INNER_SHAREABLE, align 4
  %44 = load i32, i32* @IMTTBCR_ORGN0_WB_WA, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IMTTBCR_IRGN0_WB_WA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %33
  %51 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %52 = load i32, i32* @IMTTBCR, align 4
  %53 = load i32, i32* @IMTTBCR_EAE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ipmmu_ctx_write_root(%struct.ipmmu_vmsa_domain* %51, i32 %52, i32 %55)
  %57 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %58 = load i32, i32* @IMMAIR0, align 4
  %59 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %60 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ipmmu_ctx_write_root(%struct.ipmmu_vmsa_domain* %57, i32 %58, i32 %65)
  %67 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %68 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %50
  %76 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %77 = load i32, i32* @IMBUSCR, align 4
  %78 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %79 = load i32, i32* @IMBUSCR, align 4
  %80 = call i32 @ipmmu_ctx_read_root(%struct.ipmmu_vmsa_domain* %78, i32 %79)
  %81 = load i32, i32* @IMBUSCR_DVM, align 4
  %82 = load i32, i32* @IMBUSCR_BUSSEL_MASK, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %80, %84
  %86 = call i32 @ipmmu_ctx_write_root(%struct.ipmmu_vmsa_domain* %76, i32 %77, i32 %85)
  br label %87

87:                                               ; preds = %75, %50
  %88 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %89 = load i32, i32* @IMSTR, align 4
  %90 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %91 = load i32, i32* @IMSTR, align 4
  %92 = call i32 @ipmmu_ctx_read_root(%struct.ipmmu_vmsa_domain* %90, i32 %91)
  %93 = call i32 @ipmmu_ctx_write_root(%struct.ipmmu_vmsa_domain* %88, i32 %89, i32 %92)
  %94 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %95 = load i32, i32* @IMCTR, align 4
  %96 = load i32, i32* @IMCTR_INTEN, align 4
  %97 = load i32, i32* @IMCTR_FLUSH, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @IMCTR_MMUEN, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @ipmmu_ctx_write_all(%struct.ipmmu_vmsa_domain* %94, i32 %95, i32 %100)
  ret void
}

declare dso_local i32 @ipmmu_ctx_write_root(%struct.ipmmu_vmsa_domain*, i32, i32) #1

declare dso_local i32 @ipmmu_ctx_read_root(%struct.ipmmu_vmsa_domain*, i32) #1

declare dso_local i32 @ipmmu_ctx_write_all(%struct.ipmmu_vmsa_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
