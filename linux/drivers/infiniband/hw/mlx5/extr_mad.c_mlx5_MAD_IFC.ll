; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_MAD_IFC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_MAD_IFC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, i8*, i8*)* @mlx5_MAD_IFC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2, i32 %3, %struct.ib_wc* %4, %struct.ib_grh* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_wc*, align 8
  %15 = alloca %struct.ib_grh*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %14, align 8
  store %struct.ib_grh* %5, %struct.ib_grh** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i8*, i8** %16, align 8
  %22 = bitcast i8* %21 to %struct.ib_mad*
  %23 = call i32 @can_do_mad_ifc(%struct.mlx5_ib_dev* %19, i32 %20, %struct.ib_mad* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %55

28:                                               ; preds = %8
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %33 = icmp ne %struct.ib_wc* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %18, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %18, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %42 = icmp ne %struct.ib_wc* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %18, align 4
  %45 = or i32 %44, 2
  store i32 %45, i32* %18, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %16, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @mlx5_cmd_mad_ifc(i32 %49, i8* %50, i8* %51, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %46, %25
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @can_do_mad_ifc(%struct.mlx5_ib_dev*, i32, %struct.ib_mad*) #1

declare dso_local i32 @mlx5_cmd_mad_ifc(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
