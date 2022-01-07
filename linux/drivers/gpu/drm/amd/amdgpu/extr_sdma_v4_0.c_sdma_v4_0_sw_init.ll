; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32* }
%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { %struct.amdgpu_ring, %struct.amdgpu_ring }
%struct.TYPE_5__ = type { i32* }

@SDMA0_4_0__SRCID__SDMA_TRAP = common dso_local global i32 0, align 4
@SDMA0_4_0__SRCID__SDMA_SRAM_ECC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"use_doorbell being set to: [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sdma%d\00", align 1
@AMDGPU_SDMA_IRQ_INSTANCE0 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"page%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdma_v4_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_sw_init(i8* %0) #0 {
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
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sdma_v4_0_seq_to_irq_id(i32 %19)
  %21 = load i32, i32* @SDMA0_4_0__SRCID__SDMA_TRAP, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %18, i32 %20, i32 %21, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %177

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %10

34:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sdma_v4_0_seq_to_irq_id(i32 %44)
  %46 = load i32, i32* @SDMA0_4_0__SRCID__SDMA_SRAM_ECC, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %43, i32 %45, i32 %46, i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %177

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %35

59:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %172, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %175

67:                                               ; preds = %60
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store %struct.amdgpu_ring* %75, %struct.amdgpu_ring** %4, align 8
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %81 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32 @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 1
  %96 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %97 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %99 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @sprintf(i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %104 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* @AMDGPU_SDMA_IRQ_INSTANCE0, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %103, %struct.amdgpu_ring* %104, i32 1024, i32* %107, i64 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %67
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %177

117:                                              ; preds = %67
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %171

123:                                              ; preds = %117
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store %struct.amdgpu_ring* %131, %struct.amdgpu_ring** %4, align 8
  %132 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %133 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %132, i32 0, i32 3
  store i32* null, i32** %133, align 8
  %134 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %135 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 1
  %145 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %146 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %148 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1024
  store i32 %150, i32* %148, align 4
  %151 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %152 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @sprintf(i32 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i64, i64* @AMDGPU_SDMA_IRQ_INSTANCE0, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %156, %struct.amdgpu_ring* %157, i32 1024, i32* %160, i64 %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %123
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %2, align 4
  br label %177

170:                                              ; preds = %123
  br label %171

171:                                              ; preds = %170, %117
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %60

175:                                              ; preds = %60
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %168, %115, %53, %28
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @sdma_v4_0_seq_to_irq_id(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
