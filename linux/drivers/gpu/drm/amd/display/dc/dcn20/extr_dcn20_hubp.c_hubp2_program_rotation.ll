; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_program_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_program_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dcn20_hubp = type { i32 }

@ROTATION_ANGLE_0 = common dso_local global i32 0, align 4
@DCSURF_SURFACE_CONFIG = common dso_local global i32 0, align 4
@ROTATION_ANGLE = common dso_local global i32 0, align 4
@H_MIRROR_EN = common dso_local global i32 0, align 4
@ROTATION_ANGLE_90 = common dso_local global i32 0, align 4
@ROTATION_ANGLE_180 = common dso_local global i32 0, align 4
@ROTATION_ANGLE_270 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp2_program_rotation(%struct.hubp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn20_hubp*, align 8
  %8 = alloca i32, align 4
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hubp*, %struct.hubp** %4, align 8
  %10 = call %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp* %9)
  store %struct.dcn20_hubp* %10, %struct.dcn20_hubp** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %15

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ROTATION_ANGLE_0, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %21 = load i32, i32* @ROTATION_ANGLE, align 4
  %22 = load i32, i32* @H_MIRROR_EN, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @REG_UPDATE_2(i32 %20, i32 %21, i32 0, i32 %22, i32 %23)
  br label %58

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ROTATION_ANGLE_90, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %31 = load i32, i32* @ROTATION_ANGLE, align 4
  %32 = load i32, i32* @H_MIRROR_EN, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @REG_UPDATE_2(i32 %30, i32 %31, i32 1, i32 %32, i32 %33)
  br label %57

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ROTATION_ANGLE_180, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %41 = load i32, i32* @ROTATION_ANGLE, align 4
  %42 = load i32, i32* @H_MIRROR_EN, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @REG_UPDATE_2(i32 %40, i32 %41, i32 2, i32 %42, i32 %43)
  br label %56

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ROTATION_ANGLE_270, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %51 = load i32, i32* @ROTATION_ANGLE, align 4
  %52 = load i32, i32* @H_MIRROR_EN, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @REG_UPDATE_2(i32 %50, i32 %51, i32 3, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %29
  br label %58

58:                                               ; preds = %57, %19
  ret void
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
