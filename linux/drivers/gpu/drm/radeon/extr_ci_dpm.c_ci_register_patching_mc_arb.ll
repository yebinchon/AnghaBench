; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_register_patching_mc_arb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_register_patching_mc_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MC_SEQ_MISC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32*)* @ci_register_patching_mc_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_register_patching_mc_arb(%struct.radeon_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @MC_SEQ_MISC0, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = and i32 %14, 3840
  %16 = icmp eq i32 %15, 768
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 26544
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 26545
  br i1 %34, label %35, label %77

35:                                               ; preds = %28, %21
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 100000
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 125000
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 49, %42
  %44 = sdiv i32 %43, 125000
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %45, 255
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, -16711681
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 %50, 16
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %76

55:                                               ; preds = %38, %35
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 125000
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %59, 137500
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 54, %62
  %64 = sdiv i32 %63, 137500
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %65, 255
  store i32 %66, i32* %11, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -16711681
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 16
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %61, %58, %55
  br label %76

76:                                               ; preds = %75, %41
  br label %77

77:                                               ; preds = %76, %28, %4
  ret void
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
