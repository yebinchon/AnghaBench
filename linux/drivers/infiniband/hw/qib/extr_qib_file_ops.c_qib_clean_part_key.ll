; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_clean_part_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_clean_part_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }
%struct.qib_devdata = type { i32 }

@QIB_IB_CFG_PKEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*, %struct.qib_devdata*)* @qib_clean_part_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_clean_part_key(%struct.qib_ctxtdata* %0, %struct.qib_devdata* %1) #0 {
  %3 = alloca %struct.qib_ctxtdata*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %3, align 8
  store %struct.qib_devdata* %1, %struct.qib_devdata** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %9, i32 0, i32 1
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  store %struct.qib_pportdata* %11, %struct.qib_pportdata** %8, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %85, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %12
  %20 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %21 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %85

29:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %75, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %30
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 32767
  %46 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %47 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 32767
  %54 = icmp ne i32 %45, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %75

56:                                               ; preds = %37
  %57 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %58 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i64 @atomic_dec_and_test(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %67 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %65, %56
  br label %78

75:                                               ; preds = %55
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %30

78:                                               ; preds = %74, %30
  %79 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %80 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %28
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %12

88:                                               ; preds = %12
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %93 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %95, align 8
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %98 = load i32, i32* @QIB_IB_CFG_PKEYS, align 4
  %99 = call i32 %96(%struct.qib_pportdata* %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %91, %88
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
