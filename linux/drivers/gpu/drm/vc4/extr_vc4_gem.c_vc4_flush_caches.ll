; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_flush_caches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_flush_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }

@V3D_L2CACTL = common dso_local global i32 0, align 4
@V3D_L2CACTL_L2CCLR = common dso_local global i32 0, align 4
@V3D_SLCACTL = common dso_local global i32 0, align 4
@V3D_SLCACTL_T1CC = common dso_local global i32 0, align 4
@V3D_SLCACTL_T0CC = common dso_local global i32 0, align 4
@V3D_SLCACTL_UCC = common dso_local global i32 0, align 4
@V3D_SLCACTL_ICC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @vc4_flush_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_flush_caches(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %4)
  store %struct.vc4_dev* %5, %struct.vc4_dev** %3, align 8
  %6 = load i32, i32* @V3D_L2CACTL, align 4
  %7 = load i32, i32* @V3D_L2CACTL_L2CCLR, align 4
  %8 = call i32 @V3D_WRITE(i32 %6, i32 %7)
  %9 = load i32, i32* @V3D_SLCACTL, align 4
  %10 = load i32, i32* @V3D_SLCACTL_T1CC, align 4
  %11 = call i32 @VC4_SET_FIELD(i32 15, i32 %10)
  %12 = load i32, i32* @V3D_SLCACTL_T0CC, align 4
  %13 = call i32 @VC4_SET_FIELD(i32 15, i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @V3D_SLCACTL_UCC, align 4
  %16 = call i32 @VC4_SET_FIELD(i32 15, i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @V3D_SLCACTL_ICC, align 4
  %19 = call i32 @VC4_SET_FIELD(i32 15, i32 %18)
  %20 = or i32 %17, %19
  %21 = call i32 @V3D_WRITE(i32 %9, i32 %20)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
