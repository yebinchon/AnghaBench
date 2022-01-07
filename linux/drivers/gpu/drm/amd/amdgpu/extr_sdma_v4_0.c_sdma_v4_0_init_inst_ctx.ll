; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_init_inst_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_init_inst_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_sdma_instance = type { i32, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sdma_firmware_header_v1_0 = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_sdma_instance*)* @sdma_v4_0_init_inst_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_init_inst_ctx(%struct.amdgpu_sdma_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_sdma_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdma_firmware_header_v1_0*, align 8
  store %struct.amdgpu_sdma_instance* %0, %struct.amdgpu_sdma_instance** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @amdgpu_ucode_validate(%struct.TYPE_4__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.sdma_firmware_header_v1_0*
  store %struct.sdma_firmware_header_v1_0* %20, %struct.sdma_firmware_header_v1_0** %5, align 8
  %21 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %5, align 8
  %22 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @le32_to_cpu(i32 %24)
  %26 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %5, align 8
  %29 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le32_to_cpu(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 20
  br i1 %38, label %39, label %42

39:                                               ; preds = %14
  %40 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %14
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_4__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
