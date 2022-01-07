; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma150_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@BMA150_MODE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma150_data*)* @bma150_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma150_open(%struct.bma150_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bma150_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bma150_data* %0, %struct.bma150_data** %3, align 8
  %5 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %6 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @pm_runtime_get_sync(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %12, %1
  %20 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %21 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BMA150_MODE_NORMAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %27 = load i64, i64* @BMA150_MODE_NORMAL, align 8
  %28 = call i32 @bma150_set_mode(%struct.bma150_data* %26, i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %19
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @bma150_set_mode(%struct.bma150_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
