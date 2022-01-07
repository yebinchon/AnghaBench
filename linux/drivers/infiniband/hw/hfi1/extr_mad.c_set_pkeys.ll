; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_set_pkeys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_set_pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i64* }

@LIM_MGMT_P_KEY = common dso_local global i64 0, align 8
@HFI1_IB_CFG_PKEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32, i64*)* @set_pkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pkeys(%struct.hfi1_devdata* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hfi1_pportdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %16, i64 %19
  store %struct.hfi1_pportdata* %20, %struct.hfi1_pportdata** %8, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %38, %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %24 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i64* %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load i64*, i64** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LIM_MGMT_P_KEY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %41

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %21

41:                                               ; preds = %36, %21
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %92

45:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %78, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %49 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @ARRAY_SIZE(i64* %50)
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %46
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %12, align 8
  %59 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %60 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %78

70:                                               ; preds = %53
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %73 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %71, i64* %77, align 8
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %70, %69
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %46

81:                                               ; preds = %46
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %86 = load i32, i32* @HFI1_IB_CFG_PKEYS, align 4
  %87 = call i32 @hfi1_set_ib_cfg(%struct.hfi1_pportdata* %85, i32 %86, i32 0)
  %88 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @hfi1_event_pkey_change(%struct.hfi1_devdata* %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %81
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %44
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @hfi1_set_ib_cfg(%struct.hfi1_pportdata*, i32, i32) #1

declare dso_local i32 @hfi1_event_pkey_change(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
