; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_idle_axi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_idle_axi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32 }

@V3D_GMP_CFG = common dso_local global i32 0, align 4
@V3D_GMP_CFG_STOP_REQ = common dso_local global i32 0, align 4
@V3D_GMP_STATUS = common dso_local global i32 0, align 4
@V3D_GMP_STATUS_RD_COUNT_MASK = common dso_local global i32 0, align 4
@V3D_GMP_STATUS_WR_COUNT_MASK = common dso_local global i32 0, align 4
@V3D_GMP_STATUS_CFG_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to wait for safe GMP shutdown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3d_dev*, i32)* @v3d_idle_axi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_idle_axi(%struct.v3d_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.v3d_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @V3D_GMP_CFG, align 4
  %7 = load i32, i32* @V3D_GMP_CFG_STOP_REQ, align 4
  %8 = call i32 @V3D_CORE_WRITE(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @V3D_GMP_STATUS, align 4
  %11 = call i32 @V3D_CORE_READ(i32 %9, i32 %10)
  %12 = load i32, i32* @V3D_GMP_STATUS_RD_COUNT_MASK, align 4
  %13 = load i32, i32* @V3D_GMP_STATUS_WR_COUNT_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @V3D_GMP_STATUS_CFG_BUSY, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @wait_for(i32 %19, i32 100)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @V3D_CORE_WRITE(i32, i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @V3D_CORE_READ(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
