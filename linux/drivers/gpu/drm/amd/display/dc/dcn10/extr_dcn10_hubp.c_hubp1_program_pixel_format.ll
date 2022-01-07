; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dcn10_hubp = type { i32 }

@HUBPRET_CONTROL = common dso_local global i32 0, align 4
@CROSSBAR_SRC_CB_B = common dso_local global i32 0, align 4
@CROSSBAR_SRC_CR_R = common dso_local global i32 0, align 4
@DCSURF_SURFACE_CONFIG = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_program_pixel_format(%struct.hubp* %0, i32 %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn10_hubp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hubp*, %struct.hubp** %3, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %5, align 8
  store i32 3, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 144
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 146
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 145
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 147
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %12, %2
  store i32 2, i32* %6, align 4
  store i32 3, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* @HUBPRET_CONTROL, align 4
  %24 = load i32, i32* @CROSSBAR_SRC_CB_B, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CROSSBAR_SRC_CR_R, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @REG_UPDATE_2(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %74 [
    i32 143, label %30
    i32 134, label %34
    i32 139, label %38
    i32 144, label %38
    i32 140, label %42
    i32 146, label %42
    i32 145, label %42
    i32 142, label %46
    i32 141, label %50
    i32 147, label %50
    i32 131, label %54
    i32 130, label %58
    i32 133, label %62
    i32 132, label %66
    i32 128, label %70
  ]

30:                                               ; preds = %22
  %31 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %32 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %33 = call i32 @REG_UPDATE(i32 %31, i32 %32, i32 1)
  br label %76

34:                                               ; preds = %22
  %35 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %36 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %37 = call i32 @REG_UPDATE(i32 %35, i32 %36, i32 3)
  br label %76

38:                                               ; preds = %22, %22
  %39 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %40 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %41 = call i32 @REG_UPDATE(i32 %39, i32 %40, i32 8)
  br label %76

42:                                               ; preds = %22, %22, %22
  %43 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %44 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %45 = call i32 @REG_UPDATE(i32 %43, i32 %44, i32 10)
  br label %76

46:                                               ; preds = %22
  %47 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %48 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %49 = call i32 @REG_UPDATE(i32 %47, i32 %48, i32 22)
  br label %76

50:                                               ; preds = %22, %22
  %51 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %52 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %53 = call i32 @REG_UPDATE(i32 %51, i32 %52, i32 24)
  br label %76

54:                                               ; preds = %22
  %55 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %56 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %57 = call i32 @REG_UPDATE(i32 %55, i32 %56, i32 65)
  br label %76

58:                                               ; preds = %22
  %59 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %60 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %61 = call i32 @REG_UPDATE(i32 %59, i32 %60, i32 64)
  br label %76

62:                                               ; preds = %22
  %63 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %64 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %65 = call i32 @REG_UPDATE(i32 %63, i32 %64, i32 67)
  br label %76

66:                                               ; preds = %22
  %67 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %68 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %69 = call i32 @REG_UPDATE(i32 %67, i32 %68, i32 66)
  br label %76

70:                                               ; preds = %22
  %71 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %72 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %73 = call i32 @REG_UPDATE(i32 %71, i32 %72, i32 12)
  br label %76

74:                                               ; preds = %22
  %75 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %76

76:                                               ; preds = %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
