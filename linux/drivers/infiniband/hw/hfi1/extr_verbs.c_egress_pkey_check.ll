; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_egress_pkey_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_egress_pkey_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, %struct.hfi1_devdata*, i32, i32* }
%struct.hfi1_devdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HFI1_PART_ENFORCE_OUT = common dso_local global i32 0, align 4
@PKEY_LOW_15_MASK = common dso_local global i32 0, align 4
@MAX_PKEY_VALUES = common dso_local global i32 0, align 4
@OPA_EI_STATUS_SMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egress_pkey_check(%struct.hfi1_pportdata* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_pportdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hfi1_devdata*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp ult i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %14, align 4
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HFI1_PART_ENFORCE_OUT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %111

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 15
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PKEY_LOW_15_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @PKEY_LOW_15_MASK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %77

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PKEY_LOW_15_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %77

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %47 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @egress_pkey_matches_entry(i32 %45, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %111

55:                                               ; preds = %44, %41
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @MAX_PKEY_VALUES, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %63 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @egress_pkey_matches_entry(i32 %61, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %111

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %56

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %40, %34
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %77
  %81 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %82 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %81, i32 0, i32 2
  %83 = call i32 @incr_cntr64(i32* %82)
  %84 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %85 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %84, i32 0, i32 1
  %86 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %85, align 8
  store %struct.hfi1_devdata* %86, %struct.hfi1_devdata** %12, align 8
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %88 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %80
  %95 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %96 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %97 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %103 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %107 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %94, %80
  br label %110

110:                                              ; preds = %109, %77
  store i32 1, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %71, %54, %24
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @egress_pkey_matches_entry(i32, i32) #1

declare dso_local i32 @incr_cntr64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
