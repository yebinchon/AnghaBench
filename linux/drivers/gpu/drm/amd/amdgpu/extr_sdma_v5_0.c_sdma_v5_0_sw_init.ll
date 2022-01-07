; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32* }
%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amdgpu_ring }
%struct.TYPE_5__ = type { i32* }

@SOC15_IH_CLIENTID_SDMA0 = common dso_local global i32 0, align 4
@SDMA0_5_0__SRCID__SDMA_TRAP = common dso_local global i32 0, align 4
@SOC15_IH_CLIENTID_SDMA1 = common dso_local global i32 0, align 4
@SDMA1_5_0__SRCID__SDMA_TRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to load sdma firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"use_doorbell being set to: [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sdma%d\00", align 1
@AMDGPU_SDMA_IRQ_INSTANCE0 = common dso_local global i32 0, align 4
@AMDGPU_SDMA_IRQ_INSTANCE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdma_v5_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v5_0_sw_init(i8* %0) #0 {
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
  %11 = load i32, i32* @SOC15_IH_CLIENTID_SDMA0, align 4
  %12 = load i32, i32* @SDMA0_5_0__SRCID__SDMA_TRAP, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %10, i32 %11, i32 %12, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %120

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %23 = load i32, i32* @SOC15_IH_CLIENTID_SDMA1, align 4
  %24 = load i32, i32* @SDMA1_5_0__SRCID__SDMA_TRAP, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %22, i32 %23, i32 %24, i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %120

33:                                               ; preds = %21
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %35 = call i32 @sdma_v5_0_init_microcode(%struct.amdgpu_device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %120

41:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %115, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %118

49:                                               ; preds = %42
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.amdgpu_ring* %57, %struct.amdgpu_ring** %4, align 8
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %68 = call i32 @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %49
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 1
  br label %87

79:                                               ; preds = %49
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 1
  br label %87

87:                                               ; preds = %79, %71
  %88 = phi i32 [ %78, %71 ], [ %86, %79 ]
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %92 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @sprintf(i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %97 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = load i32, i32* @AMDGPU_SDMA_IRQ_INSTANCE0, align 4
  br label %107

105:                                              ; preds = %87
  %106 = load i32, i32* @AMDGPU_SDMA_IRQ_INSTANCE1, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %96, %struct.amdgpu_ring* %97, i32 1024, i32* %100, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %120

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %42

118:                                              ; preds = %42
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %112, %38, %31, %19
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @sdma_v5_0_init_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_INFO(i8*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
