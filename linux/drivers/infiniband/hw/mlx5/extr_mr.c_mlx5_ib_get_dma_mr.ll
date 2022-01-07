; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_mr = type { i32, i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ib_mr = type { %struct.ib_mr, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@access_mode_1_0 = common dso_local global %struct.ib_pd* null, align 8
@MLX5_MKC_ACCESS_MODE_PA = common dso_local global i32 0, align 4
@a = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@rw = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@rr = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@lw = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@lr = common dso_local global %struct.ib_pd* null, align 8
@length64 = common dso_local global %struct.ib_pd* null, align 8
@qpn = common dso_local global %struct.ib_pd* null, align 8
@start_addr = common dso_local global i32 0, align 4
@MLX5_MKEY_MR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx5_ib_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5_ib_mr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mlx5_ib_mr*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlx5_ib_dev* @to_mdev(i32 %15)
  store %struct.mlx5_ib_dev* %16, %struct.mlx5_ib_dev** %6, align 8
  %17 = load i32, i32* @create_mkey_in, align 4
  %18 = call i32 @MLX5_ST_SZ_BYTES(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 0
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %8, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mlx5_ib_mr* @kzalloc(i32 24, i32 %22)
  store %struct.mlx5_ib_mr* %23, %struct.mlx5_ib_mr** %9, align 8
  %24 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %25 = icmp ne %struct.mlx5_ib_mr* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_mr* @ERR_PTR(i32 %28)
  store %struct.ib_mr* %29, %struct.ib_mr** %3, align 8
  br label %159

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mlx5_ib_mr* @kzalloc(i32 %31, i32 %32)
  store %struct.mlx5_ib_mr* %33, %struct.mlx5_ib_mr** %11, align 8
  %34 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %35 = icmp ne %struct.mlx5_ib_mr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %154

39:                                               ; preds = %30
  %40 = load i32, i32* @create_mkey_in, align 4
  %41 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %42 = load i32, i32* @memory_key_mkey_entry, align 4
  %43 = call i8* @MLX5_ADDR_OF(i32 %40, %struct.mlx5_ib_mr* %41, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.ib_pd*, %struct.ib_pd** @access_mode_1_0, align 8
  %47 = load i32, i32* @MLX5_MKC_ACCESS_MODE_PA, align 4
  %48 = call i32 @MLX5_SET(i8* %44, i8* %45, %struct.ib_pd* %46, i32 %47)
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.ib_pd*, %struct.ib_pd** @a, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @MLX5_SET(i8* %49, i8* %50, %struct.ib_pd* %51, i32 %58)
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.ib_pd*, %struct.ib_pd** @rw, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @MLX5_SET(i8* %60, i8* %61, %struct.ib_pd* %62, i32 %69)
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.ib_pd*, %struct.ib_pd** @rr, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @MLX5_SET(i8* %71, i8* %72, %struct.ib_pd* %73, i32 %80)
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.ib_pd*, %struct.ib_pd** @lw, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @MLX5_SET(i8* %82, i8* %83, %struct.ib_pd* %84, i32 %91)
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.ib_pd*, %struct.ib_pd** @lr, align 8
  %96 = call i32 @MLX5_SET(i8* %93, i8* %94, %struct.ib_pd* %95, i32 1)
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.ib_pd*, %struct.ib_pd** @length64, align 8
  %100 = call i32 @MLX5_SET(i8* %97, i8* %98, %struct.ib_pd* %99, i32 1)
  %101 = load i8*, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %104 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %105 = call %struct.TYPE_3__* @to_mpd(%struct.ib_pd* %104)
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @MLX5_SET(i8* %101, i8* %102, %struct.ib_pd* %103, i32 %107)
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.ib_pd*, %struct.ib_pd** @qpn, align 8
  %112 = call i32 @MLX5_SET(i8* %109, i8* %110, %struct.ib_pd* %111, i32 16777215)
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* @start_addr, align 4
  %116 = call i32 @MLX5_SET64(i8* %113, i8* %114, i32 %115, i32 0)
  %117 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %118 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %119 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %118, i32 0, i32 2
  %120 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev* %117, %struct.TYPE_4__* %119, %struct.mlx5_ib_mr* %120, i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %39
  br label %151

126:                                              ; preds = %39
  %127 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %128 = call i32 @kfree(%struct.mlx5_ib_mr* %127)
  %129 = load i32, i32* @MLX5_MKEY_MR, align 4
  %130 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %131 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %134 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %138 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  %140 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %141 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %145 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %148 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %147, i32 0, i32 1
  store i32* null, i32** %148, align 8
  %149 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %150 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %149, i32 0, i32 0
  store %struct.ib_mr* %150, %struct.ib_mr** %3, align 8
  br label %159

151:                                              ; preds = %125
  %152 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %153 = call i32 @kfree(%struct.mlx5_ib_mr* %152)
  br label %154

154:                                              ; preds = %151, %36
  %155 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %156 = call i32 @kfree(%struct.mlx5_ib_mr* %155)
  %157 = load i32, i32* %12, align 4
  %158 = call %struct.ib_mr* @ERR_PTR(i32 %157)
  store %struct.ib_mr* %158, %struct.ib_mr** %3, align 8
  br label %159

159:                                              ; preds = %154, %126, %26
  %160 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %160
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local %struct.mlx5_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local %struct.TYPE_3__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev*, %struct.TYPE_4__*, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
