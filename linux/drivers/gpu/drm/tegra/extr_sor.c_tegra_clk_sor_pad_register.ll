; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_clk_sor_pad_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_clk_sor_pad_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.tegra_sor = type { i32 }
%struct.tegra_clk_sor_pad = type { %struct.TYPE_2__, %struct.tegra_sor* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32*, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_clk_sor_pad_parents = common dso_local global i32 0, align 4
@tegra_clk_sor_pad_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.tegra_sor*, i8*)* @tegra_clk_sor_pad_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @tegra_clk_sor_pad_register(%struct.tegra_sor* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tegra_clk_sor_pad*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca %struct.clk*, align 8
  store %struct.tegra_sor* %0, %struct.tegra_sor** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tegra_clk_sor_pad* @devm_kzalloc(i32 %11, i32 16, i32 %12)
  store %struct.tegra_clk_sor_pad* %13, %struct.tegra_clk_sor_pad** %6, align 8
  %14 = load %struct.tegra_clk_sor_pad*, %struct.tegra_clk_sor_pad** %6, align 8
  %15 = icmp ne %struct.tegra_clk_sor_pad* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.clk* @ERR_PTR(i32 %18)
  store %struct.clk* %19, %struct.clk** %3, align 8
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %22 = load %struct.tegra_clk_sor_pad*, %struct.tegra_clk_sor_pad** %6, align 8
  %23 = getelementptr inbounds %struct.tegra_clk_sor_pad, %struct.tegra_clk_sor_pad* %22, i32 0, i32 1
  store %struct.tegra_sor* %21, %struct.tegra_sor** %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @tegra_clk_sor_pad_parents, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @tegra_clk_sor_pad_parents, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i32* @tegra_clk_sor_pad_ops, i32** %32, align 8
  %33 = load %struct.tegra_clk_sor_pad*, %struct.tegra_clk_sor_pad** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_clk_sor_pad, %struct.tegra_clk_sor_pad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %35, align 8
  %36 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tegra_clk_sor_pad*, %struct.tegra_clk_sor_pad** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_clk_sor_pad, %struct.tegra_clk_sor_pad* %39, i32 0, i32 0
  %41 = call %struct.clk* @devm_clk_register(i32 %38, %struct.TYPE_2__* %40)
  store %struct.clk* %41, %struct.clk** %8, align 8
  %42 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %42, %struct.clk** %3, align 8
  br label %43

43:                                               ; preds = %20, %16
  %44 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %44
}

declare dso_local %struct.tegra_clk_sor_pad* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.clk* @devm_clk_register(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
