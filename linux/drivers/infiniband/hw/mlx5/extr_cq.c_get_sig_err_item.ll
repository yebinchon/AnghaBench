; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_get_sig_err_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_get_sig_err_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_sig_err_cqe = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_sig_err = type { i32, i32, i32, i32, i32 }

@IB_SIG_BAD_GUARD = common dso_local global i32 0, align 4
@IB_SIG_BAD_REFTAG = common dso_local global i32 0, align 4
@IB_SIG_BAD_APPTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Got signature completion error with bad syndrome %04x\0A\00", align 1
@APPTAG_ERR = common dso_local global i32 0, align 4
@GUARD_ERR = common dso_local global i32 0, align 4
@REFTAG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_sig_err_cqe*, %struct.ib_sig_err*)* @get_sig_err_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sig_err_item(%struct.mlx5_sig_err_cqe* %0, %struct.ib_sig_err* %1) #0 {
  %3 = alloca %struct.mlx5_sig_err_cqe*, align 8
  %4 = alloca %struct.ib_sig_err*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_sig_err_cqe* %0, %struct.mlx5_sig_err_cqe** %3, align 8
  store %struct.ib_sig_err* %1, %struct.ib_sig_err** %4, align 8
  %6 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @be16_to_cpu(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 8192
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @IB_SIG_BAD_GUARD, align 4
  %15 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %16 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = ashr i32 %20, 16
  %22 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %23 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = ashr i32 %27, 16
  %29 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %30 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %78

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 2048
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* @IB_SIG_BAD_REFTAG, align 4
  %37 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %38 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %44 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %50 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %77

51:                                               ; preds = %31
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 4096
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i32, i32* @IB_SIG_BAD_APPTAG, align 4
  %57 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %58 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %60 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  %63 = and i32 %62, 65535
  %64 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %65 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = and i32 %69, 65535
  %71 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %72 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %76

73:                                               ; preds = %51
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %55
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %77, %13
  %79 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %80 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be64_to_cpu(i32 %81)
  %83 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %84 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.mlx5_sig_err_cqe*, %struct.mlx5_sig_err_cqe** %3, align 8
  %86 = getelementptr inbounds %struct.mlx5_sig_err_cqe, %struct.mlx5_sig_err_cqe* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be32_to_cpu(i32 %87)
  %89 = load %struct.ib_sig_err*, %struct.ib_sig_err** %4, align 8
  %90 = getelementptr inbounds %struct.ib_sig_err, %struct.ib_sig_err* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
