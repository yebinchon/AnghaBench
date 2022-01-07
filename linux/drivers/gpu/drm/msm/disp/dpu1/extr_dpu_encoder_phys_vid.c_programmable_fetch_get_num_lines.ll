; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_programmable_fetch_get_num_lines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_programmable_fetch_get_num_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.intf_timing_params = type { i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"prog fetch is not needed, large vbp+vsw\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"low vbp+vfp may lead to perf issues in some cases\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"less vfp than fetch req, using entire vfp\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"room in vfp for needed prefetch\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"v_front_porch %u v_back_porch %u vsync_pulse_width %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"wc_lines %u needed_vfp_lines %u actual_vfp_lines %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dpu_encoder_phys*, %struct.intf_timing_params*)* @programmable_fetch_get_num_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @programmable_fetch_get_num_lines(%struct.dpu_encoder_phys* %0, %struct.intf_timing_params* %1) #0 {
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca %struct.intf_timing_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  store %struct.intf_timing_params* %1, %struct.intf_timing_params** %4, align 8
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %17 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %20 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %31 = call i32 (%struct.dpu_encoder_phys*, i8*, ...) @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %50

32:                                               ; preds = %2
  %33 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %34 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = call i32 @pr_warn_once(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %41 = call i32 (%struct.dpu_encoder_phys*, i8*, ...) @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %43 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  br label %49

45:                                               ; preds = %32
  %46 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %47 = call i32 (%struct.dpu_encoder_phys*, i8*, ...) @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %52 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %53 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %56 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %59 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (%struct.dpu_encoder_phys*, i8*, ...) @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i64 %54, i64 %57, i64 %60)
  %62 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 (%struct.dpu_encoder_phys*, i8*, ...) @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %63, i64 %64, i64 %65)
  %67 = load i64, i64* %8, align 8
  ret i64 %67
}

declare dso_local i32 @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys*, i8*, ...) #1

declare dso_local i32 @pr_warn_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
