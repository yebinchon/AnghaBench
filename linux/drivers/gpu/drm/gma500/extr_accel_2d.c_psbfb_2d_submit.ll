; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psbfb_2d_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psbfb_2d_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i32 }

@PSB_SGX_2D_SLAVE_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_psb_private*, i32*, i32)* @psbfb_2d_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbfb_2d_submit(%struct.drm_psb_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %11, i32 0, i32 0
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  br label %15

15:                                               ; preds = %54, %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %19, 96
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 96, %23 ]
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @psb_2d_wait_available(%struct.drm_psb_private* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %61

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, 2
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %51, %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %5, align 8
  %45 = load i32, i32* %43, align 4
  %46 = load i64, i64* @PSB_SGX_2D_SLAVE_PORT, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @PSB_WSGX32(i32 %45, i64 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %8, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load i64, i64* @PSB_SGX_2D_SLAVE_PORT, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = sub nsw i64 %58, 4
  %60 = call i32 @PSB_RSGX32(i64 %59)
  br label %15

61:                                               ; preds = %34, %15
  %62 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %63 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %62, i32 0, i32 0
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @psb_2d_wait_available(%struct.drm_psb_private*, i32) #1

declare dso_local i32 @PSB_WSGX32(i32, i64) #1

declare dso_local i32 @PSB_RSGX32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
