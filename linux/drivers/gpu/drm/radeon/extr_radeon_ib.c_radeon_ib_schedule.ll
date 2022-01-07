; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ib.c_radeon_ib_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ib.c_radeon_ib_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.radeon_ib = type { i64, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_fence = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"couldn't schedule ib\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_NUM_SYNCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"scheduling IB failed (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to sync rings (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to emit fence for new IB (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ib_schedule(%struct.radeon_device* %0, %struct.radeon_ib* %1, %struct.radeon_ib* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_ib*, align 8
  %8 = alloca %struct.radeon_ib*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %7, align 8
  store %struct.radeon_ib* %2, %struct.radeon_ib** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %16 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %17 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i64 %18
  store %struct.radeon_ring* %19, %struct.radeon_ring** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %10, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24, %4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %177

36:                                               ; preds = %24
  %37 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %10, align 8
  %39 = load i32, i32* @RADEON_NUM_SYNCS, align 4
  %40 = mul nsw i32 %39, 8
  %41 = add nsw i32 64, %40
  %42 = call i32 @radeon_ring_lock(%struct.radeon_device* %37, %struct.radeon_ring* %38, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %177

52:                                               ; preds = %36
  %53 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %54 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %59 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %60 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %63 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.radeon_fence* @radeon_vm_grab_id(%struct.radeon_device* %58, i64 %61, i64 %64)
  store %struct.radeon_fence* %65, %struct.radeon_fence** %12, align 8
  %66 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %67 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %66, i32 0, i32 3
  %68 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %69 = call i32 @radeon_sync_fence(%struct.TYPE_4__* %67, %struct.radeon_fence* %68)
  br label %70

70:                                               ; preds = %57, %52
  %71 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %72 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %73 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %72, i32 0, i32 3
  %74 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %75 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @radeon_sync_rings(%struct.radeon_device* %71, %struct.TYPE_4__* %73, i64 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %10, align 8
  %88 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %86, %struct.radeon_ring* %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %5, align 4
  br label %177

90:                                               ; preds = %70
  %91 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %92 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %97 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %98 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %101 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %104 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @radeon_vm_flush(%struct.radeon_device* %96, i64 %99, i64 %102, i32 %106)
  br label %108

108:                                              ; preds = %95, %90
  %109 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %110 = icmp ne %struct.radeon_ib* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %113 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %114 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %117 = call i32 @radeon_ring_ib_execute(%struct.radeon_device* %112, i64 %115, %struct.radeon_ib* %116)
  %118 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %119 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %120 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %119, i32 0, i32 3
  %121 = call i32 @radeon_sync_free(%struct.radeon_device* %118, %struct.TYPE_4__* %120, i32* null)
  br label %122

122:                                              ; preds = %111, %108
  %123 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %124 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %125 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %128 = call i32 @radeon_ring_ib_execute(%struct.radeon_device* %123, i64 %126, %struct.radeon_ib* %127)
  %129 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %130 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %131 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %130, i32 0, i32 1
  %132 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %133 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @radeon_fence_emit(%struct.radeon_device* %129, i32* %131, i64 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %122
  %139 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (i32, i8*, ...) @dev_err(i32 %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %145 = load %struct.radeon_ring*, %struct.radeon_ring** %10, align 8
  %146 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %144, %struct.radeon_ring* %145)
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %5, align 4
  br label %177

148:                                              ; preds = %122
  %149 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %150 = icmp ne %struct.radeon_ib* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %153 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @radeon_fence_ref(i32 %154)
  %156 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %157 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %151, %148
  %159 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %160 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %165 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %166 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %169 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @radeon_vm_fence(%struct.radeon_device* %164, i64 %167, i32 %170)
  br label %172

172:                                              ; preds = %163, %158
  %173 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %174 = load %struct.radeon_ring*, %struct.radeon_ring** %10, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %173, %struct.radeon_ring* %174, i32 %175)
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %172, %138, %80, %45, %29
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local %struct.radeon_fence* @radeon_vm_grab_id(%struct.radeon_device*, i64, i64) #1

declare dso_local i32 @radeon_sync_fence(%struct.TYPE_4__*, %struct.radeon_fence*) #1

declare dso_local i32 @radeon_sync_rings(%struct.radeon_device*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @radeon_ring_unlock_undo(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_vm_flush(%struct.radeon_device*, i64, i64, i32) #1

declare dso_local i32 @radeon_ring_ib_execute(%struct.radeon_device*, i64, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_sync_free(%struct.radeon_device*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, i32*, i64) #1

declare dso_local i32 @radeon_fence_ref(i32) #1

declare dso_local i32 @radeon_vm_fence(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
