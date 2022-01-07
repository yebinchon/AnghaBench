; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_dump_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_dump_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }

@DP_AUX_NATIVE_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: 0x%05x AUX %s (ret=%3d) %*ph\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: 0x%05x AUX %s (ret=%3d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_aux*, i64, i32, i8*, i32)* @drm_dp_dump_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_dump_access(%struct.drm_dp_aux* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.drm_dp_aux*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @DP_AUX_NATIVE_READ, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %16, i8** %11, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %5
  %20 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %6, align 8
  %21 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @min(i32 %26, i32 20)
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i8*, i32, i32, i8*, i32, ...) @DRM_DEBUG_DP(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %23, i8* %24, i32 %25, i32 %27, i8* %28)
  br label %38

30:                                               ; preds = %5
  %31 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %6, align 8
  %32 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, i32, i32, i8*, i32, ...) @DRM_DEBUG_DP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %19
  ret void
}

declare dso_local i32 @DRM_DEBUG_DP(i8*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
