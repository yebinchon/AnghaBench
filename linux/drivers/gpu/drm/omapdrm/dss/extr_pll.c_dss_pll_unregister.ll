; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { %struct.dss_device* }
%struct.dss_device = type { %struct.dss_pll** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_pll_unregister(%struct.dss_pll* %0) #0 {
  %2 = alloca %struct.dss_pll*, align 8
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca i32, align 4
  store %struct.dss_pll* %0, %struct.dss_pll** %2, align 8
  %5 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  %6 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %5, i32 0, i32 0
  %7 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  store %struct.dss_device* %7, %struct.dss_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %11 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %10, i32 0, i32 0
  %12 = load %struct.dss_pll**, %struct.dss_pll*** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.dss_pll** %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %17 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %16, i32 0, i32 0
  %18 = load %struct.dss_pll**, %struct.dss_pll*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %18, i64 %20
  %22 = load %struct.dss_pll*, %struct.dss_pll** %21, align 8
  %23 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  %24 = icmp eq %struct.dss_pll* %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %27 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %26, i32 0, i32 0
  %28 = load %struct.dss_pll**, %struct.dss_pll*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %28, i64 %30
  store %struct.dss_pll* null, %struct.dss_pll** %31, align 8
  %32 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  %33 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %32, i32 0, i32 0
  store %struct.dss_device* null, %struct.dss_device** %33, align 8
  br label %38

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %8

38:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.dss_pll**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
