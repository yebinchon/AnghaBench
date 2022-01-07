; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_get_lines_per_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_get_lines_per_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURSOR_MODE_MONO = common dso_local global i32 0, align 4
@CURSOR_LINE_PER_CHUNK_16 = common dso_local global i32 0, align 4
@CURSOR_LINE_PER_CHUNK_8 = common dso_local global i32 0, align 4
@CURSOR_LINE_PER_CHUNK_4 = common dso_local global i32 0, align 4
@CURSOR_LINE_PER_CHUNK_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hubp1_get_lines_per_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hubp1_get_lines_per_chunk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CURSOR_MODE_MONO, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @CURSOR_LINE_PER_CHUNK_16, align 4
  store i32 %10, i32* %5, align 4
  br label %31

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp ule i32 %12, 32
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @CURSOR_LINE_PER_CHUNK_16, align 4
  store i32 %15, i32* %5, align 4
  br label %30

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = icmp ule i32 %17, 64
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @CURSOR_LINE_PER_CHUNK_8, align 4
  store i32 %20, i32* %5, align 4
  br label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = icmp ule i32 %22, 128
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @CURSOR_LINE_PER_CHUNK_4, align 4
  store i32 %25, i32* %5, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @CURSOR_LINE_PER_CHUNK_2, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29, %14
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
