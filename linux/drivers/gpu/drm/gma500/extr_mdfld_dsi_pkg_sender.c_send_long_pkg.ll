; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_send_long_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_send_long_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_pkg_sender = type { i32, i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32, i32)* @send_long_pkg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_long_pkg(%struct.mdfld_dsi_pkg_sender* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mdfld_dsi_pkg_sender* %0, %struct.mdfld_dsi_pkg_sender** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %23 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %22, i32 0, i32 4
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %11, align 8
  store i32 0, i32* %20, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %29 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %32 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  br label %41

34:                                               ; preds = %5
  %35 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %36 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %39 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %15, align 8
  store i32 0, i32* %21, align 4
  br label %43

43:                                               ; preds = %73, %41
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %45, 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load i32*, i32** %15, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %15, align 8
  %51 = load i32, i32* %49, align 4
  store i32 %51, i32* %16, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %15, align 8
  %54 = load i32, i32* %52, align 4
  store i32 %54, i32* %17, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %15, align 8
  %57 = load i32, i32* %55, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %15, align 8
  %60 = load i32, i32* %58, align 4
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %19, align 4
  %63 = shl i32 %62, 24
  %64 = load i32, i32* %18, align 4
  %65 = shl i32 %64, 16
  %66 = or i32 %63, %65
  %67 = load i32, i32* %17, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %66, %68
  %70 = load i32, i32* %16, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @REG_WRITE(i32 %61, i32 %71)
  br label %73

73:                                               ; preds = %48
  %74 = load i32, i32* %21, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %21, align 4
  br label %43

76:                                               ; preds = %43
  %77 = load i32, i32* %9, align 4
  %78 = srem i32 %77, 4
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %76
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %82 = load i32, i32* %21, align 4
  switch i32 %82, label %104 [
    i32 3, label %83
    i32 2, label %93
    i32 1, label %100
  ]

83:                                               ; preds = %81
  %84 = load i32*, i32** %15, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %15, align 8
  %86 = load i32, i32* %84, align 4
  store i32 %86, i32* %16, align 4
  %87 = load i32*, i32** %15, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %15, align 8
  %89 = load i32, i32* %87, align 4
  store i32 %89, i32* %17, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %15, align 8
  %92 = load i32, i32* %90, align 4
  store i32 %92, i32* %18, align 4
  br label %104

93:                                               ; preds = %81
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %15, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %16, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %15, align 8
  %99 = load i32, i32* %97, align 4
  store i32 %99, i32* %17, align 4
  br label %104

100:                                              ; preds = %81
  %101 = load i32*, i32** %15, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %15, align 8
  %103 = load i32, i32* %101, align 4
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %81, %100, %93, %83
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %18, align 4
  %107 = shl i32 %106, 16
  %108 = load i32, i32* %17, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %107, %109
  %111 = load i32, i32* %16, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @REG_WRITE(i32 %105, i32 %112)
  br label %114

114:                                              ; preds = %104, %76
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @FLD_VAL(i32 %115, i32 23, i32 8)
  %117 = load i32, i32* %20, align 4
  %118 = call i32 @FLD_VAL(i32 %117, i32 7, i32 6)
  %119 = or i32 %116, %118
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @FLD_VAL(i32 %120, i32 5, i32 0)
  %122 = or i32 %119, %121
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @REG_WRITE(i32 %123, i32 %124)
  ret i32 0
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
