; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_master_acf = type { i32, i64, i32, i32 }

@SRAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @fsi_master_acf_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_master_acf_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.fsi_master_acf*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i32 @dev_to_fsi_master(%struct.device* %4)
  %6 = call %struct.fsi_master_acf* @to_fsi_master_acf(i32 %5)
  store %struct.fsi_master_acf* %6, %struct.fsi_master_acf** %3, align 8
  %7 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %8 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %11 = call i32 @fsi_master_acf_terminate(%struct.fsi_master_acf* %10)
  %12 = call i32 @aspeed_gpio_copro_set_ops(i32* null, i32* null)
  %13 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %14 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %13, i32 0, i32 3
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %17 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %20 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @SRAM_SIZE, align 4
  %23 = call i32 @gen_pool_free(i32 %18, i64 %21, i32 %22)
  %24 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %25 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_of_node(i32 %26)
  %28 = call i32 @of_node_put(i32 %27)
  %29 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %30 = call i32 @kfree(%struct.fsi_master_acf* %29)
  ret void
}

declare dso_local %struct.fsi_master_acf* @to_fsi_master_acf(i32) #1

declare dso_local i32 @dev_to_fsi_master(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fsi_master_acf_terminate(%struct.fsi_master_acf*) #1

declare dso_local i32 @aspeed_gpio_copro_set_ops(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @dev_of_node(i32) #1

declare dso_local i32 @kfree(%struct.fsi_master_acf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
