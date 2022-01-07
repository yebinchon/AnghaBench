; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_compare_partition_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_compare_partition_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f34_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f34_data*)* @rmi_f34v7_compare_partition_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_f34v7_compare_partition_tables(%struct.f34_data* %0) #0 {
  %2 = alloca %struct.f34_data*, align 8
  store %struct.f34_data* %0, %struct.f34_data** %2, align 8
  %3 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %4 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %9 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %7, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %17 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %86

19:                                               ; preds = %1
  %20 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %21 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %26 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %24, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %34 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %86

36:                                               ; preds = %19
  %37 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %38 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %44 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %49 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %47, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %57 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %86

59:                                               ; preds = %42, %36
  %60 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %61 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %67 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %72 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %70, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %80 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %86

82:                                               ; preds = %65, %59
  %83 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %84 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %78, %55, %32, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
