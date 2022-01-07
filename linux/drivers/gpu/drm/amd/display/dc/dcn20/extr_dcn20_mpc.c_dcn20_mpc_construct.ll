; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_dcn20_mpc_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_dcn20_mpc_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn20_mpc = type { i32, %struct.TYPE_2__, i64, %struct.dcn20_mpc_mask*, %struct.dcn20_mpc_shift*, %struct.dcn20_mpc_registers* }
%struct.TYPE_2__ = type { i32*, i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dcn20_mpc_registers = type { i32 }
%struct.dcn20_mpc_shift = type { i32 }
%struct.dcn20_mpc_mask = type { i32 }

@dcn20_mpc_funcs = common dso_local global i32 0, align 4
@MAX_MPCC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_mpc_construct(%struct.dcn20_mpc* %0, %struct.dc_context* %1, %struct.dcn20_mpc_registers* %2, %struct.dcn20_mpc_shift* %3, %struct.dcn20_mpc_mask* %4, i32 %5) #0 {
  %7 = alloca %struct.dcn20_mpc*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca %struct.dcn20_mpc_registers*, align 8
  %10 = alloca %struct.dcn20_mpc_shift*, align 8
  %11 = alloca %struct.dcn20_mpc_mask*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dcn20_mpc* %0, %struct.dcn20_mpc** %7, align 8
  store %struct.dc_context* %1, %struct.dc_context** %8, align 8
  store %struct.dcn20_mpc_registers* %2, %struct.dcn20_mpc_registers** %9, align 8
  store %struct.dcn20_mpc_shift* %3, %struct.dcn20_mpc_shift** %10, align 8
  store %struct.dcn20_mpc_mask* %4, %struct.dcn20_mpc_mask** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %15 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %16 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store %struct.dc_context* %14, %struct.dc_context** %17, align 8
  %18 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %19 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32* @dcn20_mpc_funcs, i32** %20, align 8
  %21 = load %struct.dcn20_mpc_registers*, %struct.dcn20_mpc_registers** %9, align 8
  %22 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %23 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %22, i32 0, i32 5
  store %struct.dcn20_mpc_registers* %21, %struct.dcn20_mpc_registers** %23, align 8
  %24 = load %struct.dcn20_mpc_shift*, %struct.dcn20_mpc_shift** %10, align 8
  %25 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %26 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %25, i32 0, i32 4
  store %struct.dcn20_mpc_shift* %24, %struct.dcn20_mpc_shift** %26, align 8
  %27 = load %struct.dcn20_mpc_mask*, %struct.dcn20_mpc_mask** %11, align 8
  %28 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %29 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %28, i32 0, i32 3
  store %struct.dcn20_mpc_mask* %27, %struct.dcn20_mpc_mask** %29, align 8
  %30 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %31 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %34 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %49, %6
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @MAX_MPCC, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %41 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @mpc2_init_mpcc(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %35

52:                                               ; preds = %35
  ret void
}

declare dso_local i32 @mpc2_init_mpcc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
