; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_dp_set_phy_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_dp_set_phy_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.encoder_set_dp_phy_pattern_param = type { i32, i32, i32 }
%struct.dce110_link_encoder = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_link_encoder_dp_set_phy_pattern(%struct.link_encoder* %0, %struct.encoder_set_dp_phy_pattern_param* %1) #0 {
  %3 = alloca %struct.link_encoder*, align 8
  %4 = alloca %struct.encoder_set_dp_phy_pattern_param*, align 8
  %5 = alloca %struct.dce110_link_encoder*, align 8
  store %struct.link_encoder* %0, %struct.link_encoder** %3, align 8
  store %struct.encoder_set_dp_phy_pattern_param* %1, %struct.encoder_set_dp_phy_pattern_param** %4, align 8
  %6 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %7 = call %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder* %6)
  store %struct.dce110_link_encoder* %7, %struct.dce110_link_encoder** %5, align 8
  %8 = load %struct.encoder_set_dp_phy_pattern_param*, %struct.encoder_set_dp_phy_pattern_param** %4, align 8
  %9 = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, %struct.encoder_set_dp_phy_pattern_param* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %53 [
    i32 132, label %11
    i32 131, label %14
    i32 130, label %17
    i32 129, label %20
    i32 135, label %23
    i32 133, label %26
    i32 134, label %29
    i32 139, label %32
    i32 138, label %38
    i32 137, label %41
    i32 136, label %44
    i32 128, label %47
  ]

11:                                               ; preds = %2
  %12 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %13 = call i32 @dce110_link_encoder_set_dp_phy_pattern_training_pattern(%struct.link_encoder* %12, i32 0)
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %16 = call i32 @dce110_link_encoder_set_dp_phy_pattern_training_pattern(%struct.link_encoder* %15, i32 1)
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %19 = call i32 @dce110_link_encoder_set_dp_phy_pattern_training_pattern(%struct.link_encoder* %18, i32 2)
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %22 = call i32 @dce110_link_encoder_set_dp_phy_pattern_training_pattern(%struct.link_encoder* %21, i32 3)
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %25 = call i32 @set_dp_phy_pattern_d102(%struct.dce110_link_encoder* %24)
  br label %55

26:                                               ; preds = %2
  %27 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %28 = call i32 @set_dp_phy_pattern_symbol_error(%struct.dce110_link_encoder* %27)
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %31 = call i32 @set_dp_phy_pattern_prbs7(%struct.dce110_link_encoder* %30)
  br label %55

32:                                               ; preds = %2
  %33 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %34 = load %struct.encoder_set_dp_phy_pattern_param*, %struct.encoder_set_dp_phy_pattern_param** %4, align 8
  %35 = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, %struct.encoder_set_dp_phy_pattern_param* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_dp_phy_pattern_80bit_custom(%struct.dce110_link_encoder* %33, i32 %36)
  br label %55

38:                                               ; preds = %2
  %39 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %40 = call i32 @set_dp_phy_pattern_hbr2_compliance_cp2520_2(%struct.dce110_link_encoder* %39, i32 1)
  br label %55

41:                                               ; preds = %2
  %42 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %43 = call i32 @set_dp_phy_pattern_hbr2_compliance_cp2520_2(%struct.dce110_link_encoder* %42, i32 2)
  br label %55

44:                                               ; preds = %2
  %45 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %46 = call i32 @set_dp_phy_pattern_hbr2_compliance_cp2520_2(%struct.dce110_link_encoder* %45, i32 3)
  br label %55

47:                                               ; preds = %2
  %48 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %49 = load %struct.encoder_set_dp_phy_pattern_param*, %struct.encoder_set_dp_phy_pattern_param** %4, align 8
  %50 = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, %struct.encoder_set_dp_phy_pattern_param* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_dp_phy_pattern_passthrough_mode(%struct.dce110_link_encoder* %48, i32 %51)
  br label %55

53:                                               ; preds = %2
  %54 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %55

55:                                               ; preds = %53, %47, %44, %41, %38, %32, %29, %26, %23, %20, %17, %14, %11
  ret void
}

declare dso_local %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder*) #1

declare dso_local i32 @dce110_link_encoder_set_dp_phy_pattern_training_pattern(%struct.link_encoder*, i32) #1

declare dso_local i32 @set_dp_phy_pattern_d102(%struct.dce110_link_encoder*) #1

declare dso_local i32 @set_dp_phy_pattern_symbol_error(%struct.dce110_link_encoder*) #1

declare dso_local i32 @set_dp_phy_pattern_prbs7(%struct.dce110_link_encoder*) #1

declare dso_local i32 @set_dp_phy_pattern_80bit_custom(%struct.dce110_link_encoder*, i32) #1

declare dso_local i32 @set_dp_phy_pattern_hbr2_compliance_cp2520_2(%struct.dce110_link_encoder*, i32) #1

declare dso_local i32 @set_dp_phy_pattern_passthrough_mode(%struct.dce110_link_encoder*, i32) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
