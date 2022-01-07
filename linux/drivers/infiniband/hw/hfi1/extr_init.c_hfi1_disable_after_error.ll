; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_disable_after_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_disable_after_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i64, %struct.TYPE_2__*, %struct.hfi1_pportdata* }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_pportdata = type { i32* }

@HFI1_INITTED = common dso_local global i32 0, align 4
@HFI1_PRESENT = common dso_local global i32 0, align 4
@HLS_DN_DISABLE = common dso_local global i32 0, align 4
@HFI1_STATUS_IB_READY = common dso_local global i32 0, align 4
@HFI1_STATUS_HWERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_disable_after_error(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HFI1_INITTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %1
  %12 = load i32, i32* @HFI1_INITTED, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 3
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %19, align 8
  %21 = icmp ne %struct.hfi1_pportdata* %20, null
  br i1 %21, label %22, label %63

22:                                               ; preds = %11
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %30, i32 0, i32 3
  %32 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %32, i64 %33
  store %struct.hfi1_pportdata* %34, %struct.hfi1_pportdata** %4, align 8
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HFI1_PRESENT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %43 = load i32, i32* @HLS_DN_DISABLE, align 4
  %44 = call i32 @set_link_state(%struct.hfi1_pportdata* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %29
  %46 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %47 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @HFI1_STATUS_IB_READY, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %54 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %52
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %3, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %23

62:                                               ; preds = %23
  br label %63

63:                                               ; preds = %62, %11
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %66 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* @HFI1_STATUS_HWERROR, align 4
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %72 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @set_link_state(%struct.hfi1_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
