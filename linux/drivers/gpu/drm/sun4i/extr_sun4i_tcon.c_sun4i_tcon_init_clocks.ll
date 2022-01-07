; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_init_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_init_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun4i_tcon = type { i8*, %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't get the TCON bus clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tcon-ch0\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Couldn't get the TCON channel 0 clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"tcon-ch1\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Couldn't get the TCON channel 1 clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sun4i_tcon*)* @sun4i_tcon_init_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tcon_init_clocks(%struct.device* %0, %struct.sun4i_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sun4i_tcon*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sun4i_tcon* %1, %struct.sun4i_tcon** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = call i8* @devm_clk_get(%struct.device* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %9 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %11 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %10, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @IS_ERR(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %19 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @PTR_ERR(i8* %20)
  store i32 %21, i32* %3, align 4
  br label %81

22:                                               ; preds = %2
  %23 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %24 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @clk_prepare_enable(i8* %25)
  %27 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %28 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %22
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i8* @devm_clk_get(%struct.device* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %37 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %39 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %47 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %3, align 4
  br label %81

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %53 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @clk_prepare_enable(i8* %54)
  %56 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %57 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %51
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i8* @devm_clk_get(%struct.device* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %66 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %68 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %76 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %51
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %72, %43, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
