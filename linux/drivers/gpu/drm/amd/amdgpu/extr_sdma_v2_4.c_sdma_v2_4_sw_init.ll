; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_SDMA_TRAP = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_SDMA_SRBM_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to load sdma firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sdma%d\00", align 1
@AMDGPU_SDMA_IRQ_INSTANCE0 = common dso_local global i32 0, align 4
@AMDGPU_SDMA_IRQ_INSTANCE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdma_v2_4_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v2_4_sw_init(i8* %0) #0 {
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
  %12 = load i32, i32* @VISLANDS30_IV_SRCID_SDMA_TRAP, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %10, i32 %11, i32 %12, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %102

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %23 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %22, i32 %23, i32 241, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %102

32:                                               ; preds = %21
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %34 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %35 = load i32, i32* @VISLANDS30_IV_SRCID_SDMA_SRBM_WRITE, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %33, i32 %34, i32 %35, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %102

44:                                               ; preds = %32
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %46 = call i32 @sdma_v2_4_init_microcode(%struct.amdgpu_device* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %102

52:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %97, %52
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %100

60:                                               ; preds = %53
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store %struct.amdgpu_ring* %68, %struct.amdgpu_ring** %4, align 8
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @sprintf(i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %60
  %86 = load i32, i32* @AMDGPU_SDMA_IRQ_INSTANCE0, align 4
  br label %89

87:                                               ; preds = %60
  %88 = load i32, i32* @AMDGPU_SDMA_IRQ_INSTANCE1, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %78, %struct.amdgpu_ring* %79, i32 1024, i32* %82, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %102

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %53

100:                                              ; preds = %53
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %94, %49, %42, %30, %19
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @sdma_v2_4_init_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
