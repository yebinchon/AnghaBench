; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_clk = type { i32, i32, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_7__, %struct.nvkm_domain* }
%struct.TYPE_6__ = type { i32 (%struct.nvkm_clk*)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.nvkm_domain = type { i64 }

@nv_clk_src_max = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%02x freq unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_clk_init(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca %struct.nvkm_domain*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %7 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %8 = call %struct.nvkm_clk* @nvkm_clk(%struct.nvkm_subdev* %7)
  store %struct.nvkm_clk* %8, %struct.nvkm_clk** %4, align 8
  %9 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %9, i32 0, i32 7
  %11 = load %struct.nvkm_domain*, %struct.nvkm_domain** %10, align 8
  store %struct.nvkm_domain* %11, %struct.nvkm_domain** %5, align 8
  %12 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %12, i32 0, i32 6
  %14 = call i32 @memset(%struct.TYPE_7__* %13, i32 0, i32 24)
  %15 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %16 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 255, i32* %21, align 8
  br label %22

22:                                               ; preds = %43, %1
  %23 = load %struct.nvkm_domain*, %struct.nvkm_domain** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @nv_clk_src_max, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %30 = load %struct.nvkm_domain*, %struct.nvkm_domain** %5, align 8
  %31 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nvkm_clk_read(%struct.nvkm_clk* %29, i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %38 = load %struct.nvkm_domain*, %struct.nvkm_domain** %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @nvkm_error(%struct.nvkm_subdev* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %90

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %46 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.nvkm_domain*, %struct.nvkm_domain** %5, align 8
  %51 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %44, i32* %53, align 4
  %54 = load %struct.nvkm_domain*, %struct.nvkm_domain** %5, align 8
  %55 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %54, i32 1
  store %struct.nvkm_domain* %55, %struct.nvkm_domain** %5, align 8
  br label %22

56:                                               ; preds = %22
  %57 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %58 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %59 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %58, i32 0, i32 6
  %60 = call i32 @nvkm_pstate_info(%struct.nvkm_clk* %57, %struct.TYPE_7__* %59)
  %61 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %62 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %61, i32 0, i32 5
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (%struct.nvkm_clk*)*, i32 (%struct.nvkm_clk*)** %64, align 8
  %66 = icmp ne i32 (%struct.nvkm_clk*)* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %69 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %68, i32 0, i32 5
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.nvkm_clk*)*, i32 (%struct.nvkm_clk*)** %71, align 8
  %73 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %74 = call i32 %72(%struct.nvkm_clk* %73)
  store i32 %74, i32* %2, align 4
  br label %90

75:                                               ; preds = %56
  %76 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %77 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1
  %80 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %81 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %83 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %85 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %84, i32 0, i32 0
  store i32 -1, i32* %85, align 8
  %86 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %87 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %86, i32 0, i32 1
  store i32 90, i32* %87, align 4
  %88 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %89 = call i32 @nvkm_pstate_calc(%struct.nvkm_clk* %88, i32 1)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %75, %67, %36
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.nvkm_clk* @nvkm_clk(%struct.nvkm_subdev*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvkm_clk_read(%struct.nvkm_clk*, i64) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i64) #1

declare dso_local i32 @nvkm_pstate_info(%struct.nvkm_clk*, %struct.TYPE_7__*) #1

declare dso_local i32 @nvkm_pstate_calc(%struct.nvkm_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
