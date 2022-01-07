; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_sync_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_sync_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.ast_vbios_mode_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AST_IO_MISC_PORT_READ = common dso_local global i32 0, align 4
@NVSync = common dso_local global i32 0, align 4
@NHSync = common dso_local global i32 0, align 4
@AST_IO_MISC_PORT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*)* @ast_set_sync_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_set_sync_reg(%struct.drm_device* %0, %struct.drm_display_mode* %1, %struct.ast_vbios_mode_info* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.ast_vbios_mode_info*, align 8
  %7 = alloca %struct.ast_private*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.ast_vbios_mode_info* %2, %struct.ast_vbios_mode_info** %6, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  store %struct.ast_private* %11, %struct.ast_private** %7, align 8
  %12 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %13 = load i32, i32* @AST_IO_MISC_PORT_READ, align 4
  %14 = call i32 @ast_io_read8(%struct.ast_private* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, -193
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %6, align 8
  %18 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NVSync, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, 128
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %6, align 8
  %30 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NHSync, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, 64
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %42 = load i32, i32* @AST_IO_MISC_PORT_WRITE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ast_io_write8(%struct.ast_private* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @ast_io_read8(%struct.ast_private*, i32) #1

declare dso_local i32 @ast_io_write8(%struct.ast_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
