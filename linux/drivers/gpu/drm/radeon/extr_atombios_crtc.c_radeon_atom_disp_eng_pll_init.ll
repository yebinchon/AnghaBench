; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_atom_disp_eng_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_atom_disp_eng_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_atom_ss = type { i32 }

@ASIC_INTERNAL_SS_ON_DCPLL = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_DCPLL = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atom_disp_eng_pll_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_atom_ss, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @atombios_crtc_set_disp_eng_pll(%struct.radeon_device* %9, i32 %13)
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = load i32, i32* @ASIC_INTERNAL_SS_ON_DCPLL, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %20, %struct.radeon_atom_ss* %3, i32 %21, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = load i32, i32* @ATOM_DISABLE, align 4
  %32 = load i32, i32* @ATOM_DCPLL, align 4
  %33 = call i32 @atombios_crtc_program_ss(%struct.radeon_device* %30, i32 %31, i32 %32, i32 -1, %struct.radeon_atom_ss* %3)
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @atombios_crtc_set_disp_eng_pll(%struct.radeon_device* %35, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = load i32, i32* @ATOM_ENABLE, align 4
  %46 = load i32, i32* @ATOM_DCPLL, align 4
  %47 = call i32 @atombios_crtc_program_ss(%struct.radeon_device* %44, i32 %45, i32 %46, i32 -1, %struct.radeon_atom_ss* %3)
  br label %48

48:                                               ; preds = %43, %34
  br label %49

49:                                               ; preds = %48, %15
  br label %50

50:                                               ; preds = %49, %8
  ret void
}

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @atombios_crtc_set_disp_eng_pll(%struct.radeon_device*, i32) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i32 @atombios_crtc_program_ss(%struct.radeon_device*, i32, i32, i32, %struct.radeon_atom_ss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
