; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_cursor_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_cursor_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i32, i32 }
%struct.ast_crtc = type { i32, i32 }

@AST_HWC_SIZE = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_X = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_Y = common dso_local global i32 0, align 4
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32)* @ast_cursor_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_cursor_move(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ast_crtc*, align 8
  %8 = alloca %struct.ast_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = call %struct.ast_crtc* @to_ast_crtc(%struct.drm_crtc* %12)
  store %struct.ast_crtc* %13, %struct.ast_crtc** %7, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ast_private*, %struct.ast_private** %17, align 8
  store %struct.ast_private* %18, %struct.ast_private** %8, align 8
  %19 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  %20 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @drm_gem_vram_of_gem(i32 %21)
  %23 = call i32* @drm_gem_vram_kmap(i32 %22, i32 0, i32* null)
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* @AST_HWC_SIZE, align 4
  %25 = load i32, i32* @AST_HWC_SIGNATURE_SIZE, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  %28 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* @AST_HWC_SIZE, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32*, i32** %11, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %11, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @AST_HWC_SIGNATURE_X, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @writel(i32 %36, i32* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @AST_HWC_SIGNATURE_Y, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @writel(i32 %42, i32* %46)
  %48 = load %struct.ast_crtc*, %struct.ast_crtc** %7, align 8
  %49 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.ast_crtc*, %struct.ast_crtc** %7, align 8
  %52 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %3
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 0, %57
  %59 = load %struct.ast_crtc*, %struct.ast_crtc** %7, align 8
  %60 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %56, %3
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 0, %67
  %69 = load %struct.ast_crtc*, %struct.ast_crtc** %7, align 8
  %70 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %66, %63
  %74 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  %75 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ast_set_index_reg(%struct.ast_private* %74, i32 %75, i32 194, i32 %76)
  %78 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  %79 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @ast_set_index_reg(%struct.ast_private* %78, i32 %79, i32 195, i32 %80)
  %82 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  %83 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 255
  %86 = call i32 @ast_set_index_reg(%struct.ast_private* %82, i32 %83, i32 196, i32 %85)
  %87 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  %88 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %89 = load i32, i32* %5, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 15
  %92 = call i32 @ast_set_index_reg(%struct.ast_private* %87, i32 %88, i32 197, i32 %91)
  %93 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  %94 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 255
  %97 = call i32 @ast_set_index_reg(%struct.ast_private* %93, i32 %94, i32 198, i32 %96)
  %98 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  %99 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %100 = load i32, i32* %6, align 4
  %101 = ashr i32 %100, 8
  %102 = and i32 %101, 7
  %103 = call i32 @ast_set_index_reg(%struct.ast_private* %98, i32 %99, i32 199, i32 %102)
  %104 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %105 = call i32 @ast_show_cursor(%struct.drm_crtc* %104)
  ret i32 0
}

declare dso_local %struct.ast_crtc* @to_ast_crtc(%struct.drm_crtc*) #1

declare dso_local i32* @drm_gem_vram_kmap(i32, i32, i32*) #1

declare dso_local i32 @drm_gem_vram_of_gem(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_show_cursor(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
