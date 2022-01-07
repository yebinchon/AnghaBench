; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_launch_m68k.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_launch_m68k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ast_launch_m68k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_launch_m68k(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.ast_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  store %struct.ast_private* %13, %struct.ast_private** %4, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %14 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %15 = call i32 @ast_mindwm(%struct.ast_private* %14, i32 510533888)
  %16 = and i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %110, label %19

19:                                               ; preds = %1
  %20 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %21 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %26 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  store i32 32768, i32* %7, align 4
  br label %50

28:                                               ; preds = %19
  %29 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %30 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = call i64 @ast_load_dp501_microcode(%struct.drm_device* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %111

38:                                               ; preds = %33, %28
  %39 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %40 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %9, align 8
  %45 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %46 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %38, %24
  %51 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %52 = call i32 @ast_moutdwm(%struct.ast_private* %51, i32 510533632, i32 378054824)
  %53 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %54 = call i32 @ast_mindwm(%struct.ast_private* %53, i32 510525444)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 3
  switch i32 %56, label %58 [
    i32 0, label %57
    i32 1, label %59
    i32 2, label %60
    i32 3, label %61
  ]

57:                                               ; preds = %50
  store i32 1140850688, i32* %8, align 4
  br label %62

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %50, %58
  store i32 1207959552, i32* %8, align 4
  br label %62

60:                                               ; preds = %50
  store i32 1342177280, i32* %8, align 4
  br label %62

61:                                               ; preds = %50
  store i32 1610612736, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %60, %59, %57
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 2097152
  store i32 %64, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %81, %62
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @ast_moutdwm(%struct.ast_private* %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 4
  store i32 %83, i32* %5, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %86 = call i32 @ast_moutdwm(%struct.ast_private* %85, i32 510533632, i32 378054824)
  %87 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add i32 -2147483648, %88
  %90 = call i32 @ast_moutdwm(%struct.ast_private* %87, i32 510533892, i32 %89)
  %91 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %92 = call i32 @ast_moutdwm(%struct.ast_private* %91, i32 510533888, i32 1)
  %93 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %94 = call i32 @ast_mindwm(%struct.ast_private* %93, i32 510533696)
  %95 = and i32 %94, -3585
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 2048
  store i32 %97, i32* %6, align 4
  %98 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ast_moutdwm(%struct.ast_private* %98, i32 510533696, i32 %99)
  %101 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %102 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %103 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %101, i32 %102, i32 153, i32 252)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, 2
  store i32 %105, i32* %10, align 4
  %106 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %107 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @ast_set_index_reg(%struct.ast_private* %106, i32 %107, i32 153, i32 %108)
  br label %110

110:                                              ; preds = %84, %1
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %37
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i64 @ast_load_dp501_microcode(%struct.drm_device*) #1

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
