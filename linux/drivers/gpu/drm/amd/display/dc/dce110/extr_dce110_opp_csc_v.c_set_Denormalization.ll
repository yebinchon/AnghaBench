; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_csc_v.c_set_Denormalization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_csc_v.c_set_Denormalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }

@mmDENORM_CLAMP_CONTROL = common dso_local global i32 0, align 4
@DENORM_CLAMP_CONTROL = common dso_local global i32 0, align 4
@DENORM_MODE = common dso_local global i32 0, align 4
@DENORM_10BIT_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transform*, i32)* @set_Denormalization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_Denormalization(%struct.transform* %0, i32 %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.transform* %0, %struct.transform** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.transform*, %struct.transform** %3, align 8
  %7 = getelementptr inbounds %struct.transform, %struct.transform* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @mmDENORM_CLAMP_CONTROL, align 4
  %10 = call i32 @dm_read_reg(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %27 [
    i32 128, label %12
    i32 130, label %17
    i32 129, label %22
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DENORM_CLAMP_CONTROL, align 4
  %15 = load i32, i32* @DENORM_MODE, align 4
  %16 = call i32 @set_reg_field_value(i32 %13, i32 1, i32 %14, i32 %15)
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @DENORM_CLAMP_CONTROL, align 4
  %20 = load i32, i32* @DENORM_MODE, align 4
  %21 = call i32 @set_reg_field_value(i32 %18, i32 2, i32 %19, i32 %20)
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DENORM_CLAMP_CONTROL, align 4
  %25 = load i32, i32* @DENORM_MODE, align 4
  %26 = call i32 @set_reg_field_value(i32 %23, i32 3, i32 %24, i32 %25)
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %22, %17, %12
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DENORM_CLAMP_CONTROL, align 4
  %31 = load i32, i32* @DENORM_10BIT_OUT, align 4
  %32 = call i32 @set_reg_field_value(i32 %29, i32 1, i32 %30, i32 %31)
  %33 = load %struct.transform*, %struct.transform** %3, align 8
  %34 = getelementptr inbounds %struct.transform, %struct.transform* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @mmDENORM_CLAMP_CONTROL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dm_write_reg(i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
