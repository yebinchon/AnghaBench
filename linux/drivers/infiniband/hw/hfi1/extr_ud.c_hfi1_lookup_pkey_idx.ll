; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_hfi1_lookup_pkey_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_hfi1_lookup_pkey_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32* }

@FULL_MGMT_P_KEY = common dso_local global i32 0, align 4
@LIM_MGMT_P_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_lookup_pkey_idx(%struct.hfi1_ibport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_ibport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_pportdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %10 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %9)
  store %struct.hfi1_pportdata* %10, %struct.hfi1_pportdata** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FULL_MGMT_P_KEY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LIM_MGMT_P_KEY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14, %2
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %22 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %28 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %89

38:                                               ; preds = %26
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %40 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LIM_MGMT_P_KEY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @FULL_MGMT_P_KEY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %89

60:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %89

61:                                               ; preds = %14
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 32767
  store i32 %63, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %85, %61
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %67 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @ARRAY_SIZE(i32* %68)
  %70 = icmp ult i32 %65, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %64
  %72 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %73 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 32767
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %89

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %64

88:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %82, %60, %58, %36
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
