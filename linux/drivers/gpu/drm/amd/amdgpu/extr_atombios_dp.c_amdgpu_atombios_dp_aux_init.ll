; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_aux_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_aux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_connector = type { %struct.TYPE_9__*, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@amdgpu_atombios_dp_aux_transfer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"drm_dp_aux_register_i2c_bus() failed with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_dp_aux_init(%struct.amdgpu_connector* %0) #0 {
  %2 = alloca %struct.amdgpu_connector*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_connector* %0, %struct.amdgpu_connector** %2, align 8
  %4 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %7, i32* %12, align 4
  %13 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %16, i32* %21, align 4
  %22 = load i32, i32* @amdgpu_atombios_dp_aux_transfer, align 4
  %23 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  %28 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = call i32 @drm_dp_aux_register(%struct.TYPE_10__* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %1
  %36 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @WARN(i32 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %42)
  ret void
}

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_10__*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
