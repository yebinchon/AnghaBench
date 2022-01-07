; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_get_mpcc_for_dpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_get_mpcc_for_dpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpcc = type { i32, %struct.mpcc* }
%struct.mpc_tree = type { %struct.mpcc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpcc* @mpc2_get_mpcc_for_dpp(%struct.mpc_tree* %0, i32 %1) #0 {
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

10:                                               ; preds = %26, %2
  %11 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %12 = icmp ne %struct.mpcc* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %15 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 15
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %20 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %13
  %25 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  store %struct.mpcc* %25, %struct.mpcc** %3, align 8
  br label %31

26:                                               ; preds = %18
  %27 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %28 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %27, i32 0, i32 1
  %29 = load %struct.mpcc*, %struct.mpcc** %28, align 8
  store %struct.mpcc* %29, %struct.mpcc** %6, align 8
  br label %10

30:                                               ; preds = %10
  store %struct.mpcc* null, %struct.mpcc** %3, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  ret %struct.mpcc* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
