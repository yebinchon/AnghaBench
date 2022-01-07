; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_set_plane_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_set_plane_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_mixer = type { i32 }
%struct.sti_plane = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GAM_DEPTH_GDP0_ID = common dso_local global i32 0, align 4
@GAM_DEPTH_GDP1_ID = common dso_local global i32 0, align 4
@GAM_DEPTH_GDP2_ID = common dso_local global i32 0, align 4
@GAM_DEPTH_GDP3_ID = common dso_local global i32 0, align 4
@GAM_DEPTH_VID0_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unknown plane %d\0A\00", align 1
@GAM_MIXER_CRB = common dso_local global i32 0, align 4
@GAM_MIXER_NB_DEPTH_LEVEL = common dso_local global i32 0, align 4
@GAM_DEPTH_MASK_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s depth=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GAM_MIXER_CRB val 0x%x mask 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Read GAM_MIXER_CRB 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_mixer_set_plane_depth(%struct.sti_mixer* %0, %struct.sti_plane* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sti_mixer*, align 8
  %5 = alloca %struct.sti_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sti_mixer* %0, %struct.sti_mixer** %4, align 8
  store %struct.sti_plane* %1, %struct.sti_plane** %5, align 8
  %11 = load %struct.sti_plane*, %struct.sti_plane** %5, align 8
  %12 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sti_plane*, %struct.sti_plane** %5, align 8
  %18 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %31 [
    i32 132, label %20
    i32 131, label %22
    i32 130, label %24
    i32 129, label %26
    i32 128, label %28
    i32 133, label %30
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @GAM_DEPTH_GDP0_ID, align 4
  store i32 %21, i32* %6, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load i32, i32* @GAM_DEPTH_GDP1_ID, align 4
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load i32, i32* @GAM_DEPTH_GDP2_ID, align 4
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load i32, i32* @GAM_DEPTH_GDP3_ID, align 4
  store i32 %27, i32* %6, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @GAM_DEPTH_VID0_ID, align 4
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

31:                                               ; preds = %2
  %32 = load %struct.sti_plane*, %struct.sti_plane** %5, align 8
  %33 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 1, i32* %3, align 4
  br label %103

36:                                               ; preds = %28, %26, %24, %22, %20
  %37 = load %struct.sti_mixer*, %struct.sti_mixer** %4, align 8
  %38 = load i32, i32* @GAM_MIXER_CRB, align 4
  %39 = call i32 @sti_mixer_reg_read(%struct.sti_mixer* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %59, %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @GAM_MIXER_NB_DEPTH_LEVEL, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* @GAM_DEPTH_MASK_ID, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul i32 3, %46
  %48 = shl i32 %45, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul i32 3, %53
  %55 = shl i32 %52, %54
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %62

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %40

62:                                               ; preds = %57, %40
  %63 = load i32, i32* @GAM_DEPTH_MASK_ID, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 3, %64
  %66 = shl i32 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 3, %70
  %72 = shl i32 %69, %71
  store i32 %72, i32* %6, align 4
  %73 = load %struct.sti_mixer*, %struct.sti_mixer** %4, align 8
  %74 = call i32 @sti_mixer_to_str(%struct.sti_mixer* %73)
  %75 = load %struct.sti_plane*, %struct.sti_plane** %5, align 8
  %76 = call i32 @sti_plane_to_str(%struct.sti_plane* %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %76, i32 %77)
  %79 = load %struct.sti_mixer*, %struct.sti_mixer** %4, align 8
  %80 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load %struct.sti_mixer*, %struct.sti_mixer** %4, align 8
  %93 = load i32, i32* @GAM_MIXER_CRB, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @sti_mixer_reg_write(%struct.sti_mixer* %92, i32 %93, i32 %94)
  %96 = load %struct.sti_mixer*, %struct.sti_mixer** %4, align 8
  %97 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sti_mixer*, %struct.sti_mixer** %4, align 8
  %100 = load i32, i32* @GAM_MIXER_CRB, align 4
  %101 = call i32 @sti_mixer_reg_read(%struct.sti_mixer* %99, i32 %100)
  %102 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %62, %31, %30
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @sti_mixer_reg_read(%struct.sti_mixer*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

declare dso_local i32 @sti_mixer_to_str(%struct.sti_mixer*) #1

declare dso_local i32 @sti_plane_to_str(%struct.sti_plane*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @sti_mixer_reg_write(%struct.sti_mixer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
