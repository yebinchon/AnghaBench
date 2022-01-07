; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dp = type { i32 }
%struct.ipu_soc = type { %struct.ipu_dp_priv* }
%struct.ipu_dp_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ipu_dp, %struct.ipu_dp }

@IPUV3_NUM_FLOWS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipu_dp* @ipu_dp_get(%struct.ipu_soc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_dp*, align 8
  %4 = alloca %struct.ipu_soc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_dp_priv*, align 8
  %7 = alloca %struct.ipu_dp*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %9 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %8, i32 0, i32 0
  %10 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %9, align 8
  store %struct.ipu_dp_priv* %10, %struct.ipu_dp_priv** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = lshr i32 %11, 1
  %13 = load i32, i32* @IPUV3_NUM_FLOWS, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ipu_dp* @ERR_PTR(i32 %17)
  store %struct.ipu_dp* %18, %struct.ipu_dp** %3, align 8
  br label %54

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = lshr i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.ipu_dp* %31, %struct.ipu_dp** %7, align 8
  br label %41

32:                                               ; preds = %19
  %33 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %6, align 8
  %34 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = lshr i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.ipu_dp* %40, %struct.ipu_dp** %7, align 8
  br label %41

41:                                               ; preds = %32, %23
  %42 = load %struct.ipu_dp*, %struct.ipu_dp** %7, align 8
  %43 = getelementptr inbounds %struct.ipu_dp, %struct.ipu_dp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.ipu_dp* @ERR_PTR(i32 %48)
  store %struct.ipu_dp* %49, %struct.ipu_dp** %3, align 8
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.ipu_dp*, %struct.ipu_dp** %7, align 8
  %52 = getelementptr inbounds %struct.ipu_dp, %struct.ipu_dp* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.ipu_dp*, %struct.ipu_dp** %7, align 8
  store %struct.ipu_dp* %53, %struct.ipu_dp** %3, align 8
  br label %54

54:                                               ; preds = %50, %46, %15
  %55 = load %struct.ipu_dp*, %struct.ipu_dp** %3, align 8
  ret %struct.ipu_dp* %55
}

declare dso_local %struct.ipu_dp* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
