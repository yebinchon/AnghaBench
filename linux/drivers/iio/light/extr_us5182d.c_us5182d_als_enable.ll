; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_als_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_als_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us5182d_data = type { i64, i32, i32 }

@US5182D_ONESHOT = common dso_local global i64 0, align 8
@US5182D_ALS_ONLY = common dso_local global i32 0, align 4
@US5182D_ALS_PX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us5182d_data*)* @us5182d_als_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_als_enable(%struct.us5182d_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us5182d_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.us5182d_data* %0, %struct.us5182d_data** %3, align 8
  %6 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %7 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @US5182D_ONESHOT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %13 = load i32, i32* @US5182D_ALS_ONLY, align 4
  %14 = call i32 @us5182d_set_opmode(%struct.us5182d_data* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %11
  %20 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %21 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %20, i32 0, i32 1
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %24 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %49

28:                                               ; preds = %22
  %29 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %30 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @US5182D_ALS_PX, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @US5182D_ALS_ONLY, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %5, align 4
  %39 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @us5182d_set_opmode(%struct.us5182d_data* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %37
  %47 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %48 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %47, i32 0, i32 2
  store i32 1, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %44, %27, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @us5182d_set_opmode(%struct.us5182d_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
