; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_get_mpcc_for_dpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_get_mpcc_for_dpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpcc = type { i32, %struct.mpcc* }
%struct.mpc_tree = type { %struct.mpcc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpcc* @mpc1_get_mpcc_for_dpp(%struct.mpc_tree* %0, i32 %1) #0 {
  %3 = alloca %struct.mpcc*, align 8
  %4 = alloca %struct.mpc_tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpcc*, align 8
  store %struct.mpc_tree* %0, %struct.mpc_tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mpc_tree*, %struct.mpc_tree** %4, align 8
  %8 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %7, i32 0, i32 0
  %9 = load %struct.mpcc*, %struct.mpcc** %8, align 8
  store %struct.mpcc* %9, %struct.mpcc** %6, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %12 = icmp ne %struct.mpcc* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %15 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  store %struct.mpcc* %20, %struct.mpcc** %3, align 8
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %23 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %22, i32 0, i32 1
  %24 = load %struct.mpcc*, %struct.mpcc** %23, align 8
  store %struct.mpcc* %24, %struct.mpcc** %6, align 8
  br label %10

25:                                               ; preds = %10
  store %struct.mpcc* null, %struct.mpcc** %3, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  ret %struct.mpcc* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
