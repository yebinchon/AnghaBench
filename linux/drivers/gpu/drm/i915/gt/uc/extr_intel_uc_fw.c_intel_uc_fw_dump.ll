; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s firmware: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\09status: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\09version: wanted %u.%u, found %u.%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09uCode: %u bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\09RSA: %u bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uc_fw_dump(%struct.intel_uc_fw* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.intel_uc_fw*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %5 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %6 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %7 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @intel_uc_fw_type_repr(i32 %8)
  %10 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %11 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %15 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %16 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @intel_uc_fw_status_repr(i32 %17)
  %19 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %21 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %22 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %25 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %28 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %31 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %35 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %36 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %40 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %41 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.drm_printer*, i8*, i32, ...) @drm_printf(%struct.drm_printer* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  ret void
}

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32, ...) #1

declare dso_local i32 @intel_uc_fw_type_repr(i32) #1

declare dso_local i32 @intel_uc_fw_status_repr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
