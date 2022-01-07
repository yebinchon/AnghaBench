; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_psv_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_psv_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sig_domain = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlx5_seg_set_psv = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"Bad signature type (%d) is given.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sig_domain*, i32, i8**, i32*)* @set_psv_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_psv_wr(%struct.ib_sig_domain* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_sig_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx5_seg_set_psv*, align 8
  store %struct.ib_sig_domain* %0, %struct.ib_sig_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8**, i8*** %8, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.mlx5_seg_set_psv*
  store %struct.mlx5_seg_set_psv* %13, %struct.mlx5_seg_set_psv** %10, align 8
  %14 = load %struct.mlx5_seg_set_psv*, %struct.mlx5_seg_set_psv** %10, align 8
  %15 = call i32 @memset(%struct.mlx5_seg_set_psv* %14, i32 0, i32 24)
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.mlx5_seg_set_psv*, %struct.mlx5_seg_set_psv** %10, align 8
  %19 = getelementptr inbounds %struct.mlx5_seg_set_psv, %struct.mlx5_seg_set_psv* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %6, align 8
  %21 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %48 [
    i32 129, label %23
    i32 128, label %24
  ]

23:                                               ; preds = %4
  br label %55

24:                                               ; preds = %4
  %25 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %6, align 8
  %26 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %6, align 8
  %32 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %30, %35
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.mlx5_seg_set_psv*, %struct.mlx5_seg_set_psv** %10, align 8
  %39 = getelementptr inbounds %struct.mlx5_seg_set_psv, %struct.mlx5_seg_set_psv* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %6, align 8
  %41 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.mlx5_seg_set_psv*, %struct.mlx5_seg_set_psv** %10, align 8
  %47 = getelementptr inbounds %struct.mlx5_seg_set_psv, %struct.mlx5_seg_set_psv* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %55

48:                                               ; preds = %4
  %49 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %6, align 8
  %50 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %64

55:                                               ; preds = %24, %23
  %56 = load i8**, i8*** %8, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr i8, i8* %57, i64 24
  store i8* %58, i8** %56, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 1
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %55, %48
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @memset(%struct.mlx5_seg_set_psv*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
