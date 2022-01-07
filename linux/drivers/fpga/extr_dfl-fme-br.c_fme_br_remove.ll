; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-br.c_fme_br_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-br.c_fme_br_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fpga_bridge = type { %struct.fme_br_priv* }
%struct.fme_br_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fme_br_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fme_br_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fpga_bridge*, align 8
  %4 = alloca %struct.fme_br_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fpga_bridge* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fpga_bridge* %6, %struct.fpga_bridge** %3, align 8
  %7 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %7, i32 0, i32 0
  %9 = load %struct.fme_br_priv*, %struct.fme_br_priv** %8, align 8
  store %struct.fme_br_priv* %9, %struct.fme_br_priv** %4, align 8
  %10 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %11 = call i32 @fpga_bridge_unregister(%struct.fpga_bridge* %10)
  %12 = load %struct.fme_br_priv*, %struct.fme_br_priv** %4, align 8
  %13 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.fme_br_priv*, %struct.fme_br_priv** %4, align 8
  %18 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @put_device(i32* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.fme_br_priv*, %struct.fme_br_priv** %4, align 8
  %24 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.fme_br_priv*, %struct.fme_br_priv** %4, align 8
  %29 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dfl_fpga_port_ops_put(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  ret i32 0
}

declare dso_local %struct.fpga_bridge* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @fpga_bridge_unregister(%struct.fpga_bridge*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @dfl_fpga_port_ops_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
