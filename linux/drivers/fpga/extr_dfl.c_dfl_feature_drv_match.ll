; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_feature_drv_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_feature_drv_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_feature = type { i64 }
%struct.dfl_feature_driver = type { %struct.dfl_feature_id* }
%struct.dfl_feature_id = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dfl_feature*, %struct.dfl_feature_driver*)* @dfl_feature_drv_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfl_feature_drv_match(%struct.dfl_feature* %0, %struct.dfl_feature_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dfl_feature*, align 8
  %5 = alloca %struct.dfl_feature_driver*, align 8
  %6 = alloca %struct.dfl_feature_id*, align 8
  store %struct.dfl_feature* %0, %struct.dfl_feature** %4, align 8
  store %struct.dfl_feature_driver* %1, %struct.dfl_feature_driver** %5, align 8
  %7 = load %struct.dfl_feature_driver*, %struct.dfl_feature_driver** %5, align 8
  %8 = getelementptr inbounds %struct.dfl_feature_driver, %struct.dfl_feature_driver* %7, i32 0, i32 0
  %9 = load %struct.dfl_feature_id*, %struct.dfl_feature_id** %8, align 8
  store %struct.dfl_feature_id* %9, %struct.dfl_feature_id** %6, align 8
  %10 = load %struct.dfl_feature_id*, %struct.dfl_feature_id** %6, align 8
  %11 = icmp ne %struct.dfl_feature_id* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %27, %12
  %14 = load %struct.dfl_feature_id*, %struct.dfl_feature_id** %6, align 8
  %15 = getelementptr inbounds %struct.dfl_feature_id, %struct.dfl_feature_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.dfl_feature_id*, %struct.dfl_feature_id** %6, align 8
  %20 = getelementptr inbounds %struct.dfl_feature_id, %struct.dfl_feature_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dfl_feature*, %struct.dfl_feature** %4, align 8
  %23 = getelementptr inbounds %struct.dfl_feature, %struct.dfl_feature* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.dfl_feature_id*, %struct.dfl_feature_id** %6, align 8
  %29 = getelementptr inbounds %struct.dfl_feature_id, %struct.dfl_feature_id* %28, i32 1
  store %struct.dfl_feature_id* %29, %struct.dfl_feature_id** %6, align 8
  br label %13

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
