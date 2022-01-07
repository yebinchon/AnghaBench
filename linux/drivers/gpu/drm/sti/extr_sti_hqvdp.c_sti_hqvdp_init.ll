; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hqvdp = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sti_hqvdp_vtg_cb = common dso_local global i32 0, align 4
@NB_VDP_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate memory for VDP cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_hqvdp*)* @sti_hqvdp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hqvdp_init(%struct.sti_hqvdp* %0) #0 {
  %2 = alloca %struct.sti_hqvdp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.sti_hqvdp* %0, %struct.sti_hqvdp** %2, align 8
  %5 = load i32, i32* @sti_hqvdp_vtg_cb, align 4
  %6 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %7 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @NB_VDP_CMD, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %14 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @GFP_DMA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @dma_alloc_wc(i32 %15, i32 %16, i64* %4, i32 %19)
  %21 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %22 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %24 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %38

29:                                               ; preds = %1
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %32 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %34 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @memset(i32 %35, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %29, %27
  ret void
}

declare dso_local i32 @dma_alloc_wc(i32, i32, i64*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
