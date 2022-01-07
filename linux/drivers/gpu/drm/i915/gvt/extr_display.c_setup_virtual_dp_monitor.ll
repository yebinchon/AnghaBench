; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_display.c_setup_virtual_dp_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_display.c_setup_virtual_dp_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.intel_vgpu_port = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@GVT_EDID_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@virtual_dp_monitor_edid = common dso_local global i32* null, align 8
@EDID_SIZE = common dso_local global i32 0, align 4
@dpcd_fix_data = common dso_local global i32 0, align 4
@DPCD_HEADER_SIZE = common dso_local global i32 0, align 4
@DPCD_SINK_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i32, i32)* @setup_virtual_dp_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_virtual_dp_monitor(%struct.intel_vgpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_vgpu_port*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.intel_vgpu_port* @intel_vgpu_port(%struct.intel_vgpu* %11, i32 %12)
  store %struct.intel_vgpu_port* %13, %struct.intel_vgpu_port** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @GVT_EDID_NUM, align 4
  %16 = icmp uge i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %97

23:                                               ; preds = %4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 16, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_4__*
  %27 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %27, i32 0, i32 3
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %97

36:                                               ; preds = %23
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 16, i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_3__*
  %40 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %40, i32 0, i32 2
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %41, align 8
  %42 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %43 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %36
  %47 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %48 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @kfree(%struct.TYPE_4__* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %97

53:                                               ; preds = %36
  %54 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %55 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** @virtual_dp_monitor_edid, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EDID_SIZE, align 4
  %65 = call i32 @memcpy(i32* %58, i32 %63, i32 %64)
  %66 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %67 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  %70 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %71 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @dpcd_fix_data, align 4
  %76 = load i32, i32* @DPCD_HEADER_SIZE, align 4
  %77 = call i32 @memcpy(i32* %74, i32 %75, i32 %76)
  %78 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %79 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  %82 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %83 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @DPCD_SINK_COUNT, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %91 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.intel_vgpu_port*, %struct.intel_vgpu_port** %10, align 8
  %94 = getelementptr inbounds %struct.intel_vgpu_port, %struct.intel_vgpu_port* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %96 = call i32 @emulate_monitor_status_change(%struct.intel_vgpu* %95)
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %53, %46, %33, %20
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.intel_vgpu_port* @intel_vgpu_port(%struct.intel_vgpu*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @emulate_monitor_status_change(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
