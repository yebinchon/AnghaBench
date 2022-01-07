; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_intel_device_info_dump_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_intel_device_info_dump_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sseu_dev_info = type { i32, i32, i32* }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Unavailable\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"slice%d: %u subslice(s) (0x%hhx):\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09subslice%d: %u EUs (0x%hx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_device_info_dump_topology(%struct.sseu_dev_info* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.sseu_dev_info*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sseu_dev_info* %0, %struct.sseu_dev_info** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %8 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %9 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %14 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %60

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %57, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %19 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %16
  %23 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @intel_sseu_subslices_per_slice(%struct.sseu_dev_info* %25, i32 %26)
  %28 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %29 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, i32 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %53, %22
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %39 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @sseu_get_eus(%struct.sseu_dev_info* %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @hweight16(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %16

60:                                               ; preds = %12, %16
  ret void
}

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, ...) #1

declare dso_local i32 @intel_sseu_subslices_per_slice(%struct.sseu_dev_info*, i32) #1

declare dso_local i32 @sseu_get_eus(%struct.sseu_dev_info*, i32, i32) #1

declare dso_local i32 @hweight16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
