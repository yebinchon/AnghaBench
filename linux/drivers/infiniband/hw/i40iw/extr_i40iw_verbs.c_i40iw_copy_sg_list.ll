; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_copy_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_copy_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sge = type { i32, i32, i32 }
%struct.ib_sge = type { i32, i32, i32 }

@I40IW_MAX_WQ_FRAGMENT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_sge*, %struct.ib_sge*, i32)* @i40iw_copy_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_copy_sg_list(%struct.i40iw_sge* %0, %struct.ib_sge* %1, i32 %2) #0 {
  %4 = alloca %struct.i40iw_sge*, align 8
  %5 = alloca %struct.ib_sge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40iw_sge* %0, %struct.i40iw_sge** %4, align 8
  store %struct.ib_sge* %1, %struct.ib_sge** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %52, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @I40IW_MAX_WQ_FRAGMENT_COUNT, align 4
  %15 = icmp ult i32 %13, %14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %55

18:                                               ; preds = %16
  %19 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %19, i64 %21
  %23 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i40iw_sge*, %struct.i40iw_sge** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i40iw_sge, %struct.i40iw_sge* %25, i64 %27
  %29 = getelementptr inbounds %struct.i40iw_sge, %struct.i40iw_sge* %28, i32 0, i32 2
  store i32 %24, i32* %29, align 4
  %30 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %30, i64 %32
  %34 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i40iw_sge*, %struct.i40iw_sge** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.i40iw_sge, %struct.i40iw_sge* %36, i64 %38
  %40 = getelementptr inbounds %struct.i40iw_sge, %struct.i40iw_sge* %39, i32 0, i32 1
  store i32 %35, i32* %40, align 4
  %41 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %41, i64 %43
  %45 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.i40iw_sge*, %struct.i40iw_sge** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i40iw_sge, %struct.i40iw_sge* %47, i64 %49
  %51 = getelementptr inbounds %struct.i40iw_sge, %struct.i40iw_sge* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %18
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %8

55:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
