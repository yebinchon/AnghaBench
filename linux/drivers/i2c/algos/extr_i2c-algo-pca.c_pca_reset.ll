; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pca.c_pca_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pca.c_pca_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_pca_data = type { i64, i32, i32 (i32)* }

@I2C_PCA_CHIP_9665 = common dso_local global i64 0, align 8
@I2C_PCA_INDPTR = common dso_local global i32 0, align 4
@I2C_PCA_IPRESET = common dso_local global i32 0, align 4
@I2C_PCA_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_algo_pca_data*)* @pca_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca_reset(%struct.i2c_algo_pca_data* %0) #0 {
  %2 = alloca %struct.i2c_algo_pca_data*, align 8
  store %struct.i2c_algo_pca_data* %0, %struct.i2c_algo_pca_data** %2, align 8
  %3 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %2, align 8
  %4 = getelementptr inbounds %struct.i2c_algo_pca_data, %struct.i2c_algo_pca_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @I2C_PCA_CHIP_9665, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %2, align 8
  %10 = load i32, i32* @I2C_PCA_INDPTR, align 4
  %11 = load i32, i32* @I2C_PCA_IPRESET, align 4
  %12 = call i32 @pca_outw(%struct.i2c_algo_pca_data* %9, i32 %10, i32 %11)
  %13 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %2, align 8
  %14 = load i32, i32* @I2C_PCA_IND, align 4
  %15 = call i32 @pca_outw(%struct.i2c_algo_pca_data* %13, i32 %14, i32 165)
  %16 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %2, align 8
  %17 = load i32, i32* @I2C_PCA_IND, align 4
  %18 = call i32 @pca_outw(%struct.i2c_algo_pca_data* %16, i32 %17, i32 90)
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_algo_pca_data, %struct.i2c_algo_pca_data* %20, i32 0, i32 2
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %2, align 8
  %24 = getelementptr inbounds %struct.i2c_algo_pca_data, %struct.i2c_algo_pca_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  br label %27

27:                                               ; preds = %19, %8
  ret void
}

declare dso_local i32 @pca_outw(%struct.i2c_algo_pca_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
