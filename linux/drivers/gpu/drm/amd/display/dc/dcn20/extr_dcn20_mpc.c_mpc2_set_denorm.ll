; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_denorm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_denorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dcn20_mpc = type { i32 }

@DENORM_CONTROL = common dso_local global i32* null, align 8
@MPC_OUT_DENORM_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc2_set_denorm(%struct.mpc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn20_mpc*, align 8
  %8 = alloca i32, align 4
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mpc*, %struct.mpc** %4, align 8
  %10 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %9)
  store %struct.dcn20_mpc* %10, %struct.dcn20_mpc** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %19 [
    i32 130, label %12
    i32 129, label %13
    i32 128, label %14
    i32 135, label %15
    i32 134, label %16
    i32 133, label %17
    i32 132, label %18
    i32 131, label %18
  ]

12:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %20

13:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %20

14:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  br label %20

15:                                               ; preds = %3
  store i32 4, i32* %8, align 4
  br label %20

16:                                               ; preds = %3
  store i32 5, i32* %8, align 4
  br label %20

17:                                               ; preds = %3
  store i32 6, i32* %8, align 4
  br label %20

18:                                               ; preds = %3, %3
  br label %19

19:                                               ; preds = %3, %18
  br label %20

20:                                               ; preds = %19, %17, %16, %15, %14, %13, %12
  %21 = load i32*, i32** @DENORM_CONTROL, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MPC_OUT_DENORM_MODE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @REG_UPDATE(i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
