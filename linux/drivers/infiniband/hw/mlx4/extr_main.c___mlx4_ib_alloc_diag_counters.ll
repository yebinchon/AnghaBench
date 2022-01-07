; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_alloc_diag_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_alloc_diag_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@diag_basic = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT = common dso_local global i32 0, align 4
@diag_ext = common dso_local global i32 0, align 4
@diag_device_only = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i8***, i64**, i64*, i32)* @__mlx4_ib_alloc_diag_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlx4_ib_alloc_diag_counters(%struct.mlx4_ib_dev* %0, i8*** %1, i64** %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %7, align 8
  store i8*** %1, i8**** %8, align 8
  store i64** %2, i64*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @diag_basic, align 4
  %14 = call i64 @ARRAY_SIZE(i32 %13)
  store i64 %14, i64* %12, align 8
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32, i32* @diag_ext, align 4
  %26 = call i64 @ARRAY_SIZE(i32 %25)
  %27 = load i64, i64* %12, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %24, %5
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @diag_device_only, align 4
  %34 = call i64 @ARRAY_SIZE(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kcalloc(i64 %38, i32 8, i32 %39)
  %41 = bitcast i8* %40 to i8**
  %42 = load i8***, i8**** %8, align 8
  store i8** %41, i8*** %42, align 8
  %43 = load i8***, i8**** %8, align 8
  %44 = load i8**, i8*** %43, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %68

49:                                               ; preds = %37
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kcalloc(i64 %50, i32 8, i32 %51)
  %53 = bitcast i8* %52 to i64*
  %54 = load i64**, i64*** %9, align 8
  store i64* %53, i64** %54, align 8
  %55 = load i64**, i64*** %9, align 8
  %56 = load i64*, i64** %55, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %62

59:                                               ; preds = %49
  %60 = load i64, i64* %12, align 8
  %61 = load i64*, i64** %10, align 8
  store i64 %60, i64* %61, align 8
  store i32 0, i32* %6, align 4
  br label %68

62:                                               ; preds = %58
  %63 = load i8***, i8**** %8, align 8
  %64 = load i8**, i8*** %63, align 8
  %65 = call i32 @kfree(i8** %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %59, %46
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
