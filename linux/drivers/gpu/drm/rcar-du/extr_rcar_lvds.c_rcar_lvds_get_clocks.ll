; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_lvds = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8**, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@RCAR_LVDS_QUIRK_EXT_PLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dclkin.0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dclkin.1\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"no input clock (extal, dclkin.0 or dclkin.1)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_lvds*)* @rcar_lvds_get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_lvds_get_clocks(%struct.rcar_lvds* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_lvds*, align 8
  store %struct.rcar_lvds* %0, %struct.rcar_lvds** %3, align 8
  %4 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %5 = call i8* @rcar_lvds_get_clock(%struct.rcar_lvds* %4, i8* null, i32 0)
  %6 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i8* %5, i8** %8, align 8
  %9 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %10 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @IS_ERR(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %17 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  store i32 %20, i32* %2, align 4
  br label %127

21:                                               ; preds = %1
  %22 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %23 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RCAR_LVDS_QUIRK_EXT_PLL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %127

31:                                               ; preds = %21
  %32 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %33 = call i8* @rcar_lvds_get_clock(%struct.rcar_lvds* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  %34 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %35 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %38 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %45 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %127

49:                                               ; preds = %31
  %50 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %51 = call i8* @rcar_lvds_get_clock(%struct.rcar_lvds* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %52 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %53 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %51, i8** %56, align 8
  %57 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %58 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %49
  %66 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %67 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %2, align 4
  br label %127

73:                                               ; preds = %49
  %74 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %75 = call i8* @rcar_lvds_get_clock(%struct.rcar_lvds* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %76 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %77 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* %75, i8** %80, align 8
  %81 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %82 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %73
  %90 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %91 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %127

97:                                               ; preds = %73
  %98 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %99 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %126, label %103

103:                                              ; preds = %97
  %104 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %105 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %126, label %111

111:                                              ; preds = %103
  %112 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %113 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %111
  %120 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %121 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %111, %103, %97
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %119, %89, %65, %43, %30, %15
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i8* @rcar_lvds_get_clock(%struct.rcar_lvds*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
