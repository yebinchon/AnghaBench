; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_device_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_device_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dss_device = type { %struct.dss_device*, %struct.TYPE_3__*, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* }

@.str = private unnamed_addr constant [17 x i8] c"connect(%s, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapdss_device_connect(%struct.dss_device* %0, %struct.omap_dss_device* %1, %struct.omap_dss_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dss_device*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %5, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %6, align 8
  store %struct.omap_dss_device* %2, %struct.omap_dss_device** %7, align 8
  %9 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %10 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %14 = icmp ne %struct.omap_dss_device* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %17 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @dev_name(i32 %18)
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i8* [ %19, %15 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %20 ]
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %24 = icmp ne %struct.omap_dss_device* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %27 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @dev_name(i32 %28)
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i8* [ %29, %25 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %32)
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %35 = icmp ne %struct.omap_dss_device* %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %31
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %38 = icmp ne %struct.omap_dss_device* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %41 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %46 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  br label %53

50:                                               ; preds = %44, %36
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi i32 [ 0, %49 ], [ %52, %50 ]
  store i32 %54, i32* %4, align 4
  br label %81

55:                                               ; preds = %31
  %56 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %57 = call i64 @omapdss_device_is_connected(%struct.omap_dss_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %81

62:                                               ; preds = %55
  %63 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %64 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %65 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %64, i32 0, i32 0
  store %struct.dss_device* %63, %struct.dss_device** %65, align 8
  %66 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %67 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)** %69, align 8
  %71 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %72 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %73 = call i32 %70(%struct.omap_dss_device* %71, %struct.omap_dss_device* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %78 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %77, i32 0, i32 0
  store %struct.dss_device* null, %struct.dss_device** %78, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %76, %59, %53
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i64 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
