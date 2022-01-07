; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_win_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_win_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop = type { %struct.vop_win*, %struct.vop_data* }
%struct.vop_win = type { i32*, %struct.vop*, %struct.vop_win_data* }
%struct.vop_win_data = type { i32 }
%struct.vop_data = type { i32, i32*, %struct.vop_win_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vop*)* @vop_win_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vop_win_init(%struct.vop* %0) #0 {
  %2 = alloca %struct.vop*, align 8
  %3 = alloca %struct.vop_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vop_win*, align 8
  %6 = alloca %struct.vop_win_data*, align 8
  store %struct.vop* %0, %struct.vop** %2, align 8
  %7 = load %struct.vop*, %struct.vop** %2, align 8
  %8 = getelementptr inbounds %struct.vop, %struct.vop* %7, i32 0, i32 1
  %9 = load %struct.vop_data*, %struct.vop_data** %8, align 8
  store %struct.vop_data* %9, %struct.vop_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.vop_data*, %struct.vop_data** %3, align 8
  %13 = getelementptr inbounds %struct.vop_data, %struct.vop_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load %struct.vop*, %struct.vop** %2, align 8
  %18 = getelementptr inbounds %struct.vop, %struct.vop* %17, i32 0, i32 0
  %19 = load %struct.vop_win*, %struct.vop_win** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %19, i64 %21
  store %struct.vop_win* %22, %struct.vop_win** %5, align 8
  %23 = load %struct.vop_data*, %struct.vop_data** %3, align 8
  %24 = getelementptr inbounds %struct.vop_data, %struct.vop_data* %23, i32 0, i32 2
  %25 = load %struct.vop_win_data*, %struct.vop_win_data** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vop_win_data, %struct.vop_win_data* %25, i64 %27
  store %struct.vop_win_data* %28, %struct.vop_win_data** %6, align 8
  %29 = load %struct.vop_win_data*, %struct.vop_win_data** %6, align 8
  %30 = load %struct.vop_win*, %struct.vop_win** %5, align 8
  %31 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %30, i32 0, i32 2
  store %struct.vop_win_data* %29, %struct.vop_win_data** %31, align 8
  %32 = load %struct.vop*, %struct.vop** %2, align 8
  %33 = load %struct.vop_win*, %struct.vop_win** %5, align 8
  %34 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %33, i32 0, i32 1
  store %struct.vop* %32, %struct.vop** %34, align 8
  %35 = load %struct.vop_data*, %struct.vop_data** %3, align 8
  %36 = getelementptr inbounds %struct.vop_data, %struct.vop_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %16
  %40 = load %struct.vop_data*, %struct.vop_data** %3, align 8
  %41 = getelementptr inbounds %struct.vop_data, %struct.vop_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.vop_win*, %struct.vop_win** %5, align 8
  %47 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %39, %16
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %10

52:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
