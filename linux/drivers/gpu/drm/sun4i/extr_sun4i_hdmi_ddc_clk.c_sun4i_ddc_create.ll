; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_ddc_clk.c_sun4i_ddc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_ddc_clk.c_sun4i_ddc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_hdmi = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.clk = type { i32 }
%struct.clk_init_data = type { i8*, i8**, i32, i32* }
%struct.sun4i_ddc = type { %struct.TYPE_4__, i32, i32, %struct.sun4i_hdmi*, i32 }
%struct.TYPE_4__ = type { %struct.clk_init_data* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hdmi-ddc\00", align 1
@sun4i_ddc_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_ddc_create(%struct.sun4i_hdmi* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_hdmi*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk_init_data, align 8
  %7 = alloca %struct.sun4i_ddc*, align 8
  %8 = alloca i8*, align 8
  store %struct.sun4i_hdmi* %0, %struct.sun4i_hdmi** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %9 = load %struct.clk*, %struct.clk** %5, align 8
  %10 = call i8* @__clk_get_name(%struct.clk* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %18 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sun4i_ddc* @devm_kzalloc(i32 %19, i32 32, i32 %20)
  store %struct.sun4i_ddc* %21, %struct.sun4i_ddc** %7, align 8
  %22 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %23 = icmp ne %struct.sun4i_ddc* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %96

27:                                               ; preds = %16
  %28 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %29 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %32 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %35 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @devm_regmap_field_alloc(i32 %30, i32 %33, i32 %38)
  %40 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %41 = getelementptr inbounds %struct.sun4i_ddc, %struct.sun4i_ddc* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %43 = getelementptr inbounds %struct.sun4i_ddc, %struct.sun4i_ddc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %27
  %48 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %49 = getelementptr inbounds %struct.sun4i_ddc, %struct.sun4i_ddc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %96

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 3
  store i32* @sun4i_ddc_ops, i32** %54, align 8
  %55 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  store i8** %8, i8*** %55, align 8
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 2
  store i32 1, i32* %56, align 8
  %57 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %58 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %59 = getelementptr inbounds %struct.sun4i_ddc, %struct.sun4i_ddc* %58, i32 0, i32 3
  store %struct.sun4i_hdmi* %57, %struct.sun4i_hdmi** %59, align 8
  %60 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %61 = getelementptr inbounds %struct.sun4i_ddc, %struct.sun4i_ddc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store %struct.clk_init_data* %6, %struct.clk_init_data** %62, align 8
  %63 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %64 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %69 = getelementptr inbounds %struct.sun4i_ddc, %struct.sun4i_ddc* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %71 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %76 = getelementptr inbounds %struct.sun4i_ddc, %struct.sun4i_ddc* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %78 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sun4i_ddc*, %struct.sun4i_ddc** %7, align 8
  %81 = getelementptr inbounds %struct.sun4i_ddc, %struct.sun4i_ddc* %80, i32 0, i32 0
  %82 = call i32 @devm_clk_register(i32 %79, %struct.TYPE_4__* %81)
  %83 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %84 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %86 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %52
  %91 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %92 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %90, %47, %24, %13
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @__clk_get_name(%struct.clk*) #1

declare dso_local %struct.sun4i_ddc* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @devm_regmap_field_alloc(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_register(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
