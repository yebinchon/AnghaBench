; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_sdma_7322_gethead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_sdma_7322_gethead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64, i64, i64, i32*, %struct.qib_devdata* }
%struct.qib_devdata = type { i32 }

@QIB_HAS_SDMA_TIMEOUT = common dso_local global i32 0, align 4
@krp_senddmahead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_pportdata*)* @qib_sdma_7322_gethead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_sdma_7322_gethead(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 4
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  store %struct.qib_devdata* %12, %struct.qib_devdata** %3, align 8
  %13 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %14 = call i64 @__qib_sdma_running(%struct.qib_pportdata* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QIB_HAS_SDMA_TIMEOUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %1
  %24 = phi i1 [ false, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %98, %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le64_to_cpu(i32 %33)
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %37 = load i32, i32* @krp_senddmahead, align 4
  %38 = call i64 @qib_read_kreg_port(%struct.qib_pportdata* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i64 [ %34, %29 ], [ %38, %35 ]
  store i64 %40, i64* %9, align 8
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %48 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %39
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp sge i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp sle i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = and i32 %57, %61
  store i32 %62, i32* %4, align 4
  br label %88

63:                                               ; preds = %39
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71, %67
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp sle i64 %76, %77
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ true, %71 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %87

82:                                               ; preds = %63
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %79
  br label %88

88:                                               ; preds = %87, %53
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %5, align 4
  br label %26

99:                                               ; preds = %95
  %100 = load i64, i64* %6, align 8
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %99, %88
  %102 = load i64, i64* %9, align 8
  ret i64 %102
}

declare dso_local i64 @__qib_sdma_running(%struct.qib_pportdata*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @qib_read_kreg_port(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
