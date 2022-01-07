; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_pf_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_pf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@_PS_1A_CTRL = common dso_local global i32 0, align 4
@_PS_2A_CTRL = common dso_local global i32 0, align 4
@_PS_1B_CTRL = common dso_local global i32 0, align 4
@_PS_2B_CTRL = common dso_local global i32 0, align 4
@_PS_1C_CTRL = common dso_local global i32 0, align 4
@PS_PLANE_SEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"VM(%d): guest is trying to scaling a plane\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @pf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @_PS_1A_CTRL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @_PS_2A_CTRL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @_PS_1B_CTRL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @_PS_2B_CTRL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @_PS_1C_CTRL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29, %25, %21, %17, %4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @PS_PLANE_SEL_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %40 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %49

43:                                               ; preds = %33, %29
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @intel_vgpu_default_mmio_write(%struct.intel_vgpu* %44, i32 %45, i8* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @intel_vgpu_default_mmio_write(%struct.intel_vgpu*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
