; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64, %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, %struct.card_info* }
%struct.TYPE_4__ = type { i32 }
%struct.card_info = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cail_reg_read = common dso_local global i8* null, align 8
@cail_reg_write = common dso_local global i8* null, align 8
@cail_ioreg_read = common dso_local global i8* null, align 8
@cail_ioreg_write = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"PCI I/O BAR is not found. Using MMIO to access ATOM BIOS\0A\00", align 1
@cail_mc_read = common dso_local global i32 0, align 4
@cail_mc_write = common dso_local global i32 0, align 4
@cail_pll_read = common dso_local global i32 0, align 4
@cail_pll_write = common dso_local global i32 0, align 4
@dev_attr_vbios_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to create device file for VBIOS version\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.card_info*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.card_info* @kzalloc(i32 56, i32 %6)
  store %struct.card_info* %7, %struct.card_info** %4, align 8
  %8 = load %struct.card_info*, %struct.card_info** %4, align 8
  %9 = icmp ne %struct.card_info* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %111

13:                                               ; preds = %1
  %14 = load %struct.card_info*, %struct.card_info** %4, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.card_info* %14, %struct.card_info** %17, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.card_info*, %struct.card_info** %4, align 8
  %22 = getelementptr inbounds %struct.card_info, %struct.card_info* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** @cail_reg_read, align 8
  %24 = load %struct.card_info*, %struct.card_info** %4, align 8
  %25 = getelementptr inbounds %struct.card_info, %struct.card_info* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @cail_reg_write, align 8
  %27 = load %struct.card_info*, %struct.card_info** %4, align 8
  %28 = getelementptr inbounds %struct.card_info, %struct.card_info* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %13
  %34 = load i8*, i8** @cail_ioreg_read, align 8
  %35 = load %struct.card_info*, %struct.card_info** %4, align 8
  %36 = getelementptr inbounds %struct.card_info, %struct.card_info* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @cail_ioreg_write, align 8
  %38 = load %struct.card_info*, %struct.card_info** %4, align 8
  %39 = getelementptr inbounds %struct.card_info, %struct.card_info* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  br label %48

40:                                               ; preds = %13
  %41 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** @cail_reg_read, align 8
  %43 = load %struct.card_info*, %struct.card_info** %4, align 8
  %44 = getelementptr inbounds %struct.card_info, %struct.card_info* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @cail_reg_write, align 8
  %46 = load %struct.card_info*, %struct.card_info** %4, align 8
  %47 = getelementptr inbounds %struct.card_info, %struct.card_info* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* @cail_mc_read, align 4
  %50 = load %struct.card_info*, %struct.card_info** %4, align 8
  %51 = getelementptr inbounds %struct.card_info, %struct.card_info* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @cail_mc_write, align 4
  %53 = load %struct.card_info*, %struct.card_info** %4, align 8
  %54 = getelementptr inbounds %struct.card_info, %struct.card_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @cail_pll_read, align 4
  %56 = load %struct.card_info*, %struct.card_info** %4, align 8
  %57 = getelementptr inbounds %struct.card_info, %struct.card_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @cail_pll_write, align 4
  %59 = load %struct.card_info*, %struct.card_info** %4, align 8
  %60 = getelementptr inbounds %struct.card_info, %struct.card_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.card_info*, %struct.card_info** %4, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_4__* @amdgpu_atom_parse(%struct.card_info* %61, i32 %64)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %48
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = call i32 @amdgpu_atombios_fini(%struct.amdgpu_device* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %111

79:                                               ; preds = %48
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @mutex_init(i32* %84)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = call i32 @amdgpu_atomfirmware_scratch_regs_init(%struct.amdgpu_device* %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = call i32 @amdgpu_atomfirmware_allocate_fb_scratch(%struct.amdgpu_device* %93)
  br label %100

95:                                               ; preds = %79
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = call i32 @amdgpu_atombios_scratch_regs_init(%struct.amdgpu_device* %96)
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = call i32 @amdgpu_atombios_allocate_fb_scratch(%struct.amdgpu_device* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_create_file(i32 %103, i32* @dev_attr_vbios_version)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %111

110:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %107, %74, %10
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.card_info* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.TYPE_4__* @amdgpu_atom_parse(%struct.card_info*, i32) #1

declare dso_local i32 @amdgpu_atombios_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @amdgpu_atomfirmware_scratch_regs_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atomfirmware_allocate_fb_scratch(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atombios_scratch_regs_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atombios_allocate_fb_scratch(%struct.amdgpu_device*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
