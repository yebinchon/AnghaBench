; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_init_piobuf_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_init_piobuf_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, i32, i32 (%struct.qib_devdata*)*, i64, i64, i64*, i32*, i64, i64, i64, i32 (i64, i32)* }

@QIB_SENDCTRL_DISARM_ALL = common dso_local global i32 0, align 4
@QIB_SENDCTRL_FLUSH = common dso_local global i32 0, align 4
@TXCHK_CHG_TYPE_KERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @init_piobuf_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_piobuf_state(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %7, i32 0, i32 13
  %9 = load i32 (i64, i32)*, i32 (i64, i32)** %8, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 12
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @QIB_SENDCTRL_DISARM_ALL, align 4
  %14 = call i32 %9(i64 %12, i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %33, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 13
  %24 = load i32 (i64, i32)*, i32 (i64, i32)** %23, align 8
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 12
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* @QIB_SENDCTRL_FLUSH, align 4
  %32 = call i32 %24(i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %5, align 4
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %36
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %51, %57
  br label %60

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %48
  %61 = phi i64 [ %58, %48 ], [ 0, %59 ]
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 11
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %86, %60
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %72 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %71, i32 0, i32 9
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @le64_to_cpu(i32 %78)
  %80 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %81 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %80, i32 0, i32 8
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %79, i64* %85, align 8
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %64

89:                                               ; preds = %64
  br label %90

90:                                               ; preds = %97, %89
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %93 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %92, i32 0, i32 8
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @ARRAY_SIZE(i64* %94)
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %99 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %98, i32 0, i32 8
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  store i64 0, i64* %104, align 8
  br label %90

105:                                              ; preds = %90
  %106 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %108 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %111 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load i32, i32* @TXCHK_CHG_TYPE_KERN, align 4
  %115 = call i32 @qib_chg_pioavailkernel(%struct.qib_devdata* %106, i32 0, i64 %113, i32 %114, i32* null)
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 5
  %118 = load i32 (%struct.qib_devdata*)*, i32 (%struct.qib_devdata*)** %117, align 8
  %119 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %120 = call i32 %118(%struct.qib_devdata* %119)
  ret void
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @qib_chg_pioavailkernel(%struct.qib_devdata*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
