; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_dclk_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_dclk_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vbios_dclk_info = type { i32, i32, i32 }
%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i64 }
%struct.drm_display_mode = type { i32 }
%struct.ast_vbios_mode_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AST2500 = common dso_local global i64 0, align 8
@dclk_table_ast2500 = common dso_local global %struct.ast_vbios_dclk_info* null, align 8
@dclk_table = common dso_local global %struct.ast_vbios_dclk_info* null, align 8
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*)* @ast_set_dclk_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_set_dclk_reg(%struct.drm_device* %0, %struct.drm_display_mode* %1, %struct.ast_vbios_mode_info* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.ast_vbios_mode_info*, align 8
  %7 = alloca %struct.ast_private*, align 8
  %8 = alloca %struct.ast_vbios_dclk_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.ast_vbios_mode_info* %2, %struct.ast_vbios_mode_info** %6, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  store %struct.ast_private* %11, %struct.ast_private** %7, align 8
  %12 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %13 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AST2500, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.ast_vbios_dclk_info*, %struct.ast_vbios_dclk_info** @dclk_table_ast2500, align 8
  %19 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %6, align 8
  %20 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ast_vbios_dclk_info, %struct.ast_vbios_dclk_info* %18, i64 %23
  store %struct.ast_vbios_dclk_info* %24, %struct.ast_vbios_dclk_info** %8, align 8
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.ast_vbios_dclk_info*, %struct.ast_vbios_dclk_info** @dclk_table, align 8
  %27 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %6, align 8
  %28 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ast_vbios_dclk_info, %struct.ast_vbios_dclk_info* %26, i64 %31
  store %struct.ast_vbios_dclk_info* %32, %struct.ast_vbios_dclk_info** %8, align 8
  br label %33

33:                                               ; preds = %25, %17
  %34 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %35 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %36 = load %struct.ast_vbios_dclk_info*, %struct.ast_vbios_dclk_info** %8, align 8
  %37 = getelementptr inbounds %struct.ast_vbios_dclk_info, %struct.ast_vbios_dclk_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %34, i32 %35, i32 192, i32 0, i32 %38)
  %40 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %41 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %42 = load %struct.ast_vbios_dclk_info*, %struct.ast_vbios_dclk_info** %8, align 8
  %43 = getelementptr inbounds %struct.ast_vbios_dclk_info, %struct.ast_vbios_dclk_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %40, i32 %41, i32 193, i32 0, i32 %44)
  %46 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %47 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %48 = load %struct.ast_vbios_dclk_info*, %struct.ast_vbios_dclk_info** %8, align 8
  %49 = getelementptr inbounds %struct.ast_vbios_dclk_info, %struct.ast_vbios_dclk_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 192
  %52 = load %struct.ast_vbios_dclk_info*, %struct.ast_vbios_dclk_info** %8, align 8
  %53 = getelementptr inbounds %struct.ast_vbios_dclk_info, %struct.ast_vbios_dclk_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 3
  %56 = shl i32 %55, 4
  %57 = or i32 %51, %56
  %58 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %46, i32 %47, i32 187, i32 15, i32 %57)
  ret void
}

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
