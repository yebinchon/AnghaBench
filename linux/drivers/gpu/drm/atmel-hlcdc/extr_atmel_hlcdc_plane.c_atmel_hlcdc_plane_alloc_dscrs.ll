; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_alloc_dscrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_alloc_dscrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.atmel_hlcdc_dc* }
%struct.atmel_hlcdc_dc = type { i32 }
%struct.atmel_hlcdc_plane_state = type { %struct.atmel_hlcdc_dma_channel_dscr** }
%struct.atmel_hlcdc_dma_channel_dscr = type { i8*, i32, i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_DFETCH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.atmel_hlcdc_plane_state*)* @atmel_hlcdc_plane_alloc_dscrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_plane_alloc_dscrs(%struct.drm_plane* %0, %struct.atmel_hlcdc_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %6 = alloca %struct.atmel_hlcdc_dc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_hlcdc_dma_channel_dscr*, align 8
  %9 = alloca i8*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.atmel_hlcdc_plane_state* %1, %struct.atmel_hlcdc_plane_state** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %13, align 8
  store %struct.atmel_hlcdc_dc* %14, %struct.atmel_hlcdc_dc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %50, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %17, i32 0, i32 0
  %19 = load %struct.atmel_hlcdc_dma_channel_dscr**, %struct.atmel_hlcdc_dma_channel_dscr*** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.atmel_hlcdc_dma_channel_dscr** %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %15
  %23 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %24 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.atmel_hlcdc_dma_channel_dscr* @dma_pool_alloc(i32 %25, i32 %26, i8** %9)
  store %struct.atmel_hlcdc_dma_channel_dscr* %27, %struct.atmel_hlcdc_dma_channel_dscr** %8, align 8
  %28 = load %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %8, align 8
  %29 = icmp ne %struct.atmel_hlcdc_dma_channel_dscr* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %54

31:                                               ; preds = %22
  %32 = load %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %8, align 8
  %33 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, %struct.atmel_hlcdc_dma_channel_dscr* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %8, align 8
  %36 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, %struct.atmel_hlcdc_dma_channel_dscr* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %8, align 8
  %39 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, %struct.atmel_hlcdc_dma_channel_dscr* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @ATMEL_HLCDC_LAYER_DFETCH, align 4
  %41 = load %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %8, align 8
  %42 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, %struct.atmel_hlcdc_dma_channel_dscr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %8, align 8
  %44 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %44, i32 0, i32 0
  %46 = load %struct.atmel_hlcdc_dma_channel_dscr**, %struct.atmel_hlcdc_dma_channel_dscr*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %46, i64 %48
  store %struct.atmel_hlcdc_dma_channel_dscr* %43, %struct.atmel_hlcdc_dma_channel_dscr** %49, align 8
  br label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %15

53:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %87

54:                                               ; preds = %30
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %81, %54
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %62 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %65 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %64, i32 0, i32 0
  %66 = load %struct.atmel_hlcdc_dma_channel_dscr**, %struct.atmel_hlcdc_dma_channel_dscr*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %66, i64 %68
  %70 = load %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %69, align 8
  %71 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %72 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %71, i32 0, i32 0
  %73 = load %struct.atmel_hlcdc_dma_channel_dscr**, %struct.atmel_hlcdc_dma_channel_dscr*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %73, i64 %75
  %77 = load %struct.atmel_hlcdc_dma_channel_dscr*, %struct.atmel_hlcdc_dma_channel_dscr** %76, align 8
  %78 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, %struct.atmel_hlcdc_dma_channel_dscr* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @dma_pool_free(i32 %63, %struct.atmel_hlcdc_dma_channel_dscr* %70, i8* %79)
  br label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %57

84:                                               ; preds = %57
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %53
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ARRAY_SIZE(%struct.atmel_hlcdc_dma_channel_dscr**) #1

declare dso_local %struct.atmel_hlcdc_dma_channel_dscr* @dma_pool_alloc(i32, i32, i8**) #1

declare dso_local i32 @dma_pool_free(i32, %struct.atmel_hlcdc_dma_channel_dscr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
