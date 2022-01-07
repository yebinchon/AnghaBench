; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fsl_re_init_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fsl_re_init_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_re_chan = type { i32 }
%struct.fsl_re_desc = type { i32, i32, i8*, i8*, %struct.TYPE_3__, i32, %struct.TYPE_4__, %struct.fsl_re_chan* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@fsl_re_tx_submit = common dso_local global i32 0, align 4
@FSL_RE_FRAME_FORMAT = common dso_local global i32 0, align 4
@FSL_RE_HWDESC_FMT_SHIFT = common dso_local global i32 0, align 4
@FSL_RE_CF_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsl_re_desc* (%struct.fsl_re_chan*, %struct.fsl_re_desc*, i8*, i32)* @fsl_re_init_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsl_re_desc* @fsl_re_init_desc(%struct.fsl_re_chan* %0, %struct.fsl_re_desc* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.fsl_re_chan*, align 8
  %6 = alloca %struct.fsl_re_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.fsl_re_chan* %0, %struct.fsl_re_chan** %5, align 8
  store %struct.fsl_re_desc* %1, %struct.fsl_re_desc** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %5, align 8
  %10 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %11 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %10, i32 0, i32 7
  store %struct.fsl_re_chan* %9, %struct.fsl_re_chan** %11, align 8
  %12 = load i32, i32* @fsl_re_tx_submit, align 4
  %13 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %14 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %17 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %16, i32 0, i32 6
  %18 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %5, align 8
  %19 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %18, i32 0, i32 0
  %20 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__* %17, i32* %19)
  %21 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %22 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %21, i32 0, i32 5
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load i32, i32* @FSL_RE_FRAME_FORMAT, align 4
  %25 = load i32, i32* @FSL_RE_HWDESC_FMT_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %28 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @upper_32_bits(i32 %30)
  %32 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %33 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @lower_32_bits(i32 %35)
  %37 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %38 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %42 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %45 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @FSL_RE_CF_DESC_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %51 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @FSL_RE_CF_DESC_SIZE, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  %56 = getelementptr inbounds %struct.fsl_re_desc, %struct.fsl_re_desc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fsl_re_desc*, %struct.fsl_re_desc** %6, align 8
  ret %struct.fsl_re_desc* %57
}

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
