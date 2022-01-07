; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { %struct.clk*, %struct.TYPE_4__*, %struct.clk*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.clk = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"can't get clock fck\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Failed to get %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dss_device*)* @dss_get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_get_clocks(%struct.dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca %struct.clk*, align 8
  store %struct.dss_device* %0, %struct.dss_device** %3, align 8
  %5 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %6 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call %struct.clk* @devm_clk_get(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %9, %struct.clk** %4, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = call i64 @IS_ERR(%struct.clk* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.clk*, %struct.clk** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.clk* %15)
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %20 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %19, i32 0, i32 2
  store %struct.clk* %18, %struct.clk** %20, align 8
  %21 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %22 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %17
  %28 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %29 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.clk* @clk_get(i32* null, i64 %32)
  store %struct.clk* %33, %struct.clk** %4, align 8
  %34 = load %struct.clk*, %struct.clk** %4, align 8
  %35 = call i64 @IS_ERR(%struct.clk* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %39 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load %struct.clk*, %struct.clk** %4, align 8
  %45 = call i32 @PTR_ERR(%struct.clk* %44)
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %27
  br label %48

47:                                               ; preds = %17
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.clk*, %struct.clk** %4, align 8
  %50 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %51 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %50, i32 0, i32 0
  store %struct.clk* %49, %struct.clk** %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %37, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @clk_get(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
