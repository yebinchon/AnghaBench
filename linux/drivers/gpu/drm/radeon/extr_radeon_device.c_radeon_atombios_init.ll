; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_atombios_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_atombios_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, %struct.card_info* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.card_info = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cail_reg_read = common dso_local global i8* null, align 8
@cail_reg_write = common dso_local global i8* null, align 8
@cail_ioreg_read = common dso_local global i8* null, align 8
@cail_ioreg_write = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Unable to find PCI I/O BAR; using MMIO for ATOM IIO\0A\00", align 1
@cail_mc_read = common dso_local global i32 0, align 4
@cail_mc_write = common dso_local global i32 0, align 4
@cail_pll_read = common dso_local global i32 0, align 4
@cail_pll_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atombios_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.card_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.card_info* @kzalloc(i32 56, i32 %5)
  store %struct.card_info* %6, %struct.card_info** %4, align 8
  %7 = load %struct.card_info*, %struct.card_info** %4, align 8
  %8 = icmp ne %struct.card_info* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %100

12:                                               ; preds = %1
  %13 = load %struct.card_info*, %struct.card_info** %4, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.card_info* %13, %struct.card_info** %16, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.card_info*, %struct.card_info** %4, align 8
  %21 = getelementptr inbounds %struct.card_info, %struct.card_info* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @cail_reg_read, align 8
  %23 = load %struct.card_info*, %struct.card_info** %4, align 8
  %24 = getelementptr inbounds %struct.card_info, %struct.card_info* %23, i32 0, i32 7
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @cail_reg_write, align 8
  %26 = load %struct.card_info*, %struct.card_info** %4, align 8
  %27 = getelementptr inbounds %struct.card_info, %struct.card_info* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %12
  %33 = load i8*, i8** @cail_ioreg_read, align 8
  %34 = load %struct.card_info*, %struct.card_info** %4, align 8
  %35 = getelementptr inbounds %struct.card_info, %struct.card_info* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @cail_ioreg_write, align 8
  %37 = load %struct.card_info*, %struct.card_info** %4, align 8
  %38 = getelementptr inbounds %struct.card_info, %struct.card_info* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  br label %47

39:                                               ; preds = %12
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** @cail_reg_read, align 8
  %42 = load %struct.card_info*, %struct.card_info** %4, align 8
  %43 = getelementptr inbounds %struct.card_info, %struct.card_info* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @cail_reg_write, align 8
  %45 = load %struct.card_info*, %struct.card_info** %4, align 8
  %46 = getelementptr inbounds %struct.card_info, %struct.card_info* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %32
  %48 = load i32, i32* @cail_mc_read, align 4
  %49 = load %struct.card_info*, %struct.card_info** %4, align 8
  %50 = getelementptr inbounds %struct.card_info, %struct.card_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @cail_mc_write, align 4
  %52 = load %struct.card_info*, %struct.card_info** %4, align 8
  %53 = getelementptr inbounds %struct.card_info, %struct.card_info* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @cail_pll_read, align 4
  %55 = load %struct.card_info*, %struct.card_info** %4, align 8
  %56 = getelementptr inbounds %struct.card_info, %struct.card_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @cail_pll_write, align 4
  %58 = load %struct.card_info*, %struct.card_info** %4, align 8
  %59 = getelementptr inbounds %struct.card_info, %struct.card_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.card_info*, %struct.card_info** %4, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_5__* @atom_parse(%struct.card_info* %60, i32 %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %67, align 8
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %47
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = call i32 @radeon_atombios_fini(%struct.radeon_device* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %100

78:                                               ; preds = %47
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @radeon_atom_initialize_bios_scratch_regs(i32 %93)
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = call i32 @atom_allocate_fb_scratch(%struct.TYPE_5__* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %78, %73, %9
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.card_info* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.TYPE_5__* @atom_parse(%struct.card_info*, i32) #1

declare dso_local i32 @radeon_atombios_fini(%struct.radeon_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @radeon_atom_initialize_bios_scratch_regs(i32) #1

declare dso_local i32 @atom_allocate_fb_scratch(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
