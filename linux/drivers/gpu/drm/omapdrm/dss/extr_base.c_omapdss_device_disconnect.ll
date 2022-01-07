; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_device_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_device_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i64, %struct.dss_device*, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.dss_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* }

@.str = private unnamed_addr constant [20 x i8] c"disconnect(%s, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omapdss_device_disconnect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %4, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = icmp ne %struct.omap_dss_device* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %10 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %9, i32 0, i32 1
  %11 = load %struct.dss_device*, %struct.dss_device** %10, align 8
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %14 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %13, i32 0, i32 1
  %15 = load %struct.dss_device*, %struct.dss_device** %14, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi %struct.dss_device* [ %11, %8 ], [ %15, %12 ]
  store %struct.dss_device* %17, %struct.dss_device** %5, align 8
  %18 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %19 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %23 = icmp ne %struct.omap_dss_device* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %26 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @dev_name(i32 %27)
  br label %30

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i8* [ %28, %24 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %33 = icmp ne %struct.omap_dss_device* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %36 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @dev_name(i32 %37)
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i8* [ %38, %34 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %41)
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %44 = icmp ne %struct.omap_dss_device* %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %47 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %52 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi i1 [ false, %45 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  br label %95

60:                                               ; preds = %40
  %61 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %62 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %67 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %71 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON(i32 %75)
  br label %95

77:                                               ; preds = %65, %60
  %78 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %79 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @OMAP_DSS_DISPLAY_DISABLED, align 8
  %82 = icmp ne i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %86 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)** %88, align 8
  %90 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %91 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %92 = call i32 %89(%struct.omap_dss_device* %90, %struct.omap_dss_device* %91)
  %93 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %94 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %93, i32 0, i32 1
  store %struct.dss_device* null, %struct.dss_device** %94, align 8
  br label %95

95:                                               ; preds = %77, %69, %56
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
