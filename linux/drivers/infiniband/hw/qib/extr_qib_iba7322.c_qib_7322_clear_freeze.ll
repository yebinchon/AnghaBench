; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_clear_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_clear_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@kr_errmask = common dso_local global i32 0, align 4
@krp_errmask = common dso_local global i32 0, align 4
@kr_control = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@kr_hwerrclear = common dso_local global i32 0, align 4
@kr_errclear = common dso_local global i32 0, align 4
@E_SPKT_ERRS_IGNORE = common dso_local global i64 0, align 8
@krp_errclear = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_7322_clear_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7322_clear_freeze(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = load i32, i32* @kr_errmask, align 4
  %6 = call i32 @qib_write_kreg(%struct.qib_devdata* %4, i32 %5, i64 0)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = load i32, i32* @krp_errmask, align 4
  %31 = call i32 @qib_write_kreg_port(%struct.TYPE_4__* %29, i32 %30, i64 0)
  br label %32

32:                                               ; preds = %23, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %38 = call i32 @qib_7322_set_intr_state(%struct.qib_devdata* %37, i32 0)
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %40 = load i32, i32* @kr_control, align 4
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @qib_write_kreg(%struct.qib_devdata* %39, i32 %40, i64 %43)
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = load i32, i32* @kr_scratch, align 4
  %47 = call i32 @qib_read_kreg32(%struct.qib_devdata* %45, i32 %46)
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = load i32, i32* @kr_hwerrclear, align 4
  %50 = call i32 @qib_write_kreg(%struct.qib_devdata* %48, i32 %49, i64 0)
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %52 = load i32, i32* @kr_errclear, align 4
  %53 = load i64, i64* @E_SPKT_ERRS_IGNORE, align 8
  %54 = call i32 @qib_write_kreg(%struct.qib_devdata* %51, i32 %52, i64 %53)
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %56 = load i32, i32* @kr_errmask, align 4
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %58 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @qib_write_kreg(%struct.qib_devdata* %55, i32 %56, i64 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %97, %36
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %66 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %63
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %97

80:                                               ; preds = %69
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %82 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = load i32, i32* @krp_errclear, align 4
  %88 = call i32 @qib_write_kreg_port(%struct.TYPE_4__* %86, i32 %87, i64 -1)
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %90 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = load i32, i32* @krp_errmask, align 4
  %96 = call i32 @qib_write_kreg_port(%struct.TYPE_4__* %94, i32 %95, i64 -1)
  br label %97

97:                                               ; preds = %80, %79
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %63

100:                                              ; preds = %63
  %101 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %102 = call i32 @qib_7322_set_intr_state(%struct.qib_devdata* %101, i32 1)
  ret void
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @qib_write_kreg_port(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @qib_7322_set_intr_state(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
