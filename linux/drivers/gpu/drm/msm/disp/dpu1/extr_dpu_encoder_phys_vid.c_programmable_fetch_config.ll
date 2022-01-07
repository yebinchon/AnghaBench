; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_programmable_fetch_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_programmable_fetch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.intf_prog_fetch*)* }
%struct.intf_prog_fetch = type { i32, i32, i32 }
%struct.intf_timing_params = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"vfp_fetch_lines %u vfp_fetch_start_vsync_counter %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*, %struct.intf_timing_params*)* @programmable_fetch_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @programmable_fetch_config(%struct.dpu_encoder_phys* %0, %struct.intf_timing_params* %1) #0 {
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca %struct.intf_timing_params*, align 8
  %5 = alloca %struct.intf_prog_fetch, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  store %struct.intf_timing_params* %1, %struct.intf_timing_params** %4, align 8
  %11 = bitcast %struct.intf_prog_fetch* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_4__*, %struct.intf_prog_fetch*)*, i32 (%struct.TYPE_4__*, %struct.intf_prog_fetch*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_4__*, %struct.intf_prog_fetch*)* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %69

24:                                               ; preds = %2
  %25 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %26 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %27 = call i32 @programmable_fetch_get_num_lines(%struct.dpu_encoder_phys* %25, %struct.intf_timing_params* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %32 = call i32 @get_vertical_total(%struct.intf_timing_params* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.intf_timing_params*, %struct.intf_timing_params** %4, align 8
  %34 = call i32 @get_horizontal_total(%struct.intf_timing_params* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = getelementptr inbounds %struct.intf_prog_fetch, %struct.intf_prog_fetch* %5, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds %struct.intf_prog_fetch, %struct.intf_prog_fetch* %5, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %24
  %45 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %50 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @spin_lock_irqsave(i32 %51, i64 %52)
  %54 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %55 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_4__*, %struct.intf_prog_fetch*)*, i32 (%struct.TYPE_4__*, %struct.intf_prog_fetch*)** %58, align 8
  %60 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %61 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 %59(%struct.TYPE_4__* %62, %struct.intf_prog_fetch* %5)
  %64 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %65 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %44, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @programmable_fetch_get_num_lines(%struct.dpu_encoder_phys*, %struct.intf_timing_params*) #2

declare dso_local i32 @get_vertical_total(%struct.intf_timing_params*) #2

declare dso_local i32 @get_horizontal_total(%struct.intf_timing_params*) #2

declare dso_local i32 @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys*, i8*, i32, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
