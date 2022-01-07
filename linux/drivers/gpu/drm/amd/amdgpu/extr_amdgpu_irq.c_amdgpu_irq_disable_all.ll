; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_disable_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amdgpu_irq_src** }
%struct.amdgpu_irq_src = type { i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* }

@AMDGPU_IRQ_CLIENTID_MAX = common dso_local global i32 0, align 4
@AMDGPU_MAX_IRQ_SRC_ID = common dso_local global i32 0, align 4
@AMDGPU_IRQ_STATE_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error disabling interrupt (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_irq_disable_all(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_irq_src*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %103, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AMDGPU_IRQ_CLIENTID_MAX, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %106

18:                                               ; preds = %14
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %26, align 8
  %28 = icmp ne %struct.amdgpu_irq_src** %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %103

30:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %99, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @AMDGPU_MAX_IRQ_SRC_ID, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %102

35:                                               ; preds = %31
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %44, i64 %46
  %48 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %47, align 8
  store %struct.amdgpu_irq_src* %48, %struct.amdgpu_irq_src** %8, align 8
  %49 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %8, align 8
  %50 = icmp ne %struct.amdgpu_irq_src* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %35
  %52 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %8, align 8
  %53 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)*, i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %8, align 8
  %60 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %51, %35
  br label %99

64:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %95, %64
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %8, align 8
  %68 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %8, align 8
  %73 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @atomic_set(i32* %77, i32 0)
  %79 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %8, align 8
  %80 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)*, i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)** %82, align 8
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %85 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %8, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @AMDGPU_IRQ_STATE_DISABLE, align 4
  %88 = call i32 %83(%struct.amdgpu_device* %84, %struct.amdgpu_irq_src* %85, i32 %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %71
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %71
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %65

98:                                               ; preds = %65
  br label %99

99:                                               ; preds = %98, %63
  %100 = load i32, i32* %5, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %31

102:                                              ; preds = %31
  br label %103

103:                                              ; preds = %102, %29
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %14

106:                                              ; preds = %14
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %3, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
