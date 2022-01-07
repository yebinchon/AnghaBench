; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_i2c = type { i32, %struct.clk*, %struct.TYPE_2__, i32 }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"i2c%d can't get the i2c clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"i2c%d can't get the source clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"i2c%d set source clock is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"i2c%d can't get the enable clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_i2c*)* @sprd_i2c_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_i2c_clk_init(%struct.sprd_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sprd_i2c*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  store %struct.sprd_i2c* %0, %struct.sprd_i2c** %3, align 8
  %6 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @devm_clk_get(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = bitcast i8* %9 to %struct.clk*
  store %struct.clk* %10, %struct.clk** %4, align 8
  %11 = load %struct.clk*, %struct.clk** %4, align 8
  %12 = call i64 @IS_ERR(%struct.clk* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %16 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %19 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_warn(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %25 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @devm_clk_get(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = bitcast i8* %27 to %struct.clk*
  store %struct.clk* %28, %struct.clk** %5, align 8
  %29 = load %struct.clk*, %struct.clk** %5, align 8
  %30 = call i64 @IS_ERR(%struct.clk* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %34 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %37 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  store %struct.clk* null, %struct.clk** %5, align 8
  br label %41

41:                                               ; preds = %32, %23
  %42 = load %struct.clk*, %struct.clk** %4, align 8
  %43 = load %struct.clk*, %struct.clk** %5, align 8
  %44 = call i64 @clk_set_parent(%struct.clk* %42, %struct.clk* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.clk*, %struct.clk** %4, align 8
  %48 = call i32 @clk_get_rate(%struct.clk* %47)
  %49 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %50 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %54

51:                                               ; preds = %41
  %52 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %53 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %52, i32 0, i32 0
  store i32 26000000, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %56 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %59 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %63 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %67 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @devm_clk_get(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %70 = bitcast i8* %69 to %struct.clk*
  %71 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %72 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %71, i32 0, i32 1
  store %struct.clk* %70, %struct.clk** %72, align 8
  %73 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %74 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %73, i32 0, i32 1
  %75 = load %struct.clk*, %struct.clk** %74, align 8
  %76 = call i64 @IS_ERR(%struct.clk* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %54
  %79 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %80 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %83 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  %87 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %88 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %87, i32 0, i32 1
  %89 = load %struct.clk*, %struct.clk** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.clk* %89)
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %78
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i64 @clk_set_parent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
