; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_allocate_uars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_allocate_uars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_ucontext = type { %struct.mlx5_bfreg_info }
%struct.mlx5_bfreg_info = type { i32, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"allocated uar %d\0A\00", align 1
@MLX5_IB_INVALID_UAR_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to free uar %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_ucontext*)* @allocate_uars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_uars(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_ucontext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_ucontext*, align 8
  %6 = alloca %struct.mlx5_bfreg_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_ucontext* %1, %struct.mlx5_ib_ucontext** %5, align 8
  %9 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %9, i32 0, i32 0
  store %struct.mlx5_bfreg_info* %10, %struct.mlx5_bfreg_info** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @mlx5_cmd_alloc_uar(i32 %20, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %66

31:                                               ; preds = %17
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %33 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %62, %44
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @MLX5_IB_INVALID_UAR_INDEX, align 4
  %56 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %48

65:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %95

66:                                               ; preds = %30
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %90, %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %6, align 8
  %77 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @mlx5_cmd_free_uar(i32 %75, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %72
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %69

93:                                               ; preds = %69
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %65
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @mlx5_cmd_alloc_uar(i32, i32*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i64 @mlx5_cmd_free_uar(i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
