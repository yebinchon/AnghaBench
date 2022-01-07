; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_assert_mpcc_idle_before_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_assert_mpcc_idle_before_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dcn10_mpc = type { i32 }

@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_STATUS = common dso_local global i32* null, align 8
@MPCC_BUSY = common dso_local global i32 0, align 4
@MPCC_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_assert_mpcc_idle_before_connect(%struct.mpc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn10_mpc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mpc* %0, %struct.mpc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mpc*, %struct.mpc** %3, align 8
  %10 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %9)
  store %struct.dcn10_mpc* %10, %struct.dcn10_mpc** %5, align 8
  %11 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %17 = call i32 @REG_GET(i32 %15, i32* %16, i32* %6)
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 15
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load i32*, i32** @MPCC_STATUS, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MPCC_BUSY, align 4
  %27 = load i32, i32* @MPCC_IDLE, align 4
  %28 = call i32 @REG_GET_2(i32 %25, i32 %26, i32* %7, i32 %27, i32* %8)
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  br label %37

37:                                               ; preds = %20, %2
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_GET(i32, i32*, i32*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
