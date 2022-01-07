; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { i32 }
%struct.dss_device = type { %struct.dss_pll** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dss_pll* @dss_pll_find(%struct.dss_device* %0, i8* %1) #0 {
  %3 = alloca %struct.dss_pll*, align 8
  %4 = alloca %struct.dss_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %10 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %9, i32 0, i32 0
  %11 = load %struct.dss_pll**, %struct.dss_pll*** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.dss_pll** %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %7
  %15 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %16 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %15, i32 0, i32 0
  %17 = load %struct.dss_pll**, %struct.dss_pll*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %17, i64 %19
  %21 = load %struct.dss_pll*, %struct.dss_pll** %20, align 8
  %22 = icmp ne %struct.dss_pll* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %14
  %24 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %25 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %24, i32 0, i32 0
  %26 = load %struct.dss_pll**, %struct.dss_pll*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %26, i64 %28
  %30 = load %struct.dss_pll*, %struct.dss_pll** %29, align 8
  %31 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strcmp(i32 %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %38 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %37, i32 0, i32 0
  %39 = load %struct.dss_pll**, %struct.dss_pll*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %39, i64 %41
  %43 = load %struct.dss_pll*, %struct.dss_pll** %42, align 8
  store %struct.dss_pll* %43, %struct.dss_pll** %3, align 8
  br label %49

44:                                               ; preds = %23, %14
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %7

48:                                               ; preds = %7
  store %struct.dss_pll* null, %struct.dss_pll** %3, align 8
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  ret %struct.dss_pll* %50
}

declare dso_local i32 @ARRAY_SIZE(%struct.dss_pll**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
