; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_uvd_cs_ctx = type { i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown packet type %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_uvd_cs_ctx*, i32 (%struct.amdgpu_uvd_cs_ctx*)*)* @amdgpu_uvd_cs_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_uvd_cs_packets(%struct.amdgpu_uvd_cs_ctx* %0, i32 (%struct.amdgpu_uvd_cs_ctx*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_uvd_cs_ctx*, align 8
  %5 = alloca i32 (%struct.amdgpu_uvd_cs_ctx*)*, align 8
  %6 = alloca %struct.amdgpu_ib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_uvd_cs_ctx* %0, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  store i32 (%struct.amdgpu_uvd_cs_ctx*)* %1, i32 (%struct.amdgpu_uvd_cs_ctx*)** %5, align 8
  %10 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %17 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %16, i64 %19
  store %struct.amdgpu_ib* %20, %struct.amdgpu_ib** %6, align 8
  %21 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %72, %2
  %24 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %23
  %32 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @amdgpu_get_ib_value(%struct.TYPE_4__* %34, i64 %37, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @CP_PACKET_GET_TYPE(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %67 [
    i32 129, label %45
    i32 128, label %62
  ]

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @CP_PACKET0_GET_REG(i32 %46)
  %48 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @CP_PACKET_GET_COUNT(i32 %50)
  %52 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %55 = load i32 (%struct.amdgpu_uvd_cs_ctx*)*, i32 (%struct.amdgpu_uvd_cs_ctx*)** %5, align 8
  %56 = call i32 @amdgpu_uvd_cs_reg(%struct.amdgpu_uvd_cs_ctx* %54, i32 (%struct.amdgpu_uvd_cs_ctx*)* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %45
  br label %72

62:                                               ; preds = %31
  %63 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %72

67:                                               ; preds = %31
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %62, %61
  br label %23

73:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %67, %59
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @amdgpu_get_ib_value(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @CP_PACKET_GET_TYPE(i32) #1

declare dso_local i32 @CP_PACKET0_GET_REG(i32) #1

declare dso_local i32 @CP_PACKET_GET_COUNT(i32) #1

declare dso_local i32 @amdgpu_uvd_cs_reg(%struct.amdgpu_uvd_cs_ctx*, i32 (%struct.amdgpu_uvd_cs_ctx*)*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
