; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_gmbus.c_gma_intel_gmbus_force_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_gmbus.c_gma_intel_gmbus_force_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }
%struct.intel_gmbus = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gma_intel_gmbus_force_bit(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_gmbus*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = call %struct.intel_gmbus* @to_intel_gmbus(%struct.i2c_adapter* %7)
  store %struct.intel_gmbus* %8, %struct.intel_gmbus** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %13 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 0
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %18, align 8
  store %struct.drm_psb_private* %19, %struct.drm_psb_private** %6, align 8
  %20 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %21 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %22 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 255
  %25 = call i32* @intel_gpio_create(%struct.drm_psb_private* %20, i32 %24)
  %26 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %27 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %16, %11
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %31 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %36 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @i2c_del_adapter(i32* %37)
  %39 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %40 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %44 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %34, %29
  br label %46

46:                                               ; preds = %45, %28
  ret void
}

declare dso_local %struct.intel_gmbus* @to_intel_gmbus(%struct.i2c_adapter*) #1

declare dso_local i32* @intel_gpio_create(%struct.drm_psb_private*, i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
