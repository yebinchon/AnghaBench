; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_disable_pipestat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_disable_pipestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_disable_pipestat(%struct.drm_psb_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @psb_pipestat(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %23
  store i32 %31, i32* %29, align 4
  %32 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %33 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @gma_power_begin(i32 %34, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %19
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PSB_RVDC32(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @PSB_WVDC32(i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @PSB_RVDC32(i32 %47)
  %49 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %50 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gma_power_end(i32 %51)
  br label %53

53:                                               ; preds = %37, %19
  br label %54

54:                                               ; preds = %53, %3
  ret void
}

declare dso_local i32 @psb_pipestat(i32) #1

declare dso_local i64 @gma_power_begin(i32, i32) #1

declare dso_local i32 @PSB_RVDC32(i32) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @gma_power_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
