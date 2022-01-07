; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_set_umr_free_mkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_set_umr_free_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.TYPE_2__ = type { i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@free = common dso_local global %struct.ib_pd* null, align 8
@qpn = common dso_local global %struct.ib_pd* null, align 8
@translations_octword_size = common dso_local global %struct.ib_pd* null, align 8
@access_mode_1_0 = common dso_local global %struct.ib_pd* null, align 8
@access_mode_4_2 = common dso_local global %struct.ib_pd* null, align 8
@umr_en = common dso_local global %struct.ib_pd* null, align 8
@log_page_size = common dso_local global %struct.ib_pd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_pd*, i32*, i32, i32, i32)* @mlx5_set_umr_free_mkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_set_umr_free_mkey(%struct.ib_pd* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @create_mkey_in, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @memory_key_mkey_entry, align 4
  %15 = call i8* @MLX5_ADDR_OF(i32 %12, i32* %13, i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load %struct.ib_pd*, %struct.ib_pd** @free, align 8
  %19 = call i32 @MLX5_SET(i8* %16, i8* %17, %struct.ib_pd* %18, i32 1)
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.ib_pd*, %struct.ib_pd** @qpn, align 8
  %23 = call i32 @MLX5_SET(i8* %20, i8* %21, %struct.ib_pd* %22, i32 16777215)
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %27 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %28 = call %struct.TYPE_2__* @to_mpd(%struct.ib_pd* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MLX5_SET(i8* %24, i8* %25, %struct.ib_pd* %26, i32 %30)
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.ib_pd*, %struct.ib_pd** @translations_octword_size, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @MLX5_SET(i8* %32, i8* %33, %struct.ib_pd* %34, i32 %35)
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.ib_pd*, %struct.ib_pd** @access_mode_1_0, align 8
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 3
  %42 = call i32 @MLX5_SET(i8* %37, i8* %38, %struct.ib_pd* %39, i32 %41)
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.ib_pd*, %struct.ib_pd** @access_mode_4_2, align 8
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 2
  %48 = and i32 %47, 7
  %49 = call i32 @MLX5_SET(i8* %43, i8* %44, %struct.ib_pd* %45, i32 %48)
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.ib_pd*, %struct.ib_pd** @umr_en, align 8
  %53 = call i32 @MLX5_SET(i8* %50, i8* %51, %struct.ib_pd* %52, i32 1)
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.ib_pd*, %struct.ib_pd** @log_page_size, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @MLX5_SET(i8* %54, i8* %55, %struct.ib_pd* %56, i32 %57)
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local %struct.TYPE_2__* @to_mpd(%struct.ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
