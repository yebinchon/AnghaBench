; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_flush_l3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_flush_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32 }

@V3D_GCA_CACHE_CTRL = common dso_local global i32 0, align 4
@V3D_GCA_CACHE_CTRL_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3d_dev*)* @v3d_flush_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_flush_l3(%struct.v3d_dev* %0) #0 {
  %2 = alloca %struct.v3d_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %2, align 8
  %4 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %5 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 41
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load i32, i32* @V3D_GCA_CACHE_CTRL, align 4
  %10 = call i32 @V3D_GCA_READ(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @V3D_GCA_CACHE_CTRL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @V3D_GCA_CACHE_CTRL_FLUSH, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @V3D_GCA_WRITE(i32 %11, i32 %14)
  %16 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %17 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 33
  br i1 %19, label %20, label %27

20:                                               ; preds = %8
  %21 = load i32, i32* @V3D_GCA_CACHE_CTRL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @V3D_GCA_CACHE_CTRL_FLUSH, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @V3D_GCA_WRITE(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %8
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @V3D_GCA_READ(i32) #1

declare dso_local i32 @V3D_GCA_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
