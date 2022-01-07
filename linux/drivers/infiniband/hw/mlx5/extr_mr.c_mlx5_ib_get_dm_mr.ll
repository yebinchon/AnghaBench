; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_get_dm_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_get_dm_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_mr = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ib_mr = type { %struct.ib_mr, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@access_mode_1_0 = common dso_local global %struct.ib_pd* null, align 8
@access_mode_4_2 = common dso_local global %struct.ib_pd* null, align 8
@a = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@rw = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@rr = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@lw = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@lr = common dso_local global %struct.ib_pd* null, align 8
@len = common dso_local global i32 0, align 4
@qpn = common dso_local global %struct.ib_pd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mr* (%struct.ib_pd*, i32, i32, i32, i32)* @mlx5_ib_get_dm_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mr* @mlx5_ib_get_dm_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ib_mr*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_ib_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_core_dev*, align 8
  %15 = alloca %struct.mlx5_ib_mr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.mlx5_ib_mr*, align 8
  %18 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mlx5_ib_dev* @to_mdev(i32 %21)
  store %struct.mlx5_ib_dev* %22, %struct.mlx5_ib_dev** %12, align 8
  %23 = load i32, i32* @create_mkey_in, align 4
  %24 = call i32 @MLX5_ST_SZ_BYTES(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %25, i32 0, i32 0
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %26, align 8
  store %struct.mlx5_core_dev* %27, %struct.mlx5_core_dev** %14, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mlx5_ib_mr* @kzalloc(i32 24, i32 %28)
  store %struct.mlx5_ib_mr* %29, %struct.mlx5_ib_mr** %15, align 8
  %30 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %31 = icmp ne %struct.mlx5_ib_mr* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.ib_mr* @ERR_PTR(i32 %34)
  store %struct.ib_mr* %35, %struct.ib_mr** %6, align 8
  br label %162

36:                                               ; preds = %5
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mlx5_ib_mr* @kzalloc(i32 %37, i32 %38)
  store %struct.mlx5_ib_mr* %39, %struct.mlx5_ib_mr** %17, align 8
  %40 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %17, align 8
  %41 = icmp ne %struct.mlx5_ib_mr* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %18, align 4
  br label %157

45:                                               ; preds = %36
  %46 = load i32, i32* @create_mkey_in, align 4
  %47 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %17, align 8
  %48 = load i32, i32* @memory_key_mkey_entry, align 4
  %49 = call i8* @MLX5_ADDR_OF(i32 %46, %struct.mlx5_ib_mr* %47, i32 %48)
  store i8* %49, i8** %16, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = load %struct.ib_pd*, %struct.ib_pd** @access_mode_1_0, align 8
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 3
  %55 = call i32 @MLX5_SET(i8* %50, i8* %51, %struct.ib_pd* %52, i32 %54)
  %56 = load i8*, i8** %16, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load %struct.ib_pd*, %struct.ib_pd** @access_mode_4_2, align 8
  %59 = load i32, i32* %11, align 4
  %60 = ashr i32 %59, 2
  %61 = and i32 %60, 7
  %62 = call i32 @MLX5_SET(i8* %56, i8* %57, %struct.ib_pd* %58, i32 %61)
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load %struct.ib_pd*, %struct.ib_pd** @a, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @MLX5_SET(i8* %63, i8* %64, %struct.ib_pd* %65, i32 %72)
  %74 = load i8*, i8** %16, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load %struct.ib_pd*, %struct.ib_pd** @rw, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @MLX5_SET(i8* %74, i8* %75, %struct.ib_pd* %76, i32 %83)
  %85 = load i8*, i8** %16, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load %struct.ib_pd*, %struct.ib_pd** @rr, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @MLX5_SET(i8* %85, i8* %86, %struct.ib_pd* %87, i32 %94)
  %96 = load i8*, i8** %16, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load %struct.ib_pd*, %struct.ib_pd** @lw, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @MLX5_SET(i8* %96, i8* %97, %struct.ib_pd* %98, i32 %105)
  %107 = load i8*, i8** %16, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = load %struct.ib_pd*, %struct.ib_pd** @lr, align 8
  %110 = call i32 @MLX5_SET(i8* %107, i8* %108, %struct.ib_pd* %109, i32 1)
  %111 = load i8*, i8** %16, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = load i32, i32* @len, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @MLX5_SET64(i8* %111, i8* %112, i32 %113, i32 %114)
  %116 = load i8*, i8** %16, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %119 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %120 = call %struct.TYPE_2__* @to_mpd(%struct.ib_pd* %119)
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @MLX5_SET(i8* %116, i8* %117, %struct.ib_pd* %118, i32 %122)
  %124 = load i8*, i8** %16, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = load %struct.ib_pd*, %struct.ib_pd** @qpn, align 8
  %127 = call i32 @MLX5_SET(i8* %124, i8* %125, %struct.ib_pd* %126, i32 16777215)
  %128 = load i8*, i8** %16, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @MLX5_SET64(i8* %128, i8* %129, i32 %130, i32 %131)
  %133 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %134 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %135 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %134, i32 0, i32 2
  %136 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %17, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev* %133, i32* %135, %struct.mlx5_ib_mr* %136, i32 %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %45
  br label %154

142:                                              ; preds = %45
  %143 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %17, align 8
  %144 = call i32 @kfree(%struct.mlx5_ib_mr* %143)
  %145 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %146 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  %147 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %148 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @set_mr_fields(%struct.mlx5_ib_dev* %147, %struct.mlx5_ib_mr* %148, i32 0, i32 %149, i32 %150)
  %152 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %153 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %152, i32 0, i32 0
  store %struct.ib_mr* %153, %struct.ib_mr** %6, align 8
  br label %162

154:                                              ; preds = %141
  %155 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %17, align 8
  %156 = call i32 @kfree(%struct.mlx5_ib_mr* %155)
  br label %157

157:                                              ; preds = %154, %42
  %158 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %159 = call i32 @kfree(%struct.mlx5_ib_mr* %158)
  %160 = load i32, i32* %18, align 4
  %161 = call %struct.ib_mr* @ERR_PTR(i32 %160)
  store %struct.ib_mr* %161, %struct.ib_mr** %6, align 8
  br label %162

162:                                              ; preds = %157, %142, %32
  %163 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  ret %struct.ib_mr* %163
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local %struct.mlx5_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev*, i32*, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @set_mr_fields(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
