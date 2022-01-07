; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_test_ring_sync2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_test_ring_sync2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i32 }
%struct.radeon_semaphore = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to create semaphore\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to lock ring A %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to lock ring B %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Fence A signaled without waiting for semaphore.\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Fence B signaled without waiting for semaphore.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to lock ring B %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Neither fence A nor B has been signaled\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Both fence A and B has been signaled\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Fence %c was first signaled\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to wait for sync fence A\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to wait for sync fence B\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Error while testing ring sync (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ring*, %struct.radeon_ring*, %struct.radeon_ring*)* @radeon_test_ring_sync2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_test_ring_sync2(%struct.radeon_device* %0, %struct.radeon_ring* %1, %struct.radeon_ring* %2, %struct.radeon_ring* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca %struct.radeon_ring*, align 8
  %8 = alloca %struct.radeon_ring*, align 8
  %9 = alloca %struct.radeon_fence*, align 8
  %10 = alloca %struct.radeon_fence*, align 8
  %11 = alloca %struct.radeon_semaphore*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store %struct.radeon_ring* %2, %struct.radeon_ring** %7, align 8
  store %struct.radeon_ring* %3, %struct.radeon_ring** %8, align 8
  store %struct.radeon_fence* null, %struct.radeon_fence** %9, align 8
  store %struct.radeon_fence* null, %struct.radeon_fence** %10, align 8
  store %struct.radeon_semaphore* null, %struct.radeon_semaphore** %11, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %17 = call i32 @radeon_semaphore_create(%struct.radeon_device* %16, %struct.radeon_semaphore** %11)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %184

22:                                               ; preds = %4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %25 = call i32 @radeon_ring_lock(%struct.radeon_device* %23, %struct.radeon_ring* %24, i32 64)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %184

33:                                               ; preds = %22
  %34 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %11, align 8
  %39 = call i32 @radeon_semaphore_emit_wait(%struct.radeon_device* %34, i32 %37, %struct.radeon_semaphore* %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %42 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %40, %struct.radeon_ring* %41, i32 0)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %45 = call i32 @radeon_test_create_and_emit_fence(%struct.radeon_device* %43, %struct.radeon_ring* %44, %struct.radeon_fence** %9)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %184

49:                                               ; preds = %33
  %50 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %52 = call i32 @radeon_ring_lock(%struct.radeon_device* %50, %struct.radeon_ring* %51, i32 64)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %57 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %184

60:                                               ; preds = %49
  %61 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %63 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %11, align 8
  %66 = call i32 @radeon_semaphore_emit_wait(%struct.radeon_device* %61, i32 %64, %struct.radeon_semaphore* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %69 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %67, %struct.radeon_ring* %68, i32 0)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %72 = call i32 @radeon_test_create_and_emit_fence(%struct.radeon_device* %70, %struct.radeon_ring* %71, %struct.radeon_fence** %10)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %184

76:                                               ; preds = %60
  %77 = call i32 @msleep(i32 1000)
  %78 = load %struct.radeon_fence*, %struct.radeon_fence** %9, align 8
  %79 = call i32 @radeon_fence_signaled(%struct.radeon_fence* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %184

83:                                               ; preds = %76
  %84 = load %struct.radeon_fence*, %struct.radeon_fence** %10, align 8
  %85 = call i32 @radeon_fence_signaled(%struct.radeon_fence* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %184

89:                                               ; preds = %83
  %90 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %91 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %92 = call i32 @radeon_ring_lock(%struct.radeon_device* %90, %struct.radeon_ring* %91, i32 64)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %97 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), %struct.radeon_ring* %96)
  br label %184

98:                                               ; preds = %89
  %99 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %101 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %11, align 8
  %104 = call i32 @radeon_semaphore_emit_signal(%struct.radeon_device* %99, i32 %102, %struct.radeon_semaphore* %103)
  %105 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %107 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %105, %struct.radeon_ring* %106, i32 0)
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %124, %98
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 30
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = call i32 @msleep(i32 100)
  %113 = load %struct.radeon_fence*, %struct.radeon_fence** %9, align 8
  %114 = call i32 @radeon_fence_signaled(%struct.radeon_fence* %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.radeon_fence*, %struct.radeon_fence** %10, align 8
  %116 = call i32 @radeon_fence_signaled(%struct.radeon_fence* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %111
  br label %127

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %108

127:                                              ; preds = %122, %108
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %184

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %184

143:                                              ; preds = %138, %135
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 65, i32 66
  %149 = trunc i32 %148 to i8
  %150 = call i32 @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8 signext %149)
  %151 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %152 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %153 = call i32 @radeon_ring_lock(%struct.radeon_device* %151, %struct.radeon_ring* %152, i32 64)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %158 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), %struct.radeon_ring* %157)
  br label %184

159:                                              ; preds = %144
  %160 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %161 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %162 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %11, align 8
  %165 = call i32 @radeon_semaphore_emit_signal(%struct.radeon_device* %160, i32 %163, %struct.radeon_semaphore* %164)
  %166 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %167 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %168 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %166, %struct.radeon_ring* %167, i32 0)
  %169 = call i32 @msleep(i32 1000)
  %170 = load %struct.radeon_fence*, %struct.radeon_fence** %9, align 8
  %171 = call i32 @radeon_fence_wait(%struct.radeon_fence* %170, i32 0)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %159
  %175 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %184

176:                                              ; preds = %159
  %177 = load %struct.radeon_fence*, %struct.radeon_fence** %10, align 8
  %178 = call i32 @radeon_fence_wait(%struct.radeon_fence* %177, i32 0)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %184

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %181, %174, %156, %141, %133, %95, %87, %81, %75, %55, %48, %28, %20
  %185 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %186 = call i32 @radeon_semaphore_free(%struct.radeon_device* %185, %struct.radeon_semaphore** %11, i32* null)
  %187 = load %struct.radeon_fence*, %struct.radeon_fence** %9, align 8
  %188 = icmp ne %struct.radeon_fence* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = call i32 @radeon_fence_unref(%struct.radeon_fence** %9)
  br label %191

191:                                              ; preds = %189, %184
  %192 = load %struct.radeon_fence*, %struct.radeon_fence** %10, align 8
  %193 = icmp ne %struct.radeon_fence* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = call i32 @radeon_fence_unref(%struct.radeon_fence** %10)
  br label %196

196:                                              ; preds = %194, %191
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %199, %196
  ret void
}

declare dso_local i32 @radeon_semaphore_create(%struct.radeon_device*, %struct.radeon_semaphore**) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_semaphore_emit_wait(%struct.radeon_device*, i32, %struct.radeon_semaphore*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_test_create_and_emit_fence(%struct.radeon_device*, %struct.radeon_ring*, %struct.radeon_fence**) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @radeon_fence_signaled(%struct.radeon_fence*) #1

declare dso_local i32 @radeon_semaphore_emit_signal(%struct.radeon_device*, i32, %struct.radeon_semaphore*) #1

declare dso_local i32 @DRM_INFO(i8*, i8 signext) #1

declare dso_local i32 @radeon_fence_wait(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_semaphore_free(%struct.radeon_device*, %struct.radeon_semaphore**, i32*) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
