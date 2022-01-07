; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_match_one_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_match_one_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.greybus_bundle_id = type { i32, i64, i64, i64 }

@GREYBUS_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@GREYBUS_ID_MATCH_PRODUCT = common dso_local global i32 0, align 4
@GREYBUS_ID_MATCH_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @greybus_match_one_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greybus_match_one_id(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %6 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %7 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GREYBUS_ID_MATCH_VENDOR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %14 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %17 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %58

23:                                               ; preds = %12, %2
  %24 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %25 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GREYBUS_ID_MATCH_PRODUCT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %32 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %35 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %58

41:                                               ; preds = %30, %23
  %42 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %43 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GREYBUS_ID_MATCH_CLASS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %5, align 8
  %50 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %53 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %48, %41
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %40, %22
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
