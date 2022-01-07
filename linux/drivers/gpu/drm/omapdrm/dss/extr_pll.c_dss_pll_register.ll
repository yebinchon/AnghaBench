; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { %struct.dss_pll** }
%struct.dss_pll = type { %struct.dss_device* }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_pll_register(%struct.dss_device* %0, %struct.dss_pll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dss_device*, align 8
  %5 = alloca %struct.dss_pll*, align 8
  %6 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %4, align 8
  store %struct.dss_pll* %1, %struct.dss_pll** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %10 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %9, i32 0, i32 0
  %11 = load %struct.dss_pll**, %struct.dss_pll*** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.dss_pll** %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %7
  %15 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %16 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %15, i32 0, i32 0
  %17 = load %struct.dss_pll**, %struct.dss_pll*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %17, i64 %19
  %21 = load %struct.dss_pll*, %struct.dss_pll** %20, align 8
  %22 = icmp ne %struct.dss_pll* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %14
  %24 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %25 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %26 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %25, i32 0, i32 0
  %27 = load %struct.dss_pll**, %struct.dss_pll*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %27, i64 %29
  store %struct.dss_pll* %24, %struct.dss_pll** %30, align 8
  %31 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %32 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %33 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %32, i32 0, i32 0
  store %struct.dss_device* %31, %struct.dss_device** %33, align 8
  store i32 0, i32* %3, align 4
  br label %41

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ARRAY_SIZE(%struct.dss_pll**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
