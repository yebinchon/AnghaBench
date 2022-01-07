; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_wait_for_rlc_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_wait_for_rlc_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@RLC_SERDES_CU_MASTER_BUSY = common dso_local global i32 0, align 4
@SE_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@GC_MASTER_BUSY = common dso_local global i64 0, align 8
@TC0_MASTER_BUSY = common dso_local global i64 0, align 8
@TC1_MASTER_BUSY = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cik_wait_for_rlc_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_wait_for_rlc_serdes(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %8, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %7
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %48, %15
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %17, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %16
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @cik_select_se_sh(%struct.radeon_device* %25, i32 %27, i32 %29)
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %44, %24
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* @RLC_SERDES_CU_MASTER_BUSY, align 4
  %39 = call i64 @RREG32(i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %47

42:                                               ; preds = %37
  %43 = call i32 @udelay(i32 1)
  br label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %31

47:                                               ; preds = %41, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %16

51:                                               ; preds = %16
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %3, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %3, align 8
  br label %7

55:                                               ; preds = %7
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = call i32 @cik_select_se_sh(%struct.radeon_device* %56, i32 -1, i32 -1)
  %58 = load i64, i64* @SE_MASTER_BUSY_MASK, align 8
  %59 = load i64, i64* @GC_MASTER_BUSY, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* @TC0_MASTER_BUSY, align 8
  %62 = or i64 %60, %61
  %63 = load i64, i64* @TC1_MASTER_BUSY, align 8
  %64 = or i64 %62, %63
  store i64 %64, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %65

65:                                               ; preds = %80, %55
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load i32, i32* @RLC_SERDES_NONCU_MASTER_BUSY, align 4
  %73 = call i64 @RREG32(i32 %72)
  %74 = load i64, i64* %6, align 8
  %75 = and i64 %73, %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %83

78:                                               ; preds = %71
  %79 = call i32 @udelay(i32 1)
  br label %80

80:                                               ; preds = %78
  %81 = load i64, i64* %5, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %65

83:                                               ; preds = %77, %65
  ret void
}

declare dso_local i32 @cik_select_se_sh(%struct.radeon_device*, i32, i32) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
