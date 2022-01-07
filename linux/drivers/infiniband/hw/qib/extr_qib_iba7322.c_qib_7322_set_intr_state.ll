; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_set_intr_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_set_intr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@QIB_BADINTR = common dso_local global i32 0, align 4
@kr_intmask = common dso_local global i32 0, align 4
@kr_intclear = common dso_local global i32 0, align 4
@kr_intgranted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i64)* @qib_7322_set_intr_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7322_set_intr_state(%struct.qib_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @QIB_BADINTR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %51

16:                                               ; preds = %8
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %18 = load i32, i32* @kr_intmask, align 4
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @qib_write_kreg(%struct.qib_devdata* %17, i32 %18, i64 %23)
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %26 = load i32, i32* @kr_intclear, align 4
  %27 = call i32 @qib_write_kreg(%struct.qib_devdata* %25, i32 %26, i64 0)
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %16
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = load i32, i32* @kr_intgranted, align 4
  %37 = call i64 @qib_read_kreg64(%struct.qib_devdata* %35, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %42 = load i32, i32* @kr_intgranted, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @qib_write_kreg(%struct.qib_devdata* %41, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %16
  br label %51

47:                                               ; preds = %2
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %49 = load i32, i32* @kr_intmask, align 4
  %50 = call i32 @qib_write_kreg(%struct.qib_devdata* %48, i32 %49, i64 0)
  br label %51

51:                                               ; preds = %15, %47, %46
  ret void
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
