; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_set_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_set_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@VFIO_IRQ_SET_ACTION_TYPE_MASK = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)* @intel_vgpu_set_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vgpu_set_irqs(%struct.intel_vgpu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_vgpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)* null, i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)** %14, align 8
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %31 [
    i32 129, label %16
    i32 128, label %24
  ]

16:                                               ; preds = %6
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @VFIO_IRQ_SET_ACTION_TYPE_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %23 [
    i32 132, label %20
    i32 130, label %21
    i32 131, label %22
  ]

20:                                               ; preds = %16
  store i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)* @intel_vgpu_set_intx_mask, i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %23

21:                                               ; preds = %16
  store i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)* @intel_vgpu_set_intx_unmask, i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %23

22:                                               ; preds = %16
  store i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)* @intel_vgpu_set_intx_trigger, i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %23

23:                                               ; preds = %16, %22, %21, %20
  br label %31

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @VFIO_IRQ_SET_ACTION_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %30 [
    i32 132, label %28
    i32 130, label %28
    i32 131, label %29
  ]

28:                                               ; preds = %24, %24
  br label %30

29:                                               ; preds = %24
  store i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)* @intel_vgpu_set_msi_trigger, i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %30

30:                                               ; preds = %24, %29, %28
  br label %31

31:                                               ; preds = %6, %30, %23
  %32 = load i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)*, i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)** %14, align 8
  %33 = icmp ne i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @ENOTTY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %46

37:                                               ; preds = %31
  %38 = load i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)*, i32 (%struct.intel_vgpu*, i32, i32, i32, i32, i8*)** %14, align 8
  %39 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 %38(%struct.intel_vgpu* %39, i32 %40, i32 %41, i32 %42, i32 %43, i8* %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %37, %34
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @intel_vgpu_set_intx_mask(%struct.intel_vgpu*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @intel_vgpu_set_intx_unmask(%struct.intel_vgpu*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @intel_vgpu_set_intx_trigger(%struct.intel_vgpu*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @intel_vgpu_set_msi_trigger(%struct.intel_vgpu*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
