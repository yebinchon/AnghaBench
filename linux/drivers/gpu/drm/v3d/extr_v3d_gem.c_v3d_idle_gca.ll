; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_idle_gca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_idle_gca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32 }

@V3D_GCA_SAFE_SHUTDOWN = common dso_local global i32 0, align 4
@V3D_GCA_SAFE_SHUTDOWN_EN = common dso_local global i32 0, align 4
@V3D_GCA_SAFE_SHUTDOWN_ACK = common dso_local global i32 0, align 4
@V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to wait for safe GCA shutdown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3d_dev*)* @v3d_idle_gca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_idle_gca(%struct.v3d_dev* %0) #0 {
  %2 = alloca %struct.v3d_dev*, align 8
  store %struct.v3d_dev* %0, %struct.v3d_dev** %2, align 8
  %3 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %4 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 41
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @V3D_GCA_SAFE_SHUTDOWN, align 4
  %10 = load i32, i32* @V3D_GCA_SAFE_SHUTDOWN_EN, align 4
  %11 = call i32 @V3D_GCA_WRITE(i32 %9, i32 %10)
  %12 = load i32, i32* @V3D_GCA_SAFE_SHUTDOWN_ACK, align 4
  %13 = call i32 @V3D_GCA_READ(i32 %12)
  %14 = load i32, i32* @V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @wait_for(i32 %18, i32 100)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %7, %21, %8
  ret void
}

declare dso_local i32 @V3D_GCA_WRITE(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @V3D_GCA_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
