; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_get_ib_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_get_ib_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IBA7220_IBC_RXPOL_SHIFT = common dso_local global i32 0, align 4
@IBA7220_IBC_RXPOL_MASK = common dso_local global i32 0, align 4
@IBA7220_IBC_LREV_SHIFT = common dso_local global i32 0, align 4
@IBA7220_IBC_LREV_MASK = common dso_local global i32 0, align 4
@kr_ibcddrstatus = common dso_local global i32 0, align 4
@IBA7220_DDRSTAT_LINKLAT_MASK = common dso_local global i32 0, align 4
@IBCCtrl = common dso_local global i32 0, align 4
@OverrunThreshold = common dso_local global i32 0, align 4
@PhyerrThreshold = common dso_local global i32 0, align 4
@LinkDownDefaultState = common dso_local global i32 0, align 4
@IB_LINKINITCMD_SLEEP = common dso_local global i32 0, align 4
@IB_LINKINITCMD_POLL = common dso_local global i32 0, align 4
@IBA7220_IBC_HRTBT_SHIFT = common dso_local global i32 0, align 4
@IBA7220_IBC_HRTBT_MASK = common dso_local global i32 0, align 4
@QIB_IB_DDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i32)* @qib_7220_get_ib_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7220_get_ib_cfg(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %90 [
    i32 137, label %9
    i32 138, label %13
    i32 130, label %17
    i32 131, label %21
    i32 132, label %25
    i32 139, label %28
    i32 140, label %31
    i32 136, label %39
    i32 129, label %43
    i32 128, label %44
    i32 135, label %45
    i32 134, label %54
    i32 141, label %63
    i32 142, label %80
    i32 133, label %83
  ]

9:                                                ; preds = %2
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  br label %103

13:                                               ; preds = %2
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %103

17:                                               ; preds = %2
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  br label %103

21:                                               ; preds = %2
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %103

25:                                               ; preds = %2
  %26 = load i32, i32* @IBA7220_IBC_RXPOL_SHIFT, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @IBA7220_IBC_RXPOL_MASK, align 4
  store i32 %27, i32* %7, align 4
  br label %93

28:                                               ; preds = %2
  %29 = load i32, i32* @IBA7220_IBC_LREV_SHIFT, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @IBA7220_IBC_LREV_MASK, align 4
  store i32 %30, i32* %7, align 4
  br label %93

31:                                               ; preds = %2
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @kr_ibcddrstatus, align 4
  %36 = call i32 @qib_read_kreg64(i32 %34, i32 %35)
  %37 = load i32, i32* @IBA7220_DDRSTAT_LINKLAT_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %6, align 4
  br label %103

39:                                               ; preds = %2
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %41 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  br label %103

43:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %103

44:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %103

45:                                               ; preds = %2
  %46 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %47 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IBCCtrl, align 4
  %52 = load i32, i32* @OverrunThreshold, align 4
  %53 = call i32 @SYM_FIELD(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %103

54:                                               ; preds = %2
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %56 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IBCCtrl, align 4
  %61 = load i32, i32* @PhyerrThreshold, align 4
  %62 = call i32 @SYM_FIELD(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %103

63:                                               ; preds = %2
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %65 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %64, i32 0, i32 5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IBCCtrl, align 4
  %70 = load i32, i32* @LinkDownDefaultState, align 4
  %71 = call i32 @SYM_MASK(i32 %69, i32 %70)
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* @IB_LINKINITCMD_SLEEP, align 4
  br label %78

76:                                               ; preds = %63
  %77 = load i32, i32* @IB_LINKINITCMD_POLL, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %6, align 4
  br label %103

80:                                               ; preds = %2
  %81 = load i32, i32* @IBA7220_IBC_HRTBT_SHIFT, align 4
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @IBA7220_IBC_HRTBT_MASK, align 4
  store i32 %82, i32* %7, align 4
  br label %93

83:                                               ; preds = %2
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @QIB_IB_DDR, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %103

90:                                               ; preds = %2
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %103

93:                                               ; preds = %80, %28, %25
  %94 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %95 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %94, i32 0, i32 5
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = ashr i32 %98, %99
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %93, %90, %83, %78, %54, %45, %44, %43, %39, %31, %21, %17, %13, %9
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @qib_read_kreg64(i32, i32) #1

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
