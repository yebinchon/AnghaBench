; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_device.c_dax_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_device.c_dax_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.file = type { %struct.dev_dax* }
%struct.dev_dax = type { %struct.dax_region* }
%struct.dax_region = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @dax_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dax_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.dev_dax*, align 8
  %19 = alloca %struct.dax_region*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.file*, %struct.file** %7, align 8
  %21 = icmp ne %struct.file* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.dev_dax*, %struct.dev_dax** %24, align 8
  br label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi %struct.dev_dax* [ %25, %22 ], [ null, %26 ]
  store %struct.dev_dax* %28, %struct.dev_dax** %18, align 8
  %29 = load %struct.dev_dax*, %struct.dev_dax** %18, align 8
  %30 = icmp ne %struct.dev_dax* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %27
  br label %97

35:                                               ; preds = %31
  %36 = load %struct.dev_dax*, %struct.dev_dax** %18, align 8
  %37 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %36, i32 0, i32 0
  %38 = load %struct.dax_region*, %struct.dax_region** %37, align 8
  store %struct.dax_region* %38, %struct.dax_region** %19, align 8
  %39 = load %struct.dax_region*, %struct.dax_region** %19, align 8
  %40 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %17, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = shl i64 %42, %43
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %45, %46
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %17, align 8
  %50 = call i64 @round_up(i64 %48, i64 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ule i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %35
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %17, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %35
  br label %97

61:                                               ; preds = %54
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add i64 %62, %63
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* %12, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %97

71:                                               ; preds = %61
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %75, align 8
  %77 = load %struct.file*, %struct.file** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 %76(%struct.file* %77, i64 %78, i64 %79, i64 %80, i64 %81)
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %16, align 8
  %84 = call i32 @IS_ERR_VALUE(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %71
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %16, align 8
  %89 = sub i64 %87, %88
  %90 = load i64, i64* %17, align 8
  %91 = sub i64 %90, 1
  %92 = and i64 %89, %91
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %16, align 8
  store i64 %95, i64* %6, align 8
  br label %109

96:                                               ; preds = %71
  br label %97

97:                                               ; preds = %96, %70, %60, %34
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %101, align 8
  %103 = load %struct.file*, %struct.file** %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i64 %102(%struct.file* %103, i64 %104, i64 %105, i64 %106, i64 %107)
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %97, %86
  %110 = load i64, i64* %6, align 8
  ret i64 %110
}

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i32 @IS_ERR_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
