; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.dce110_link_encoder = type { i32 }

@DIG_BE_CNTL = common dso_local global i32 0, align 4
@DIG_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_link_encoder_setup(%struct.link_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.link_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce110_link_encoder*, align 8
  store %struct.link_encoder* %0, %struct.link_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %7 = call %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder* %6)
  store %struct.dce110_link_encoder* %7, %struct.dce110_link_encoder** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %29 [
    i32 130, label %9
    i32 134, label %9
    i32 128, label %13
    i32 131, label %17
    i32 132, label %17
    i32 129, label %21
    i32 133, label %25
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @DIG_BE_CNTL, align 4
  %11 = load i32, i32* @DIG_MODE, align 4
  %12 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 0)
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @DIG_BE_CNTL, align 4
  %15 = load i32, i32* @DIG_MODE, align 4
  %16 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 1)
  br label %31

17:                                               ; preds = %2, %2
  %18 = load i32, i32* @DIG_BE_CNTL, align 4
  %19 = load i32, i32* @DIG_MODE, align 4
  %20 = call i32 @REG_UPDATE(i32 %18, i32 %19, i32 2)
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* @DIG_BE_CNTL, align 4
  %23 = load i32, i32* @DIG_MODE, align 4
  %24 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 3)
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @DIG_BE_CNTL, align 4
  %27 = load i32, i32* @DIG_MODE, align 4
  %28 = call i32 @REG_UPDATE(i32 %26, i32 %27, i32 5)
  br label %31

29:                                               ; preds = %2
  %30 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %31

31:                                               ; preds = %29, %25, %21, %17, %13, %9
  ret void
}

declare dso_local %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
