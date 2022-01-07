; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_assert_mpcc_idle_before_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_assert_mpcc_idle_before_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dcn20_mpc = type { i32 }

@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_STATUS = common dso_local global i32* null, align 8
@MPCC_BUSY = common dso_local global i32 0, align 4
@MPCC_IDLE = common dso_local global i32 0, align 4
@MPCC_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc2_assert_mpcc_idle_before_connect(%struct.mpc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn20_mpc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mpc* %0, %struct.mpc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mpc*, %struct.mpc** %3, align 8
  %11 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %10)
  store %struct.dcn20_mpc* %11, %struct.dcn20_mpc** %5, align 8
  %12 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %18 = call i32 @REG_GET(i32 %16, i32* %17, i32* %6)
  %19 = load i32*, i32** @MPCC_STATUS, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MPCC_BUSY, align 4
  %25 = load i32, i32* @MPCC_IDLE, align 4
  %26 = load i32, i32* @MPCC_DISABLED, align 4
  %27 = call i32 @REG_GET_3(i32 %23, i32 %24, i32* %7, i32 %25, i32* %8, i32 %26, i32* %9)
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 15
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ASSERT(i32 %38)
  br label %51

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  br label %51

51:                                               ; preds = %40, %30
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_GET(i32, i32*, i32*) #1

declare dso_local i32 @REG_GET_3(i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
