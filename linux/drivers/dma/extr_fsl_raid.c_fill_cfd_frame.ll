; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fill_cfd_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fill_cfd_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_re_cmpnd_frame = type { i32, i32, i32 }

@FSL_RE_CF_LENGTH_MASK = common dso_local global i64 0, align 8
@FSL_RE_CF_FINAL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_re_cmpnd_frame*, i64, i64, i32, i32)* @fill_cfd_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_cfd_frame(%struct.fsl_re_cmpnd_frame* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fsl_re_cmpnd_frame*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fsl_re_cmpnd_frame* %0, %struct.fsl_re_cmpnd_frame** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @FSL_RE_CF_LENGTH_MASK, align 8
  %14 = and i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @FSL_RE_CF_FINAL_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %11, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.fsl_re_cmpnd_frame*, %struct.fsl_re_cmpnd_frame** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.fsl_re_cmpnd_frame, %struct.fsl_re_cmpnd_frame* %22, i64 %23
  %25 = getelementptr inbounds %struct.fsl_re_cmpnd_frame, %struct.fsl_re_cmpnd_frame* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @upper_32_bits(i32 %26)
  %28 = load %struct.fsl_re_cmpnd_frame*, %struct.fsl_re_cmpnd_frame** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.fsl_re_cmpnd_frame, %struct.fsl_re_cmpnd_frame* %28, i64 %29
  %31 = getelementptr inbounds %struct.fsl_re_cmpnd_frame, %struct.fsl_re_cmpnd_frame* %30, i32 0, i32 2
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = load %struct.fsl_re_cmpnd_frame*, %struct.fsl_re_cmpnd_frame** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.fsl_re_cmpnd_frame, %struct.fsl_re_cmpnd_frame* %34, i64 %35
  %37 = getelementptr inbounds %struct.fsl_re_cmpnd_frame, %struct.fsl_re_cmpnd_frame* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  ret void
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
