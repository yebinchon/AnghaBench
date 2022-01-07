; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.rcar_lvds = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to get %s clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.rcar_lvds*, i8*, i32)* @rcar_lvds_get_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @rcar_lvds_get_clock(%struct.rcar_lvds* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.rcar_lvds*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk*, align 8
  store %struct.rcar_lvds* %0, %struct.rcar_lvds** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rcar_lvds*, %struct.rcar_lvds** %5, align 8
  %10 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.clk* @devm_clk_get(i32 %11, i8* %12)
  store %struct.clk* %13, %struct.clk** %8, align 8
  %14 = load %struct.clk*, %struct.clk** %8, align 8
  %15 = call i32 @IS_ERR(%struct.clk* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %18, %struct.clk** %4, align 8
  br label %49

19:                                               ; preds = %3
  %20 = load %struct.clk*, %struct.clk** %8, align 8
  %21 = call i32 @PTR_ERR(%struct.clk* %20)
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %49

29:                                               ; preds = %25, %19
  %30 = load %struct.clk*, %struct.clk** %8, align 8
  %31 = call i32 @PTR_ERR(%struct.clk* %30)
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.rcar_lvds*, %struct.rcar_lvds** %5, align 8
  %37 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i8* [ %42, %41 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %43 ]
  %46 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %29
  %48 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %48, %struct.clk** %4, align 8
  br label %49

49:                                               ; preds = %47, %28, %17
  %50 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %50
}

declare dso_local %struct.clk* @devm_clk_get(i32, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
