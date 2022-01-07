; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pca.c_pca_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pca.c_pca_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_pca_data = type { i32 }
%struct.i2c_msg = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"=== SLAVE ADDRESS %#04x+%c=%#04x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_PCA_DAT = common dso_local global i32 0, align 4
@I2C_PCA_CON_STO = common dso_local global i32 0, align 4
@I2C_PCA_CON_STA = common dso_local global i32 0, align 4
@I2C_PCA_CON_SI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_pca_data*, %struct.i2c_msg*)* @pca_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca_address(%struct.i2c_algo_pca_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.i2c_algo_pca_data*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_algo_pca_data* %0, %struct.i2c_algo_pca_data** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %7 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %8 = call i32 @pca_get_con(%struct.i2c_algo_pca_data* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %10 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @I2C_M_RD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 82, i32 87
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @DEB2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i8 signext %22, i32 %23)
  %25 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %26 = load i32, i32* @I2C_PCA_DAT, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pca_outw(%struct.i2c_algo_pca_data* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @I2C_PCA_CON_STO, align 4
  %30 = load i32, i32* @I2C_PCA_CON_STA, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @I2C_PCA_CON_SI, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pca_set_con(%struct.i2c_algo_pca_data* %37, i32 %38)
  %40 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %41 = call i32 @pca_wait(%struct.i2c_algo_pca_data* %40)
  ret i32 %41
}

declare dso_local i32 @pca_get_con(%struct.i2c_algo_pca_data*) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @DEB2(i8*, i32, i8 signext, i32) #1

declare dso_local i32 @pca_outw(%struct.i2c_algo_pca_data*, i32, i32) #1

declare dso_local i32 @pca_set_con(%struct.i2c_algo_pca_data*, i32) #1

declare dso_local i32 @pca_wait(%struct.i2c_algo_pca_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
