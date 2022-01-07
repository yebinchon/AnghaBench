; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_request_vc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_request_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.omap_dss_device* }

@.str = private unnamed_addr constant [29 x i8] c"cannot get VC for display %s\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32*)* @dsi_request_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_request_vc(%struct.omap_dss_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %9 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %8)
  store %struct.dsi_data* %9, %struct.dsi_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %39, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %13 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %24, align 8
  %26 = icmp ne %struct.omap_dss_device* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %17
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %29 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %30 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.omap_dss_device* %28, %struct.omap_dss_device** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %49

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %27
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
