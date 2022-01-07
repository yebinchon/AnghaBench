; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_release_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_resource = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ti_sci_release_resource(%struct.ti_sci_resource* %0, i64 %1) #0 {
  %3 = alloca %struct.ti_sci_resource*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ti_sci_resource* %0, %struct.ti_sci_resource** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %8 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* %8, i64 %9)
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %64, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %14 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %19 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %17
  %28 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %29 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %36 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %34, %41
  %43 = load i64, i64* %4, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %27
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %48 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %46, %53
  %55 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %56 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clear_bit(i64 %54, i32 %61)
  br label %63

63:                                               ; preds = %45, %27, %17
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %11

67:                                               ; preds = %11
  %68 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %69 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %68, i32 0, i32 1
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @raw_spin_unlock_irqrestore(i32* %69, i64 %70)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
