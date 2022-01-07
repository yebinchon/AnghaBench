; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_assert_idle_mpcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_assert_idle_mpcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dcn10_mpc = type { i32 }

@MPCC_STATUS = common dso_local global i32* null, align 8
@MPCC_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_assert_idle_mpcc(%struct.mpc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn10_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mpc*, %struct.mpc** %3, align 8
  %7 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %6)
  store %struct.dcn10_mpc* %7, %struct.dcn10_mpc** %5, align 8
  %8 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %5, align 8
  %9 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32*, i32** @MPCC_STATUS, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MPCC_IDLE, align 4
  %24 = call i32 @REG_WAIT(i32 %22, i32 %23, i32 1, i32 1, i32 100000)
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
