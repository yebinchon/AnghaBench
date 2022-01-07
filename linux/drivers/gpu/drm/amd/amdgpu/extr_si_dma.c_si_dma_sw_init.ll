; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sdma%d\00", align 1
@AMDGPU_SDMA_IRQ_INSTANCE0 = common dso_local global i32 0, align 4
@AMDGPU_SDMA_IRQ_INSTANCE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @si_dma_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dma_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %7, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %11 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %10, i32 %11, i32 224, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %81

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %22 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %21, i32 %22, i32 244, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %76, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %32
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.amdgpu_ring* %47, %struct.amdgpu_ring** %4, align 8
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @sprintf(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %39
  %65 = load i32, i32* @AMDGPU_SDMA_IRQ_INSTANCE0, align 4
  br label %68

66:                                               ; preds = %39
  %67 = load i32, i32* @AMDGPU_SDMA_IRQ_INSTANCE1, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %57, %struct.amdgpu_ring* %58, i32 1024, i32* %61, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %81

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %32

79:                                               ; preds = %32
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %73, %29, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
