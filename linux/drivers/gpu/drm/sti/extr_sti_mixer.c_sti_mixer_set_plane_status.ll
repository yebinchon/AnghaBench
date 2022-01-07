; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_set_plane_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_set_plane_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_mixer = type { i32 }
%struct.sti_plane = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Can't find layer mask\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GAM_MIXER_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_mixer_set_plane_status(%struct.sti_mixer* %0, %struct.sti_plane* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sti_mixer*, align 8
  %6 = alloca %struct.sti_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sti_mixer* %0, %struct.sti_mixer** %5, align 8
  store %struct.sti_plane* %1, %struct.sti_plane** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %14 = load %struct.sti_mixer*, %struct.sti_mixer** %5, align 8
  %15 = call i32 @sti_mixer_to_str(%struct.sti_mixer* %14)
  %16 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %17 = call i32 @sti_plane_to_str(%struct.sti_plane* %16)
  %18 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15, i32 %17)
  %19 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %20 = call i32 @sti_mixer_get_plane_mask(%struct.sti_plane* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %48

27:                                               ; preds = %3
  %28 = load %struct.sti_mixer*, %struct.sti_mixer** %5, align 8
  %29 = load i32, i32* @GAM_MIXER_CTL, align 4
  %30 = call i32 @sti_mixer_reg_read(%struct.sti_mixer* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sti_mixer*, %struct.sti_mixer** %5, align 8
  %45 = load i32, i32* @GAM_MIXER_CTL, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @sti_mixer_reg_write(%struct.sti_mixer* %44, i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*, i32, i32) #1

declare dso_local i32 @sti_mixer_to_str(%struct.sti_mixer*) #1

declare dso_local i32 @sti_plane_to_str(%struct.sti_plane*) #1

declare dso_local i32 @sti_mixer_get_plane_mask(%struct.sti_plane*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @sti_mixer_reg_read(%struct.sti_mixer*, i32) #1

declare dso_local i32 @sti_mixer_reg_write(%struct.sti_mixer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
