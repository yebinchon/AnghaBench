; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_interrupt.c_handle_default_event_virt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_interrupt.c_handle_default_event_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt_irq = type { i32 }
%struct.intel_vgpu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"vgpu%d: IRQ receive event %d (%s)\0A\00", align 1
@irq_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt_irq*, i32, %struct.intel_vgpu*)* @handle_default_event_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_default_event_virt(%struct.intel_gvt_irq* %0, i32 %1, %struct.intel_vgpu* %2) #0 {
  %4 = alloca %struct.intel_gvt_irq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  store %struct.intel_gvt_irq* %0, %struct.intel_gvt_irq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.intel_vgpu* %2, %struct.intel_vgpu** %6, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %3
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** @irq_name, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %25)
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %16, %3
  %35 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %38 = call i32 @propagate_event(%struct.intel_gvt_irq* %35, i32 %36, %struct.intel_vgpu* %37)
  ret void
}

declare dso_local i32 @gvt_dbg_core(i8*, i32, i32, i32) #1

declare dso_local i32 @propagate_event(%struct.intel_gvt_irq*, i32, %struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
