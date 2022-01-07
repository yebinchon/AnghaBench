; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_hpd_info_from_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_hpd_info_from_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_hpd = type { i8*, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i64, i32 }
%struct.amdgpu_device = type { i32 }

@AMDGPU_HPD_1 = common dso_local global i8* null, align 8
@AMDGPU_HPD_2 = common dso_local global i8* null, align 8
@AMDGPU_HPD_3 = common dso_local global i8* null, align 8
@AMDGPU_HPD_4 = common dso_local global i8* null, align 8
@AMDGPU_HPD_5 = common dso_local global i8* null, align 8
@AMDGPU_HPD_6 = common dso_local global i8* null, align 8
@AMDGPU_HPD_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_hpd*, %struct.amdgpu_device*, %struct.amdgpu_gpio_rec*)* @amdgpu_atombios_get_hpd_info_from_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_get_hpd_info_from_gpio(%struct.amdgpu_hpd* noalias sret %0, %struct.amdgpu_device* %1, %struct.amdgpu_gpio_rec* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_gpio_rec*, align 8
  %6 = alloca i64, align 8
  store %struct.amdgpu_device* %1, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_gpio_rec* %2, %struct.amdgpu_gpio_rec** %5, align 8
  %7 = call i32 @memset(%struct.amdgpu_hpd* %0, i32 0, i32 24)
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = call i64 @amdgpu_display_hpd_get_gpio_reg(%struct.amdgpu_device* %8)
  store i64 %9, i64* %6, align 8
  %10 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 1
  %11 = load %struct.amdgpu_gpio_rec*, %struct.amdgpu_gpio_rec** %5, align 8
  %12 = bitcast %struct.amdgpu_gpio_rec* %10 to i8*
  %13 = bitcast %struct.amdgpu_gpio_rec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.amdgpu_gpio_rec*, %struct.amdgpu_gpio_rec** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_gpio_rec, %struct.amdgpu_gpio_rec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.amdgpu_gpio_rec*, %struct.amdgpu_gpio_rec** %5, align 8
  %21 = getelementptr inbounds %struct.amdgpu_gpio_rec, %struct.amdgpu_gpio_rec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %41 [
    i32 1, label %23
    i32 256, label %26
    i32 65536, label %29
    i32 16777216, label %32
    i32 67108864, label %35
    i32 268435456, label %38
  ]

23:                                               ; preds = %19
  %24 = load i8*, i8** @AMDGPU_HPD_1, align 8
  %25 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  br label %44

26:                                               ; preds = %19
  %27 = load i8*, i8** @AMDGPU_HPD_2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  br label %44

29:                                               ; preds = %19
  %30 = load i8*, i8** @AMDGPU_HPD_3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  br label %44

32:                                               ; preds = %19
  %33 = load i8*, i8** @AMDGPU_HPD_4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  br label %44

35:                                               ; preds = %19
  %36 = load i8*, i8** @AMDGPU_HPD_5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  br label %44

38:                                               ; preds = %19
  %39 = load i8*, i8** @AMDGPU_HPD_6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  br label %44

41:                                               ; preds = %19
  %42 = load i8*, i8** @AMDGPU_HPD_NONE, align 8
  %43 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23
  br label %48

45:                                               ; preds = %3
  %46 = load i8*, i8** @AMDGPU_HPD_NONE, align 8
  %47 = getelementptr inbounds %struct.amdgpu_hpd, %struct.amdgpu_hpd* %0, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @memset(%struct.amdgpu_hpd*, i32, i32) #1

declare dso_local i64 @amdgpu_display_hpd_get_gpio_reg(%struct.amdgpu_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
