; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32 }
%struct.greybus_bundle_id = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.greybus_bundle_id* (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @greybus_match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.greybus_bundle_id* @greybus_match_id(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca %struct.greybus_bundle_id*, align 8
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %6 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %7 = icmp ne %struct.greybus_bundle_id* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.greybus_bundle_id* null, %struct.greybus_bundle_id** %3, align 8
  br label %44

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %40, %9
  %11 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %12 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %17 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %22 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %27 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %20, %15, %10
  %31 = phi i1 [ true, %20 ], [ true, %15 ], [ true, %10 ], [ %29, %25 ]
  br i1 %31, label %32, label %43

32:                                               ; preds = %30
  %33 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %34 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %35 = call i64 @greybus_match_one_id(%struct.gb_bundle* %33, %struct.greybus_bundle_id* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  store %struct.greybus_bundle_id* %38, %struct.greybus_bundle_id** %3, align 8
  br label %44

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %42 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %41, i32 1
  store %struct.greybus_bundle_id* %42, %struct.greybus_bundle_id** %5, align 8
  br label %10

43:                                               ; preds = %30
  store %struct.greybus_bundle_id* null, %struct.greybus_bundle_id** %3, align 8
  br label %44

44:                                               ; preds = %43, %37, %8
  %45 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %3, align 8
  ret %struct.greybus_bundle_id* %45
}

declare dso_local i64 @greybus_match_one_id(%struct.gb_bundle*, %struct.greybus_bundle_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
