; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_assert_idle_mpcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_assert_idle_mpcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dcn20_mpc = type { i32 }

@MPCC_STATUS = common dso_local global i32* null, align 8
@MPCC_DISABLED = common dso_local global i32 0, align 4
@MPCC_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc2_assert_idle_mpcc(%struct.mpc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn20_mpc*, align 8
  %6 = alloca i32, align 4
  store %struct.mpc* %0, %struct.mpc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mpc*, %struct.mpc** %3, align 8
  %8 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %7)
  store %struct.dcn20_mpc* %8, %struct.dcn20_mpc** %5, align 8
  %9 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %10 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32*, i32** @MPCC_STATUS, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MPCC_DISABLED, align 4
  %25 = call i32 @REG_GET(i32 %23, i32 %24, i32* %6)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %37

29:                                               ; preds = %2
  %30 = load i32*, i32** @MPCC_STATUS, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MPCC_IDLE, align 4
  %36 = call i32 @REG_WAIT(i32 %34, i32 %35, i32 1, i32 1, i32 100000)
  br label %37

37:                                               ; preds = %29, %28
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
