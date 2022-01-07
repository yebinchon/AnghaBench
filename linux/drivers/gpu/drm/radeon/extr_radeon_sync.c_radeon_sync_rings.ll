; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sync.c_radeon_sync_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sync.c_radeon_sync_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_sync = type { %struct.radeon_semaphore**, %struct.radeon_fence** }
%struct.radeon_semaphore = type { i32 }
%struct.radeon_fence = type { i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Syncing to a disabled ring!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_NUM_SYNCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_sync_rings(%struct.radeon_device* %0, %struct.radeon_sync* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_sync*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_fence*, align 8
  %12 = alloca %struct.radeon_semaphore*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_sync* %1, %struct.radeon_sync** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %141, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %144

17:                                               ; preds = %13
  %18 = load %struct.radeon_sync*, %struct.radeon_sync** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_sync, %struct.radeon_sync* %18, i32 0, i32 1
  %20 = load %struct.radeon_fence**, %struct.radeon_fence*** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %20, i64 %22
  %24 = load %struct.radeon_fence*, %struct.radeon_fence** %23, align 8
  store %struct.radeon_fence* %24, %struct.radeon_fence** %11, align 8
  %25 = load %struct.radeon_fence*, %struct.radeon_fence** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @radeon_fence_need_sync(%struct.radeon_fence* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %141

30:                                               ; preds = %17
  %31 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %30
  %41 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %145

47:                                               ; preds = %30
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @RADEON_NUM_SYNCS, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.radeon_fence*, %struct.radeon_fence** %11, align 8
  %53 = call i32 @radeon_fence_wait(%struct.radeon_fence* %52, i32 0)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %145

58:                                               ; preds = %51
  br label %141

59:                                               ; preds = %47
  %60 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %61 = call i32 @radeon_semaphore_create(%struct.radeon_device* %60, %struct.radeon_semaphore** %12)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %145

66:                                               ; preds = %59
  %67 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %12, align 8
  %68 = load %struct.radeon_sync*, %struct.radeon_sync** %6, align 8
  %69 = getelementptr inbounds %struct.radeon_sync, %struct.radeon_sync* %68, i32 0, i32 0
  %70 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds %struct.radeon_semaphore*, %struct.radeon_semaphore** %70, i64 %73
  store %struct.radeon_semaphore* %67, %struct.radeon_semaphore** %74, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %76 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = call i32 @radeon_ring_alloc(%struct.radeon_device* %75, %struct.TYPE_4__* %81, i32 16)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %66
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %145

87:                                               ; preds = %66
  %88 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %12, align 8
  %91 = call i32 @radeon_semaphore_emit_signal(%struct.radeon_device* %88, i32 %89, %struct.radeon_semaphore* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %87
  %94 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = call i32 @radeon_ring_undo(%struct.TYPE_4__* %99)
  %101 = load %struct.radeon_fence*, %struct.radeon_fence** %11, align 8
  %102 = call i32 @radeon_fence_wait(%struct.radeon_fence* %101, i32 0)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %145

107:                                              ; preds = %93
  br label %141

108:                                              ; preds = %87
  %109 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %12, align 8
  %112 = call i32 @radeon_semaphore_emit_wait(%struct.radeon_device* %109, i32 %110, %struct.radeon_semaphore* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %108
  %115 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = call i32 @radeon_ring_undo(%struct.TYPE_4__* %120)
  %122 = load %struct.radeon_fence*, %struct.radeon_fence** %11, align 8
  %123 = call i32 @radeon_fence_wait(%struct.radeon_fence* %122, i32 0)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %145

128:                                              ; preds = %114
  br label %141

129:                                              ; preds = %108
  %130 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = call i32 @radeon_ring_commit(%struct.radeon_device* %130, %struct.TYPE_4__* %136, i32 0)
  %138 = load %struct.radeon_fence*, %struct.radeon_fence** %11, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @radeon_fence_note_sync(%struct.radeon_fence* %138, i32 %139)
  br label %141

141:                                              ; preds = %129, %128, %107, %58, %29
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %13

144:                                              ; preds = %13
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %126, %105, %85, %64, %56, %40
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @radeon_fence_need_sync(%struct.radeon_fence*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_fence_wait(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_semaphore_create(%struct.radeon_device*, %struct.radeon_semaphore**) #1

declare dso_local i32 @radeon_ring_alloc(%struct.radeon_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @radeon_semaphore_emit_signal(%struct.radeon_device*, i32, %struct.radeon_semaphore*) #1

declare dso_local i32 @radeon_ring_undo(%struct.TYPE_4__*) #1

declare dso_local i32 @radeon_semaphore_emit_wait(%struct.radeon_device*, i32, %struct.radeon_semaphore*) #1

declare dso_local i32 @radeon_ring_commit(%struct.radeon_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @radeon_fence_note_sync(%struct.radeon_fence*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
