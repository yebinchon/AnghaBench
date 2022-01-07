; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_hdmi = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }
%struct.sun4i_tmds = type { %struct.TYPE_4__, i32, %struct.sun4i_hdmi* }
%struct.TYPE_4__ = type { %struct.clk_init_data* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"hdmi-tmds\00", align 1
@sun4i_tmds_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_tmds_create(%struct.sun4i_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sun4i_hdmi*, align 8
  %4 = alloca %struct.clk_init_data, align 8
  %5 = alloca %struct.sun4i_tmds*, align 8
  %6 = alloca [2 x i8*], align 16
  store %struct.sun4i_hdmi* %0, %struct.sun4i_hdmi** %3, align 8
  %7 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @__clk_get_name(i32 %9)
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %10, i8** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 16
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %81

18:                                               ; preds = %1
  %19 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %20 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @__clk_get_name(i32 %21)
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %18
  %31 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %32 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sun4i_tmds* @devm_kzalloc(i32 %33, i32 24, i32 %34)
  store %struct.sun4i_tmds* %35, %struct.sun4i_tmds** %5, align 8
  %36 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %5, align 8
  %37 = icmp ne %struct.sun4i_tmds* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %81

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 4
  store i32* @sun4i_tmds_ops, i32** %43, align 8
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  store i8** %44, i8*** %45, align 8
  %46 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i32 2, i32* %46, align 8
  %47 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %48 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %50 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %5, align 8
  %51 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %50, i32 0, i32 2
  store %struct.sun4i_hdmi* %49, %struct.sun4i_hdmi** %51, align 8
  %52 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %5, align 8
  %53 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.clk_init_data* %4, %struct.clk_init_data** %54, align 8
  %55 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %56 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %5, align 8
  %61 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %63 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %5, align 8
  %66 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %65, i32 0, i32 0
  %67 = call i32 @devm_clk_register(i32 %64, %struct.TYPE_4__* %66)
  %68 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %69 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %71 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %41
  %76 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %77 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %75, %38, %27, %15
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local %struct.sun4i_tmds* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @devm_clk_register(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
