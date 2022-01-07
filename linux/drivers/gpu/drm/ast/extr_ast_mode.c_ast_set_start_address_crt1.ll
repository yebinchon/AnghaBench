; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_start_address_crt1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_start_address_crt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i32 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @ast_set_start_address_crt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_set_start_address_crt1(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_private*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  store %struct.ast_private* %11, %struct.ast_private** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = lshr i32 %12, 2
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %15 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 255
  %18 = call i32 @ast_set_index_reg(%struct.ast_private* %14, i32 %15, i32 13, i32 %17)
  %19 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %20 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = call i32 @ast_set_index_reg(%struct.ast_private* %19, i32 %20, i32 12, i32 %23)
  %25 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %26 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = call i32 @ast_set_index_reg(%struct.ast_private* %25, i32 %26, i32 175, i32 %29)
  ret void
}

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
