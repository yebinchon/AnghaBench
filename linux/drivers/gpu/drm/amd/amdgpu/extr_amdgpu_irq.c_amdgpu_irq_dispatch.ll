; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i64*, %struct.amdgpu_ih_ring }
%struct.TYPE_4__ = type { %struct.amdgpu_irq_src** }
%struct.amdgpu_irq_src = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* }
%struct.amdgpu_iv_entry = type { i32, i32, i32* }
%struct.amdgpu_ih_ring = type { i32, i32* }

@AMDGPU_IRQ_CLIENTID_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid client_id in IV: %d\0A\00", align 1
@AMDGPU_MAX_IRQ_SRC_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid src_id in IV: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Unregistered interrupt client_id: %d src_id: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"error processing interrupt (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unhandled interrupt src_id: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_irq_dispatch(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_iv_entry, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_irq_src*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %4, align 8
  %12 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 2
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %6, i32 0, i32 2
  store i32* %21, i32** %22, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = call i32 @amdgpu_ih_decode_iv(%struct.amdgpu_device* %23, %struct.amdgpu_iv_entry* %6)
  %25 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = ptrtoint %struct.amdgpu_ih_ring* %25 to i64
  %30 = ptrtoint %struct.amdgpu_ih_ring* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 16
  %33 = trunc i64 %32 to i32
  %34 = call i32 @trace_amdgpu_iv(i32 %33, %struct.amdgpu_iv_entry* %6)
  %35 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @AMDGPU_IRQ_CLIENTID_MAX, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %127

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @AMDGPU_MAX_IRQ_SRC_ID, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %126

52:                                               ; preds = %45
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @irq_find_mapping(i32 %66, i32 %67)
  %69 = call i32 @generic_handle_irq(i32 %68)
  br label %125

70:                                               ; preds = %52
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %78, align 8
  %80 = icmp ne %struct.amdgpu_irq_src** %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  br label %124

85:                                               ; preds = %70
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %94, i64 %96
  %98 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %97, align 8
  store %struct.amdgpu_irq_src* %98, %struct.amdgpu_irq_src** %9, align 8
  %99 = icmp ne %struct.amdgpu_irq_src* %98, null
  br i1 %99, label %100, label %120

100:                                              ; preds = %85
  %101 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %9, align 8
  %102 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)*, i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)** %104, align 8
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %9, align 8
  %108 = call i32 %105(%struct.amdgpu_device* %106, %struct.amdgpu_irq_src* %107, %struct.amdgpu_iv_entry* %6)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %119

114:                                              ; preds = %100
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 1, i32* %10, align 4
  br label %118

118:                                              ; preds = %117, %114
  br label %119

119:                                              ; preds = %118, %111
  br label %123

120:                                              ; preds = %85
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %120, %119
  br label %124

124:                                              ; preds = %123, %81
  br label %125

125:                                              ; preds = %124, %62
  br label %126

126:                                              ; preds = %125, %49
  br label %127

127:                                              ; preds = %126, %42
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %132 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %6, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @amdgpu_amdkfd_interrupt(%struct.amdgpu_device* %131, i32* %133)
  br label %135

135:                                              ; preds = %130, %127
  ret void
}

declare dso_local i32 @amdgpu_ih_decode_iv(%struct.amdgpu_device*, %struct.amdgpu_iv_entry*) #1

declare dso_local i32 @trace_amdgpu_iv(i32, %struct.amdgpu_iv_entry*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_amdkfd_interrupt(%struct.amdgpu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
