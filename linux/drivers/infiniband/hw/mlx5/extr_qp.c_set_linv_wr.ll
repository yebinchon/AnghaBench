; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_linv_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_linv_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, i8**, i32*, i8**)* @set_linv_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_linv_wr(%struct.mlx5_ib_qp* %0, i8** %1, i32* %2, i8** %3) #0 {
  %5 = alloca %struct.mlx5_ib_qp*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @set_linv_umr_seg(i8* %10)
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i64 4
  store i8* %14, i8** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 0
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %20, i32 0, i32 0
  %22 = load i8**, i8*** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i8**, i8*** %8, align 8
  %26 = call i32 @handle_post_send_edge(i32* %21, i8** %22, i32 %24, i8** %25)
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @set_linv_mkey_seg(i8* %28)
  %30 = load i8**, i8*** %6, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 4
  store i8* %32, i8** %30, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 0
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %38, i32 0, i32 0
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i8**, i8*** %8, align 8
  %44 = call i32 @handle_post_send_edge(i32* %39, i8** %40, i32 %42, i8** %43)
  ret void
}

declare dso_local i32 @set_linv_umr_seg(i8*) #1

declare dso_local i32 @handle_post_send_edge(i32*, i8**, i32, i8**) #1

declare dso_local i32 @set_linv_mkey_seg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
