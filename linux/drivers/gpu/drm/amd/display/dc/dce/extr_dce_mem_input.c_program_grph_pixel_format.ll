; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_grph_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_grph_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { i32 }

@GRPH_SWAP_CNTL = common dso_local global i32 0, align 4
@GRPH_RED_CROSSBAR = common dso_local global i32 0, align 4
@GRPH_BLUE_CROSSBAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported grph pixel format\00", align 1
@GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_DEPTH = common dso_local global i32 0, align 4
@GRPH_FORMAT = common dso_local global i32 0, align 4
@PRESCALE_GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_PRESCALE_SELECT = common dso_local global i32 0, align 4
@GRPH_PRESCALE_R_SIGN = common dso_local global i32 0, align 4
@GRPH_PRESCALE_G_SIGN = common dso_local global i32 0, align 4
@GRPH_PRESCALE_B_SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i32)* @program_grph_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_grph_pixel_format(%struct.dce_mem_input* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_mem_input*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 135
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 137
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 136
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 138
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %13, %2
  store i32 2, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* @GRPH_SWAP_CNTL, align 4
  %25 = load i32, i32* @GRPH_RED_CROSSBAR, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @GRPH_BLUE_CROSSBAR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @REG_SET_2(i32 %24, i32 0, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %38 [
    i32 129, label %31
    i32 134, label %32
    i32 128, label %33
    i32 130, label %34
    i32 135, label %34
    i32 131, label %35
    i32 137, label %35
    i32 136, label %35
    i32 138, label %36
    i32 132, label %37
    i32 133, label %37
  ]

31:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %40

32:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %40

33:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %40

34:                                               ; preds = %23, %23
  store i32 2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %40

35:                                               ; preds = %23, %23, %23
  store i32 2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %40

36:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %23, %23, %36
  store i32 3, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %40

38:                                               ; preds = %23
  %39 = call i32 @DC_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %37, %35, %34, %33, %32, %31
  %41 = load i32, i32* @GRPH_CONTROL, align 4
  %42 = load i32, i32* @GRPH_DEPTH, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GRPH_FORMAT, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @REG_UPDATE_2(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @PRESCALE_GRPH_CONTROL, align 4
  %48 = load i32, i32* @GRPH_PRESCALE_SELECT, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @GRPH_PRESCALE_R_SIGN, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @GRPH_PRESCALE_G_SIGN, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @GRPH_PRESCALE_B_SIGN, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @REG_UPDATE_4(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DC_ERR(i8*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
