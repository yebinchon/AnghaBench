; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_intel_virtual_engine_attach_bond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_intel_virtual_engine_attach_bond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.virtual_engine = type { i32, i32, %struct.ve_bond*, %struct.intel_engine_cs** }
%struct.ve_bond = type { i32, %struct.intel_engine_cs* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_virtual_engine_attach_bond(%struct.intel_engine_cs* %0, %struct.intel_engine_cs* %1, %struct.intel_engine_cs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca %struct.intel_engine_cs*, align 8
  %7 = alloca %struct.intel_engine_cs*, align 8
  %8 = alloca %struct.virtual_engine*, align 8
  %9 = alloca %struct.ve_bond*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %5, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %6, align 8
  store %struct.intel_engine_cs* %2, %struct.intel_engine_cs** %7, align 8
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %12 = call %struct.virtual_engine* @to_virtual_engine(%struct.intel_engine_cs* %11)
  store %struct.virtual_engine* %12, %struct.virtual_engine** %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %16 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %7, align 8
  %21 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %22 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %21, i32 0, i32 3
  %23 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %23, i64 %25
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %26, align 8
  %28 = icmp eq %struct.intel_engine_cs* %20, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %13

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %37 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %101

43:                                               ; preds = %34
  %44 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %45 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %46 = call %struct.ve_bond* @virtual_find_bond(%struct.virtual_engine* %44, %struct.intel_engine_cs* %45)
  store %struct.ve_bond* %46, %struct.ve_bond** %9, align 8
  %47 = load %struct.ve_bond*, %struct.ve_bond** %9, align 8
  %48 = icmp ne %struct.ve_bond* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %7, align 8
  %51 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ve_bond*, %struct.ve_bond** %9, align 8
  %54 = getelementptr inbounds %struct.ve_bond, %struct.ve_bond* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %101

57:                                               ; preds = %43
  %58 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %59 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %58, i32 0, i32 2
  %60 = load %struct.ve_bond*, %struct.ve_bond** %59, align 8
  %61 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %62 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 16, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.ve_bond* @krealloc(%struct.ve_bond* %60, i32 %67, i32 %68)
  store %struct.ve_bond* %69, %struct.ve_bond** %9, align 8
  %70 = load %struct.ve_bond*, %struct.ve_bond** %9, align 8
  %71 = icmp ne %struct.ve_bond* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %57
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %101

75:                                               ; preds = %57
  %76 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %77 = load %struct.ve_bond*, %struct.ve_bond** %9, align 8
  %78 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %79 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ve_bond, %struct.ve_bond* %77, i64 %81
  %83 = getelementptr inbounds %struct.ve_bond, %struct.ve_bond* %82, i32 0, i32 1
  store %struct.intel_engine_cs* %76, %struct.intel_engine_cs** %83, align 8
  %84 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %7, align 8
  %85 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ve_bond*, %struct.ve_bond** %9, align 8
  %88 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %89 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ve_bond, %struct.ve_bond* %87, i64 %91
  %93 = getelementptr inbounds %struct.ve_bond, %struct.ve_bond* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 8
  %94 = load %struct.ve_bond*, %struct.ve_bond** %9, align 8
  %95 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %96 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %95, i32 0, i32 2
  store %struct.ve_bond* %94, %struct.ve_bond** %96, align 8
  %97 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %98 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %75, %72, %49, %40
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.virtual_engine* @to_virtual_engine(%struct.intel_engine_cs*) #1

declare dso_local %struct.ve_bond* @virtual_find_bond(%struct.virtual_engine*, %struct.intel_engine_cs*) #1

declare dso_local %struct.ve_bond* @krealloc(%struct.ve_bond*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
