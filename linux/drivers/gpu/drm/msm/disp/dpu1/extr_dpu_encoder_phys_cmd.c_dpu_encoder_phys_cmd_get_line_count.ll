; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_get_line_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_get_line_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { %struct.dpu_hw_pingpong* }
%struct.dpu_hw_pingpong = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_pingpong.0*)* }
%struct.dpu_hw_pingpong.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_cmd_get_line_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_phys_cmd_get_line_count(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca %struct.dpu_hw_pingpong*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  %5 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %6 = icmp ne %struct.dpu_encoder_phys* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %9 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %8, i32 0, i32 0
  %10 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %9, align 8
  %11 = icmp ne %struct.dpu_hw_pingpong* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %7
  %16 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %17 = call i32 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %15
  %23 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %24 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %23, i32 0, i32 0
  %25 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %24, align 8
  store %struct.dpu_hw_pingpong* %25, %struct.dpu_hw_pingpong** %4, align 8
  %26 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %27 = getelementptr inbounds %struct.dpu_hw_pingpong, %struct.dpu_hw_pingpong* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dpu_hw_pingpong.0*)*, i32 (%struct.dpu_hw_pingpong.0*)** %28, align 8
  %30 = icmp ne i32 (%struct.dpu_hw_pingpong.0*)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %22
  %35 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %36 = getelementptr inbounds %struct.dpu_hw_pingpong, %struct.dpu_hw_pingpong* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dpu_hw_pingpong.0*)*, i32 (%struct.dpu_hw_pingpong.0*)** %37, align 8
  %39 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %40 = bitcast %struct.dpu_hw_pingpong* %39 to %struct.dpu_hw_pingpong.0*
  %41 = call i32 %38(%struct.dpu_hw_pingpong.0* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %34, %31, %19, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
