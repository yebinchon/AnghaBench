; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@qib_ibmtu = common dso_local global i32 0, align 4
@QIB_PIO_MAXIBHDR = common dso_local global i32 0, align 4
@QIB_IB_CFG_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_set_mtu(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 256
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 512
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 1024
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 2048
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 4096
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %105

25:                                               ; preds = %19, %16, %13, %10, %2
  %26 = load i32, i32* @qib_ibmtu, align 4
  %27 = call i32 @ib_mtu_enum_to_int(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %105

37:                                               ; preds = %30, %25
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %43 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @QIB_PIO_MAXIBHDR, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %52 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %62 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %67 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub i64 %69, 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %65, %59, %55
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %75 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %49
  br label %96

77:                                               ; preds = %37
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @QIB_PIO_MAXIBHDR, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %82 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @QIB_PIO_MAXIBHDR, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = sub i64 %89, 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %94 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %85, %77
  br label %96

96:                                               ; preds = %95, %76
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %98 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %100, align 8
  %102 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %103 = load i32, i32* @QIB_IB_CFG_MTU, align 4
  %104 = call i32 %101(%struct.qib_pportdata* %102, i32 %103, i32 0)
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %96, %34, %22
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @ib_mtu_enum_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
