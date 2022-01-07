; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_alloc_client_monitors_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_alloc_client_monitors_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@heads = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*, i32)* @qxl_alloc_client_monitors_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_alloc_client_monitors_config(%struct.qxl_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %7 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %13 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %11, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %20 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @kfree(%struct.TYPE_4__* %21)
  %23 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %24 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %23, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %24, align 8
  br label %25

25:                                               ; preds = %18, %10, %2
  %26 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %27 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %25
  %31 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %32 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* @heads, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @struct_size(%struct.TYPE_4__* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.TYPE_4__* @kzalloc(i32 %36, i32 %37)
  %39 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %40 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %39, i32 0, i32 0
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %42 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %52 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
