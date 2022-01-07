; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_get_free_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_get_free_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_resource = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@TI_SCI_RESOURCE_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ti_sci_get_free_resource(%struct.ti_sci_resource* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ti_sci_resource*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ti_sci_resource* %0, %struct.ti_sci_resource** %3, align 8
  %7 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %8 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* %8, i64 %9)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %14 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %11
  %18 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %19 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %26 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @find_first_zero_bit(i32 %24, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %35 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %33, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %17
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %45 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @set_bit(i64 %43, i32 %50)
  %52 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %53 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %52, i32 0, i32 1
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @raw_spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %57 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %62, %63
  store i64 %64, i64* %2, align 8
  br label %75

65:                                               ; preds = %17
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %11

69:                                               ; preds = %11
  %70 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %3, align 8
  %71 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %70, i32 0, i32 1
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @raw_spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i64, i64* @TI_SCI_RESOURCE_NULL, align 8
  store i64 %74, i64* %2, align 8
  br label %75

75:                                               ; preds = %69, %42
  %76 = load i64, i64* %2, align 8
  ret i64 %76
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
