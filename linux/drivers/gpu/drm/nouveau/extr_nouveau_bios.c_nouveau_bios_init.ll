; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Adaptor not initialised, running VBIOS init tables.\0A\00", align 1
@NV_CIO_CRE_4B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bios_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %4, align 8
  %9 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %9, i32 0, i32 0
  store %struct.nvbios* %10, %struct.nvbios** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call i32 @NVInitVBIOS(%struct.drm_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %84

23:                                               ; preds = %16
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %26 = call i32 @parse_dcb_table(%struct.drm_device* %24, %struct.nvbios* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %84

31:                                               ; preds = %23
  %32 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %33 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %84

37:                                               ; preds = %31
  %38 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %39 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = call i32 @nouveau_bios_posted(%struct.drm_device* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %45 = call i32 @NV_INFO(%struct.nouveau_drm* %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %47 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = call i32 @nouveau_run_vbios_init(%struct.drm_device* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %84

55:                                               ; preds = %48
  %56 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %57 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = load i32, i32* @NV_CIO_CRE_4B, align 4
  %63 = call i32 @NVReadVgaCrtc(%struct.drm_device* %61, i32 0, i32 %62)
  %64 = and i32 %63, 64
  %65 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %66 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %55
  %68 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %69 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %74 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 5
  br i1 %76, label %77, label %81

77:                                               ; preds = %72, %67
  %78 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %79 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %80 = call i32 @parse_fp_mode_table(%struct.drm_device* %78, %struct.nvbios* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %83 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %53, %36, %29, %20, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NVInitVBIOS(%struct.drm_device*) #1

declare dso_local i32 @parse_dcb_table(%struct.drm_device*, %struct.nvbios*) #1

declare dso_local i32 @nouveau_bios_posted(%struct.drm_device*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @nouveau_run_vbios_init(%struct.drm_device*) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @parse_fp_mode_table(%struct.drm_device*, %struct.nvbios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
