; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_dotclock.c_sun4i_dclk_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_dotclock.c_sun4i_dclk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun4i_tcon = type { i32, i32, i32 }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }
%struct.sun4i_dclk = type { %struct.TYPE_2__, i32, %struct.sun4i_tcon* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }

@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sun4i_dclk_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_dclk_create(%struct.device* %0, %struct.sun4i_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sun4i_tcon*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk_init_data, align 8
  %9 = alloca %struct.sun4i_dclk*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sun4i_tcon* %1, %struct.sun4i_tcon** %5, align 8
  %11 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %12 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @__clk_get_name(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @of_property_read_string_index(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0, i8** %6)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sun4i_dclk* @devm_kzalloc(%struct.device* %24, i32 24, i32 %25)
  store %struct.sun4i_dclk* %26, %struct.sun4i_dclk** %9, align 8
  %27 = load %struct.sun4i_dclk*, %struct.sun4i_dclk** %9, align 8
  %28 = icmp ne %struct.sun4i_dclk* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %23
  %33 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %34 = load %struct.sun4i_dclk*, %struct.sun4i_dclk** %9, align 8
  %35 = getelementptr inbounds %struct.sun4i_dclk, %struct.sun4i_dclk* %34, i32 0, i32 2
  store %struct.sun4i_tcon* %33, %struct.sun4i_tcon** %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 4
  store i32* @sun4i_dclk_ops, i32** %38, align 8
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i8** %7, i8*** %39, align 8
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %44 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sun4i_dclk*, %struct.sun4i_dclk** %9, align 8
  %47 = getelementptr inbounds %struct.sun4i_dclk, %struct.sun4i_dclk* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sun4i_dclk*, %struct.sun4i_dclk** %9, align 8
  %49 = getelementptr inbounds %struct.sun4i_dclk, %struct.sun4i_dclk* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.clk_init_data* %8, %struct.clk_init_data** %50, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.sun4i_dclk*, %struct.sun4i_dclk** %9, align 8
  %53 = getelementptr inbounds %struct.sun4i_dclk, %struct.sun4i_dclk* %52, i32 0, i32 0
  %54 = call i32 @clk_register(%struct.device* %51, %struct.TYPE_2__* %53)
  %55 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %56 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %58 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %32
  %63 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %64 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %62, %29, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local %struct.sun4i_dclk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
