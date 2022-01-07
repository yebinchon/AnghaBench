; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_find_by_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_find_by_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { i32 }
%struct.dss_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dsi0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"video0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dsi1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"video1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dss_pll* @dss_pll_find_by_src(%struct.dss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dss_pll*, align 8
  %4 = alloca %struct.dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dss_pll*, align 8
  store %struct.dss_device* %0, %struct.dss_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %8 [
    i32 135, label %9
    i32 134, label %10
    i32 133, label %13
    i32 132, label %13
    i32 131, label %13
    i32 130, label %23
    i32 129, label %23
    i32 128, label %23
  ]

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %2, %8
  store %struct.dss_pll* null, %struct.dss_pll** %3, align 8
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %12 = call %struct.dss_pll* @dss_pll_find(%struct.dss_device* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.dss_pll* %12, %struct.dss_pll** %3, align 8
  br label %33

13:                                               ; preds = %2, %2, %2
  %14 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %15 = call %struct.dss_pll* @dss_pll_find(%struct.dss_device* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dss_pll* %15, %struct.dss_pll** %6, align 8
  %16 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %17 = icmp ne %struct.dss_pll* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %20 = call %struct.dss_pll* @dss_pll_find(%struct.dss_device* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dss_pll* %20, %struct.dss_pll** %6, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  store %struct.dss_pll* %22, %struct.dss_pll** %3, align 8
  br label %33

23:                                               ; preds = %2, %2, %2
  %24 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %25 = call %struct.dss_pll* @dss_pll_find(%struct.dss_device* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dss_pll* %25, %struct.dss_pll** %6, align 8
  %26 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %27 = icmp ne %struct.dss_pll* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %30 = call %struct.dss_pll* @dss_pll_find(%struct.dss_device* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.dss_pll* %30, %struct.dss_pll** %6, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  store %struct.dss_pll* %32, %struct.dss_pll** %3, align 8
  br label %33

33:                                               ; preds = %31, %21, %10, %9
  %34 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  ret %struct.dss_pll* %34
}

declare dso_local %struct.dss_pll* @dss_pll_find(%struct.dss_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
