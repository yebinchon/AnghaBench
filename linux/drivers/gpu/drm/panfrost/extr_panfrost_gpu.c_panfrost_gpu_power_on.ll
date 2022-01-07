; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@L2_PWRON_LO = common dso_local global i32 0, align 4
@L2_READY_LO = common dso_local global i64 0, align 8
@STACK_PWRON_LO = common dso_local global i32 0, align 4
@STACK_READY_LO = common dso_local global i64 0, align 8
@SHADER_PWRON_LO = common dso_local global i32 0, align 4
@SHADER_READY_LO = common dso_local global i64 0, align 8
@TILER_PWRON_LO = common dso_local global i32 0, align 4
@TILER_READY_LO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"error powering up gpu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panfrost_gpu_power_on(%struct.panfrost_device* %0) #0 {
  %2 = alloca %struct.panfrost_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.panfrost_device* %0, %struct.panfrost_device** %2, align 8
  %5 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %6 = load i32, i32* @L2_PWRON_LO, align 4
  %7 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %8 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @gpu_write(%struct.panfrost_device* %5, i32 %6, i64 %10)
  %12 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %13 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @L2_READY_LO, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %20 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @readl_relaxed_poll_timeout(i64 %16, i64 %17, i32 %24, i32 100, i32 1000)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %27 = load i32, i32* @STACK_PWRON_LO, align 4
  %28 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %29 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gpu_write(%struct.panfrost_device* %26, i32 %27, i64 %31)
  %33 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %34 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STACK_READY_LO, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %41 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @readl_relaxed_poll_timeout(i64 %37, i64 %38, i32 %45, i32 100, i32 1000)
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %50 = load i32, i32* @SHADER_PWRON_LO, align 4
  %51 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %52 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @gpu_write(%struct.panfrost_device* %49, i32 %50, i64 %54)
  %56 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %57 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SHADER_READY_LO, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %64 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @readl_relaxed_poll_timeout(i64 %60, i64 %61, i32 %68, i32 100, i32 1000)
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %73 = load i32, i32* @TILER_PWRON_LO, align 4
  %74 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %75 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @gpu_write(%struct.panfrost_device* %72, i32 %73, i64 %77)
  %79 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %80 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TILER_READY_LO, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %87 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %85, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @readl_relaxed_poll_timeout(i64 %83, i64 %84, i32 %91, i32 100, i32 1000)
  %93 = load i32, i32* %3, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %1
  %98 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %99 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %1
  ret void
}

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i64) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
