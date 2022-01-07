; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_pwrctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_pwrctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_tvenc = type { %struct.device*, %struct.zx_tvenc_pwrctrl }
%struct.device = type { i32 }
%struct.zx_tvenc_pwrctrl = type { i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.of_phandle_args = type { i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"zte,tvenc-power-control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx_tvenc*)* @zx_tvenc_pwrctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_tvenc_pwrctrl_init(%struct.zx_tvenc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zx_tvenc*, align 8
  %4 = alloca %struct.zx_tvenc_pwrctrl*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.of_phandle_args, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.zx_tvenc* %0, %struct.zx_tvenc** %3, align 8
  %9 = load %struct.zx_tvenc*, %struct.zx_tvenc** %3, align 8
  %10 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %9, i32 0, i32 1
  store %struct.zx_tvenc_pwrctrl* %10, %struct.zx_tvenc_pwrctrl** %4, align 8
  %11 = load %struct.zx_tvenc*, %struct.zx_tvenc** %3, align 8
  %12 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @of_parse_phandle_with_fixed_args(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 2, i32 0, %struct.of_phandle_args* %6)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.regmap* @syscon_node_to_regmap(i32 %24)
  store %struct.regmap* %25, %struct.regmap** %7, align 8
  %26 = load %struct.regmap*, %struct.regmap** %7, align 8
  %27 = call i64 @IS_ERR(%struct.regmap* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.regmap*, %struct.regmap** %7, align 8
  %31 = call i32 @PTR_ERR(%struct.regmap* %30)
  store i32 %31, i32* %8, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.regmap*, %struct.regmap** %7, align 8
  %34 = load %struct.zx_tvenc_pwrctrl*, %struct.zx_tvenc_pwrctrl** %4, align 8
  %35 = getelementptr inbounds %struct.zx_tvenc_pwrctrl, %struct.zx_tvenc_pwrctrl* %34, i32 0, i32 2
  store %struct.regmap* %33, %struct.regmap** %35, align 8
  %36 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.zx_tvenc_pwrctrl*, %struct.zx_tvenc_pwrctrl** %4, align 8
  %41 = getelementptr inbounds %struct.zx_tvenc_pwrctrl, %struct.zx_tvenc_pwrctrl* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.zx_tvenc_pwrctrl*, %struct.zx_tvenc_pwrctrl** %4, align 8
  %47 = getelementptr inbounds %struct.zx_tvenc_pwrctrl, %struct.zx_tvenc_pwrctrl* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %32, %29
  %49 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @of_node_put(i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %20
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @of_parse_phandle_with_fixed_args(i32, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
