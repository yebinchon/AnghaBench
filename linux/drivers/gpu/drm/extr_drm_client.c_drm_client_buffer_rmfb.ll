; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_buffer_rmfb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_buffer_rmfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_client_buffer = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Error removing FB:%u (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_client_buffer*)* @drm_client_buffer_rmfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_client_buffer_rmfb(%struct.drm_client_buffer* %0) #0 {
  %2 = alloca %struct.drm_client_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_client_buffer* %0, %struct.drm_client_buffer** %2, align 8
  %4 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @drm_mode_rmfb(%struct.TYPE_8__* %14, i32 %20, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %9
  %30 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @DRM_DEV_ERROR(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %29, %9
  %46 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %2, align 8
  %47 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %46, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %47, align 8
  br label %48

48:                                               ; preds = %45, %8
  ret void
}

declare dso_local i32 @drm_mode_rmfb(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
