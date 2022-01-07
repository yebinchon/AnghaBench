; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_send_monitors_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_send_monitors_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.qxl_head* }
%struct.qxl_head = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"head %d wrong: %dx%d+%d+%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qxl_device*)* @qxl_send_monitors_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_send_monitors_config(%struct.qxl_device* %0) #0 {
  %2 = alloca %struct.qxl_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_head*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %2, align 8
  %5 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %6 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %15 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %80

21:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %74, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %25 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %22
  %31 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %32 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.qxl_head*, %struct.qxl_head** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %35, i64 %37
  store %struct.qxl_head* %38, %struct.qxl_head** %4, align 8
  %39 = load %struct.qxl_head*, %struct.qxl_head** %4, align 8
  %40 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 8192
  br i1 %42, label %58, label %43

43:                                               ; preds = %30
  %44 = load %struct.qxl_head*, %struct.qxl_head** %4, align 8
  %45 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 8192
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.qxl_head*, %struct.qxl_head** %4, align 8
  %50 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 8192
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.qxl_head*, %struct.qxl_head** %4, align 8
  %55 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 8192
  br i1 %57, label %58, label %73

58:                                               ; preds = %53, %48, %43, %30
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.qxl_head*, %struct.qxl_head** %4, align 8
  %61 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qxl_head*, %struct.qxl_head** %4, align 8
  %64 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qxl_head*, %struct.qxl_head** %4, align 8
  %67 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qxl_head*, %struct.qxl_head** %4, align 8
  %70 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68, i32 %71)
  br label %80

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %22

77:                                               ; preds = %22
  %78 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %79 = call i32 @qxl_io_monitors_config(%struct.qxl_device* %78)
  br label %80

80:                                               ; preds = %77, %58, %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qxl_io_monitors_config(%struct.qxl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
