; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_allocate_rcd_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_allocate_rcd_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i32, %struct.hfi1_ctxtdata** }
%struct.hfi1_ctxtdata = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*, i64*)* @allocate_rcd_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_rcd_index(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 1
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %17 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 2
  %23 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %23, i64 %24
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %25, align 8
  %27 = icmp ne %struct.hfi1_ctxtdata* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %33

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %14

33:                                               ; preds = %28, %14
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %42 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %45 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %44, i32 0, i32 2
  %46 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %46, i64 %47
  store %struct.hfi1_ctxtdata* %43, %struct.hfi1_ctxtdata** %48, align 8
  %49 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %50 = call i32 @hfi1_rcd_init(%struct.hfi1_ctxtdata* %49)
  br label %51

51:                                               ; preds = %39, %33
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %53 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %52, i32 0, i32 1
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %58 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %67

64:                                               ; preds = %51
  %65 = load i64, i64* %9, align 8
  %66 = load i64*, i64** %7, align 8
  store i64 %65, i64* %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hfi1_rcd_init(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
