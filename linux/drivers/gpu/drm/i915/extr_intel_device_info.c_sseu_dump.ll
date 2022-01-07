; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_sseu_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_sseu_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sseu_dev_info = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"slice total: %u, mask=%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"subslice total: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"slice%d: %u subslices, mask=%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"EU total: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"EU per subslice: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"has slice power gating: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"has subslice power gating: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"has EU power gating: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sseu_dev_info*, %struct.drm_printer*)* @sseu_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sseu_dump(%struct.sseu_dev_info* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.sseu_dev_info*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i32, align 4
  store %struct.sseu_dev_info* %0, %struct.sseu_dev_info** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %6 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %7 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %8 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @hweight8(i32 %9)
  %11 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %12 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %16 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %17 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %16)
  %18 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %22 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @intel_sseu_subslices_per_slice(%struct.sseu_dev_info* %28, i32 %29)
  %31 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %32 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30, i32 %37)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %44 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %45 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %49 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %50 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %54 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %55 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @yesno(i32 %56)
  %58 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %60 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %61 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @yesno(i32 %62)
  %64 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %66 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %67 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @yesno(i32 %68)
  %70 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  ret void
}

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32, ...) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @intel_sseu_subslice_total(%struct.sseu_dev_info*) #1

declare dso_local i32 @intel_sseu_subslices_per_slice(%struct.sseu_dev_info*, i32) #1

declare dso_local i32 @yesno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
