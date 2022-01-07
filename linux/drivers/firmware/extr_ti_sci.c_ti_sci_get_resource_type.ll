; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_get_resource_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_get_resource_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ti_sci_rm_type_map* }
%struct.ti_sci_rm_type_map = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_info*, i64, i64*)* @ti_sci_get_resource_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_get_resource_type(%struct.ti_sci_info* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_sci_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ti_sci_rm_type_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ti_sci_info* %0, %struct.ti_sci_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.ti_sci_info*, %struct.ti_sci_info** %5, align 8
  %12 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ti_sci_rm_type_map*, %struct.ti_sci_rm_type_map** %14, align 8
  store %struct.ti_sci_rm_type_map* %15, %struct.ti_sci_rm_type_map** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ti_sci_rm_type_map*, %struct.ti_sci_rm_type_map** %8, align 8
  %17 = icmp ne %struct.ti_sci_rm_type_map* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  store i32 0, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load %struct.ti_sci_rm_type_map*, %struct.ti_sci_rm_type_map** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ti_sci_rm_type_map, %struct.ti_sci_rm_type_map* %23, i64 %25
  %27 = getelementptr inbounds %struct.ti_sci_rm_type_map, %struct.ti_sci_rm_type_map* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %22
  %31 = load %struct.ti_sci_rm_type_map*, %struct.ti_sci_rm_type_map** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ti_sci_rm_type_map, %struct.ti_sci_rm_type_map* %31, i64 %33
  %35 = getelementptr inbounds %struct.ti_sci_rm_type_map, %struct.ti_sci_rm_type_map* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.ti_sci_rm_type_map*, %struct.ti_sci_rm_type_map** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ti_sci_rm_type_map, %struct.ti_sci_rm_type_map* %40, i64 %42
  %44 = getelementptr inbounds %struct.ti_sci_rm_type_map, %struct.ti_sci_rm_type_map* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  store i32 1, i32* %9, align 4
  br label %51

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %22

51:                                               ; preds = %39, %22
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
