; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_irq_src = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_irq_get(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %56

26:                                               ; preds = %17
  %27 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %6, align 8
  %28 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %31
  %42 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @atomic_inc_return(i32* %47)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @amdgpu_irq_update(%struct.amdgpu_device* %51, %struct.amdgpu_irq_src* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %50, %38, %23, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @amdgpu_irq_update(%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
