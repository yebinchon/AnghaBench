; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_update_dumb_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_update_dumb_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.qxl_bo = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"#%d: %dx%d -> %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qxl_device*, i32, %struct.qxl_bo*)* @qxl_update_dumb_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_update_dumb_head(%struct.qxl_device* %0, i32 %1, %struct.qxl_bo* %2) #0 {
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qxl_bo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qxl_bo* %2, %struct.qxl_bo** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %11 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %95

17:                                               ; preds = %3
  %18 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %19 = icmp ne %struct.qxl_bo* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %22 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %27 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %31 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  br label %35

34:                                               ; preds = %20, %17
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %37 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %48 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %95

58:                                               ; preds = %46, %35
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %61 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %69 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %67, i64 %75, i64 %76, i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %81 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 %79, i64* %86, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %89 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i64 %87, i64* %94, align 8
  br label %95

95:                                               ; preds = %58, %57, %16
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
