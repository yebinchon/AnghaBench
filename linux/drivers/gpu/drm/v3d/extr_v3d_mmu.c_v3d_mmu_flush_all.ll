; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_mmu.c_v3d_mmu_flush_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_mmu.c_v3d_mmu_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32 }

@V3D_MMU_CTL = common dso_local global i32 0, align 4
@V3D_MMU_CTL_TLB_CLEARING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TLB clear wait idle pre-wait failed\0A\00", align 1
@V3D_MMU_CTL_TLB_CLEAR = common dso_local global i32 0, align 4
@V3D_MMUC_CONTROL = common dso_local global i32 0, align 4
@V3D_MMUC_CONTROL_FLUSH = common dso_local global i32 0, align 4
@V3D_MMUC_CONTROL_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TLB clear wait idle failed\0A\00", align 1
@V3D_MMUC_CONTROL_FLUSHING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"MMUC flush wait idle failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3d_dev*)* @v3d_mmu_flush_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_mmu_flush_all(%struct.v3d_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v3d_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %3, align 8
  %5 = load i32, i32* @V3D_MMU_CTL, align 4
  %6 = call i32 @V3D_READ(i32 %5)
  %7 = load i32, i32* @V3D_MMU_CTL_TLB_CLEARING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @wait_for(i32 %11, i32 100)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %17 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @V3D_MMU_CTL, align 4
  %22 = load i32, i32* @V3D_MMU_CTL, align 4
  %23 = call i32 @V3D_READ(i32 %22)
  %24 = load i32, i32* @V3D_MMU_CTL_TLB_CLEAR, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @V3D_WRITE(i32 %21, i32 %25)
  %27 = load i32, i32* @V3D_MMUC_CONTROL, align 4
  %28 = load i32, i32* @V3D_MMUC_CONTROL_FLUSH, align 4
  %29 = load i32, i32* @V3D_MMUC_CONTROL_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @V3D_WRITE(i32 %27, i32 %30)
  %32 = load i32, i32* @V3D_MMU_CTL, align 4
  %33 = call i32 @V3D_READ(i32 %32)
  %34 = load i32, i32* @V3D_MMU_CTL_TLB_CLEARING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @wait_for(i32 %38, i32 100)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %20
  %43 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %44 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %66

48:                                               ; preds = %20
  %49 = load i32, i32* @V3D_MMUC_CONTROL, align 4
  %50 = call i32 @V3D_READ(i32 %49)
  %51 = load i32, i32* @V3D_MMUC_CONTROL_FLUSHING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @wait_for(i32 %55, i32 100)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %61 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %48
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %42
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @V3D_READ(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
