; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_print_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_print_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ps = type { i32, i32, i32, i32, i32 }
%struct.kv_ps = type { i32, %struct.kv_pl* }
%struct.kv_pl = type { i32, i32 }
%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\09\09power level %d    sclk: %u vddc: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @kv_dpm_print_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_dpm_print_power_state(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca %struct.kv_ps*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.kv_pl*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.amdgpu_ps*
  store %struct.amdgpu_ps* %11, %struct.amdgpu_ps** %6, align 8
  %12 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %13 = call %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps* %12)
  store %struct.kv_ps* %13, %struct.kv_ps** %7, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %8, align 8
  %16 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @amdgpu_dpm_print_class_info(i32 %18, i32 %21)
  %23 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @amdgpu_dpm_print_cap_info(i32 %25)
  %27 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %57, %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %37 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %42 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %41, i32 0, i32 1
  %43 = load %struct.kv_pl*, %struct.kv_pl** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.kv_pl, %struct.kv_pl* %43, i64 %45
  store %struct.kv_pl* %46, %struct.kv_pl** %9, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.kv_pl*, %struct.kv_pl** %9, align 8
  %49 = getelementptr inbounds %struct.kv_pl, %struct.kv_pl* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %52 = load %struct.kv_pl*, %struct.kv_pl** %9, align 8
  %53 = getelementptr inbounds %struct.kv_pl, %struct.kv_pl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device* %51, i32 %54)
  %56 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %62 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %63 = call i32 @amdgpu_dpm_print_ps_status(%struct.amdgpu_device* %61, %struct.amdgpu_ps* %62)
  ret void
}

declare dso_local %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i32 @amdgpu_dpm_print_class_info(i32, i32) #1

declare dso_local i32 @amdgpu_dpm_print_cap_info(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_dpm_print_ps_status(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
