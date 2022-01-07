; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_get_vram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_get_vram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32 }

@AST_VIDMEM_DEFAULT_SIZE = common dso_local global i32 0, align 4
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST_VIDMEM_SIZE_8M = common dso_local global i32 0, align 4
@AST_VIDMEM_SIZE_16M = common dso_local global i32 0, align 4
@AST_VIDMEM_SIZE_32M = common dso_local global i32 0, align 4
@AST_VIDMEM_SIZE_64M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ast_get_vram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_get_vram_info(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  store %struct.ast_private* %8, %struct.ast_private** %3, align 8
  %9 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %10 = call i32 @ast_open_key(%struct.ast_private* %9)
  %11 = load i32, i32* @AST_VIDMEM_DEFAULT_SIZE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %13 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %14 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %12, i32 %13, i32 170, i32 255)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 3
  switch i32 %16, label %25 [
    i32 0, label %17
    i32 1, label %19
    i32 2, label %21
    i32 3, label %23
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @AST_VIDMEM_SIZE_8M, align 4
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @AST_VIDMEM_SIZE_16M, align 4
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @AST_VIDMEM_SIZE_32M, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @AST_VIDMEM_SIZE_64M, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %1, %23, %21, %19, %17
  %26 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %27 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %28 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %26, i32 %27, i32 153, i32 255)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 3
  switch i32 %30, label %40 [
    i32 1, label %31
    i32 2, label %34
    i32 3, label %37
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 1048576
  store i32 %33, i32* %5, align 4
  br label %40

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 2097152
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 4194304
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %25, %37, %34, %31
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @ast_open_key(%struct.ast_private*) #1

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
