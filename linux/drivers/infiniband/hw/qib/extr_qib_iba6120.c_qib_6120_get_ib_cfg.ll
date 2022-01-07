; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_get_ib_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_get_ib_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IBCCtrl = common dso_local global i32 0, align 4
@OverrunThreshold = common dso_local global i32 0, align 4
@PhyerrThreshold = common dso_local global i32 0, align 4
@LinkDownDefaultState = common dso_local global i32 0, align 4
@IB_LINKINITCMD_SLEEP = common dso_local global i32 0, align 4
@IB_LINKINITCMD_POLL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i32)* @qib_6120_get_ib_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_6120_get_ib_cfg(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %72 [
    i32 137, label %7
    i32 131, label %11
    i32 136, label %15
    i32 130, label %19
    i32 135, label %23
    i32 129, label %27
    i32 128, label %28
    i32 134, label %29
    i32 133, label %40
    i32 138, label %51
    i32 139, label %70
    i32 132, label %71
  ]

7:                                                ; preds = %2
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  br label %75

11:                                               ; preds = %2
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %75

23:                                               ; preds = %2
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %25 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  br label %75

27:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %75

28:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %75

29:                                               ; preds = %2
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IBCCtrl, align 4
  %38 = load i32, i32* @OverrunThreshold, align 4
  %39 = call i32 @SYM_FIELD(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %75

40:                                               ; preds = %2
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IBCCtrl, align 4
  %49 = load i32, i32* @PhyerrThreshold, align 4
  %50 = call i32 @SYM_FIELD(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %75

51:                                               ; preds = %2
  %52 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %53 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %52, i32 0, i32 5
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IBCCtrl, align 4
  %60 = load i32, i32* @LinkDownDefaultState, align 4
  %61 = call i32 @SYM_MASK(i32 %59, i32 %60)
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @IB_LINKINITCMD_SLEEP, align 4
  br label %68

66:                                               ; preds = %51
  %67 = load i32, i32* @IB_LINKINITCMD_POLL, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %75

71:                                               ; preds = %2
  store i32 250, i32* %5, align 4
  br label %75

72:                                               ; preds = %2
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %71, %70, %68, %40, %29, %28, %27, %23, %19, %15, %11, %7
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
